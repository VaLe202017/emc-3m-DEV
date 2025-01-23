using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;
using System.Windows.Threading;
using System.Xml;
using System.IO;

namespace sat
{

    public class YearProgram
    {
        public UInt16 id;
        public UInt16 zone;
        public UInt16 day;
        public UInt16 month;
        public UInt16 year;
        public UInt16 program;
    }
    public partial class MainPage : UserControl
    {
        //const string address = "//169.254.1.1";
        const string address = "";
        DispatcherTimer tmr;
        bool sendflag;
        private YearProgram curYearProgram;

        public MainPage()
        {
            InitializeComponent();
            
            curYearProgram = new YearProgram();
            curYearProgram.year = 1;
            curYearProgram.month = 1;
            curYearProgram.day = 1;

            ComboBox_Initialaize();

            tmr = new DispatcherTimer();
            tmr.Interval = new TimeSpan(0, 0, 0, 0, 500);
            tmr.Tick += tmr_Tick;
            tmr.Start();
            sendflag = true;
        }
        #region ComboBox - Date
        private void ComboBox_Initialaize()
        {
            ComboBox_UpdateList(Day, 31, 0, "");
            ComboBox_UpdateList(Month, 12, 0, "");
            ComboBox_UpdateList(Year, 99, 0, "20");
            Day.SelectionChanged += Day_SelectionChanged;
            Month.SelectionChanged += Month_SelectionChanged;
            Year.SelectionChanged += Year_SelectionChanged;
        }
        private void ComboBox_UpdateList(ComboBox c, int count, int indx, string add)
        {
            ComboBoxItem cb;
            for (int i = 1; i <= count; i++)
            {
                cb = new ComboBoxItem();
                cb.Content = add + i.ToString("00");
                c.Items.Add(cb);
            }
            c.SelectedIndex = indx;
        }
        private void Year_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            ComboBox cb = (ComboBox)sender;
            int indx = cb.SelectedIndex;
            if (indx == 0)
            {
                curYearProgram.year = 0;
                YearProgram_date(curYearProgram);
            }
            else if (indx > 0)
            {
                ComboBoxItem cb1 = (ComboBoxItem)cb.Items[indx];
                curYearProgram.year = Convert.ToUInt16(cb1.Content.ToString());
                curYearProgram.year -= 2000;
                YearProgram_date(curYearProgram);
            }
        }
        private void Month_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            ComboBox cb = (ComboBox)sender;
            int indx = cb.SelectedIndex;
            if (indx == 0)
            {
                curYearProgram.month = 1;
                YearProgram_date(curYearProgram);
            }
            else if (indx > 0)
            {
                ComboBoxItem cb1 = (ComboBoxItem)cb.Items[indx];
                curYearProgram.month = Convert.ToUInt16(cb1.Content.ToString());
                YearProgram_date(curYearProgram);
            }
        }
        private void Day_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            ComboBox cb = (ComboBox)sender;
            int indx = cb.SelectedIndex;
            if (indx == 0)
            {
                curYearProgram.day = 1;
                YearProgram_date(curYearProgram);
            }
            else if (indx > 0)
            {
                ComboBoxItem cb1 = (ComboBoxItem)cb.Items[indx];
                curYearProgram.day = Convert.ToUInt16(cb1.Content.ToString());
                YearProgram_date(curYearProgram);
            }
        }
        private void YearProgram_date(YearProgram yp)
        {
            if (yp.day != 0)
            {
                UInt16 max = YearProgram_maxbrojdan(yp);
                if (yp.day > max)
                {
                    yp.day = max;
                    Day.SelectedIndex = max;
                }
            }
        }
        private UInt16 YearProgram_maxbrojdan(YearProgram yp)
        {
            UInt16 max_broj_dana = 31;
            switch (yp.month)
            {
                case 0: max_broj_dana = 31;
                    break;
                case 1: max_broj_dana = 31;
                    break;
                case 2:
                    {
                        if (yp.year == 0)
                        {
                            max_broj_dana = 29;
                        }
                        else
                        {
                            if ((yp.year % 4) == 0)
                            {
                                max_broj_dana = 29;
                            }
                            else
                            {
                                max_broj_dana = 28;
                            }
                        }
                        break;
                    }
                case 3: max_broj_dana = 31;
                    break;
                case 4: max_broj_dana = 30;
                    break;
                case 5: max_broj_dana = 31;
                    break;
                case 6: max_broj_dana = 30;
                    break;
                case 7: max_broj_dana = 31;
                    break;
                case 8: max_broj_dana = 31;
                    break;
                case 9: max_broj_dana = 30;
                    break;
                case 10: max_broj_dana = 31;
                    break;
                case 11: max_broj_dana = 30;
                    break;
                case 12: max_broj_dana = 31;
                    break;
                default: break;
            }
            return max_broj_dana;
        }
        #endregion

        #region TimePiker tjedni program
        private const int _leftPart = 2;
        private Key _lastKey;
        public UInt16 SilderMin= 0;
        public UInt16 SilderHours= 0;
        private void time_TextChanged(object sender, TextChangedEventArgs e)
        {
            TextBox txb = (TextBox)sender;
            var leftPartPlusDash = (_leftPart + 1);
            var cursorPosition = txb.SelectionStart;

            var strippedText = txb.Text.Replace(":", "");
            if (strippedText.Length > _leftPart)
            {
                //move the cursor after the dash
                if ((strippedText.Length == leftPartPlusDash) && (cursorPosition == leftPartPlusDash) && (_lastKey != Key.Delete))
                {
                    cursorPosition = (_leftPart + 2);
                }
                strippedText = ParseMinutes(strippedText);
                //put a dash in the right place
                txb.Text = string.Format("{0}:{1}", strippedText.Substring(0, _leftPart), strippedText.Substring(_leftPart, Math.Min(2, strippedText.Length - _leftPart)));
            }
            else
            {
                txb.Text = ParseHour(txb.Text);
            }
            //move cursor to the wanted position
            txb.SelectionStart = cursorPosition;
            Parsetime(time.Text);

        }
        private void time_KeyDown(object sender, KeyEventArgs e)
        {
            _lastKey = e.Key;   //used in OnTextChanged to handle Del key

            base.OnKeyDown(e);

            if (((e.Key >= Key.NumPad0 && e.Key <= Key.NumPad9) ||
                (e.Key >= Key.D0 && e.Key <= Key.D9) ||
                e.Key == Key.Tab) &&    //so that we can TAB out from the control ;)
                (Keyboard.Modifiers & ModifierKeys.Shift) == 0 &&
                (Keyboard.Modifiers & ModifierKeys.Control) == 0)
            {
                e.Handled = false;
                return;
            }

            e.Handled = true;
        }
        private void time_LostFocus(object sender, RoutedEventArgs e)
        {
            slider1hour.Value = SilderHours;
            slider2min.Value = SilderMin;
        }
        private string ParseMinutes(string str)
        {
            string result;
            result = str;
            switch (str.Length)
            {
                case 3:
                    if (str[2] > '5')
                    {
                        result = str[0].ToString() + str[1].ToString() + "";
                    }
                    break;
                default:
                    break;
            }
            return result;
        }
        private string ParseHour(string str)
        {
            string result;
            result = str;
            switch (str.Length)
            {
                case 2:
                    if ((str[1] > '3') && (str[0] == '2'))
                    {
                        result = str[0].ToString() + "";
                    }
                    break;
                case 1:
                    if (str[0] > '2')
                    {
                        result = "";
                    }
                    break;
                default:
                    break;
            }
            return result;
        }
        private void Parsetime(string str)
        {
            int min;
            int hours;
            min = 0;
            hours = 0;
            switch (str.Length)
            {
                case 1:
                    min = 0;
                    hours = (str[0] - '0') * 10;
                    break;
                case 2:
                    min = 0;
                    hours = (str[0] - '0') * 10 + (str[1] - '0');
                    break;
                case 3:
                    break;
                case 4:
                    min = (str[3] - '0') * 10;
                    hours = (str[0] - '0') * 10 + (str[1] - '0');
                    break;
                case 5:
                    min = (str[3] - '0') * 10 + (str[4] - '0');
                    hours = (str[0] - '0') * 10 + (str[1] - '0');
                    break;
                default:
                    break;
            }
            SilderMin = Convert.ToUInt16(min);
            SilderHours = Convert.ToUInt16(hours);
        }
        private void slider1_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            Slider sd = (Slider)sender;
            time.Text = sd.Value.ToString("00") + ":" + slider2min.Value.ToString("00");
        }
        private void slider2min_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            Slider sd = (Slider)sender;
            time.Text = slider1hour.Value.ToString("00") + ":" + sd.Value.ToString("00");
        }

        #endregion


        void tmr_Tick(object sender, EventArgs e)
        {
            if (sendflag == true)
            {
                sendflag = false;
                WebClient xmlClient = new WebClient();
                xmlClient.DownloadStringAsync(new Uri(address + "/date.xml", UriKind.RelativeOrAbsolute));
                xmlClient.DownloadStringCompleted += xmlClient_DownloadStringCompleted;
            }
        }

        void xmlClient_DownloadStringCompleted(object sender, DownloadStringCompletedEventArgs e)
        {
            string time;


            sendflag = true;

            string XmlString = e.Result; // Got all your XML data in to a string 
            using (XmlReader reader = XmlReader.Create(new StringReader(XmlString)))
            {
                reader.ReadToFollowing("time");
                time = reader.ReadElementContentAsString();                
            }
            datum.Text = time;
        }

 
        private void send_Click(object sender, RoutedEventArgs e)
        {
            string year;
            string month;
            string day;

            year = curYearProgram.year.ToString("00");
            month = curYearProgram.month.ToString("00");
            day = curYearProgram.day.ToString("00");

            string hour;
            string min;
            min = SilderMin.ToString("00");
            hour = SilderHours.ToString("00");

            WebClient Cl = new WebClient();
            string uri = address + "/admin/dat.cgi?dat=" + year + "," + month + "," + day + "," + hour + "," + min;
            Cl.DownloadStringAsync(new Uri(uri, UriKind.RelativeOrAbsolute));
            Day.Focus();
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }
}
