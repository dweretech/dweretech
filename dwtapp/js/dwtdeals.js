 
// JavaScript Document
 
// Scrollers width here (in pixels)
var scrollerwidth="300px"
// Scrollers height here
var scrollerheight="10px"
// Scrollers speed here (larger is faster 1-10)
var scrollerspeed=5

// Scrollers content goes here! Keep all of the message on the same line!
//"images/p4s/DSC00057.JPG"
var scrollercontent='<h3><u>How to Advertise with us</u></h1>'+
 '<div id="userbody" class="header">'+
' <table border="1" style="background-color :#00ff00;" align="center">'+
'<tr><td style="background-color : #ffcc66;">'+
'<h3 align="center">Affordable web site<br>24 hour turn around time</h3>'+
'</td></tr>'+
'<tr><td>'+
'<ul>'+
'<li>Select for you a domain or use one that exist'+
'<li>Work with some of the best hosting services such as Godaddy.com '+
'<li>Get you site up and running within hours'+
'<li>Work with you to upload and update the site content'+
'<li>Get your site exposed to Google adwords immediately'+
'</ul>'+
'</td></tr>'+
'<tr><td align="center">'+
'<h2>Affordable cost of $125 a year</h2>'+
'  <ul>'+
' <li>One year of domain name registration and Hosting'+
'<li>Get up to 6 pages up'+
'<li>Upload all the images you want'+
'<li>Design the look and feel of your<br> choice or use one of our templates'+
'</ul>'+
'</td></tr>'+
'<tr><td style="background-color : #ffcc66;">'+
'<ul>'+
' <li>For details  contact us at 619-379-9759.'+
'</td></tr>'+
'</table> </div>';

 
var pauseit=1;
var newImg='';

// Change nothing below!

scrollerspeed=(document.all)? scrollerspeed : Math.max(1, scrollerspeed-1) //slow speed down by 1 for NS
var copyspeed=scrollerspeed
var iedom=document.all||document.getElementById
var actualheight=''
var cross_scroller, ns_scroller
var pausespeed=(pauseit==0)? copyspeed: 0

function populate(){
if (iedom){
cross_scroller=document.getElementById? document.getElementById("iescroller") : document.all.iescroller
cross_scroller.style.top=parseInt(scrollerheight)+8+"px"
cross_scroller.innerHTML=scrollercontent
actualheight=cross_scroller.offsetHeight
}
else if (document.layers){
ns_scroller=document.ns_scroller.document.ns_scroller2
ns_scroller.top=parseInt(scrollerheight)+8
ns_scroller.document.write(scrollercontent)
ns_scroller.document.close()
actualheight=ns_scroller.document.height
}
lefttime=setInterval("scrollscroller()",40)
}
window.onload=populate

function scrollscroller(){

if (iedom){
if (parseInt(cross_scroller.style.top)>(actualheight*(-1)+8))
	cross_scroller.style.top=parseInt(cross_scroller.style.top)-copyspeed+"px"
else
cross_scroller.style.top=parseInt(scrollerheight)+8+"px"
}
else if (document.layers){
if (ns_scroller.top>(actualheight*(-1)+8))
ns_scroller.top-=copyspeed
else
ns_scroller.top=parseInt(scrollerheight)+8
}
}

if (iedom||document.layers){
with (document){
if (iedom){
write('<div style="position:relative;width:'+scrollerwidth+';height:'+scrollerheight+';overflow:hidden" onMouseover="copyspeed=pausespeed" onMouseout="copyspeed=scrollerspeed" onClick="">')
write('<div id="iescroller" style="position:absolute;left:0px;top:0px;width:100%;">')
write('</div></div>')
}
else if (document.layers){
write('<ilayer width='+scrollerwidth+' height='+scrollerheight+' name="ns_scroller">')
write('<layer name="ns_scroller2" width='+scrollerwidth+' height='+scrollerheight+' left=0 top=0 onMouseover="copyspeed=pausespeed" onMouseout="copyspeed=scrollerspeed"></layer>')
write('</ilayer>')
}
}
}
