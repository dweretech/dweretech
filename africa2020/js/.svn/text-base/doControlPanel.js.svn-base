// JavaScript Document
var xmlHttp

function doControlPanel(sName,sOption)
{
//alert('getState is Performing calls now with name '+sName+' option is '+wOption); 
var vStatus = sName;
var wOption = sOption; //document.formSearch.union.value
if(vStatus=='--- Click Map below ---'){
   alert(vStatus);
return 
}
else {	
  	//alert('Performing calls now with name '+vStatus+' option is '+wOption);  
   
	xmlHttp=GetXmlHttpObject()
	if (xmlHttp==null)
	 {
	 alert ("Browser does not support HTTP Request")
	 return
	 } 
	var url="doControlPanel.php"
	url=url+"?name="+vStatus+"\&option="+wOption
	url=url+"&sid="+Math.random()
		//alert('The URL call is '+url);  
	xmlHttp.onreadystatechange=getStateStatus 
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)
		//alert('Done call');
 } // else

} 

function getStateStatus() 
{ 
 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 { 
 document.getElementById("AVAdvertiseBoard").innerHTML=xmlHttp.responseText;
 
// document.getElementById("vCountry").innerHTML=xmlHttp.responseText;
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

function goBuy(){
	
	win2 = window.open("newuser.php", "Window2", "width=310,height=600,scrollbars=yes");
	win3.document.writeln("<h2>You are about to buy iCard to call  </h2>");
	win3.document.writeln("<a href=\"javascript:self.close()\">close window</a>");

}