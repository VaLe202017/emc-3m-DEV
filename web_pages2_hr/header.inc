<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ERM2024</title>
<link href="/elak.css" rel="stylesheet" type="text/css" />
<script src="/elak.js" type="text/javascript"></script>
<link rel="icon" type="image/png" href="/favicon.png">
</head>
<body>
<div id="shadow-one">
<div id="shadow-two">
<div id="shadow-three">
<div id="shadow-four">
<div id="page">

<div style="padding:0 0 5px 5px"><img max width="221px" height=auto src="/elak.png" alt="www.elak.hr" /></div>

<div id="title">
	<div class="right">ERM2024</div>
	<span id="hello">&nbsp;</span>
</div>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Top Navigation Menu -->
<div class="topnav">
  <a href="/index.htm" class="active">Home</a>
  <div id="myLinks">
    <a href="/admin/prgm.htm">Relay schedule</a>
    <a href="/admin/sat.htm">Date and Time</a>
    <a href="/admin/config.htm">Network</a>
    <a href="/admin/ntp.htm">NTP</a>
    <a href="/admin/upr.htm">Options</a>
  </div>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>




<script language="javascript">
	var navItems = document.querySelectorAll('.topnav div myLinks');
  	navItems.forEach(function(item) {
    	item.addEventListener('click', function() {
      		navItems.forEach(function(item) {
        	item.classList.remove('active');
      	});
        this.classList.add('active');
		sessionStorage.setItem('activeTab', this.textContent);
    	});
	});
	function myFunction() {
  var x = document.getElementById("myLinks");
  if (x.style.display === "block") {
    x.style.display = "none";
  } else {
    x.style.display = "block";
  }
}
</script>