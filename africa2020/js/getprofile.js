// JavaScript Document
var xmlHttp

function getProfileText(rStr)
{
xmlHttp=GetXmlHttpObject()
//document.formjoinAVNet.name.value = document.formSearch.txtSearch.value
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 } 
var url="getprofile.php"
url=url+"?userinfo="+rStr
url=url+"&sid="+Math.random()
xmlHttp.onreadystatechange=ContentStateChanged 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
} 

function ContentStateChanged() 
{ 
 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 { 
 document.getElementById("AVbodyV").innerHTML=xmlHttp.responseText;
 //document.getElementById("mycommunity").innerHTML=xmlHttp.responseText;
 } 
} 

function GetXmlHttpObject()
{ 
var objXMLHttp=null
if (window.XMLHttpRequest)
 {
 objXMLHttp=new XMLHttpRequest()
 }
else if (window.ActiveXObject)
 {
 objXMLHttp=new ActiveXObject("Microsoft.XMLHTTP")
 }
return objXMLHttp
}