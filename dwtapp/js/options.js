var xmlHttp

function showCustomer(str)
{ 

var aPos = str.indexOf(",");
var mySplitRst; 
ajxpath="txtHint";
strcmd = str;
//alert('Sending = '+strcmd + ' Position = '+ aPos);
if(aPos>=1){
	mySplitRst = str.split(",");
	ajxpath= mySplitRst[0];
	strcmd = mySplitRst[1];
	//alert('ajxpath = ' + ajxpath + ' strcmd = '+ strcmd);
}
 


xmlHttp=GetXmlHttpObject();
if (xmlHttp==null)
  {
  alert ("Your browser does not support AJAX!");
  return;
  } 
var url="client.php";
url=url+"?id="+strcmd;
url=url+"&sid="+Math.random();
xmlHttp.onreadystatechange=stateChanged;
xmlHttp.open("GET",url,true);
xmlHttp.send(null);
}

function stateChanged() 
{ 
if (xmlHttp.readyState==4)
{ 
document.getElementById(ajxpath).innerHTML=xmlHttp.responseText;
}
}

function GetXmlHttpObject()
{
var xmlHttp=null;
try
  {
  // Firefox, Opera 8.0+, Safari
  xmlHttp=new XMLHttpRequest();
  }
catch (e)
  {
  // Internet Explorer
  try
    {
    xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
    }
  catch (e)
    {
    xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
  }
return xmlHttp;
}
function validate(){
	var msg='User email address has not been verified. '+
		    '\nAn email has been sent to your email address.'+ 
		  	'\n\nPlease go to your email box, click on the new email and '+ 
		  	'\nclick on the link  VALIDATE NOW  to get your account active.'+
		  	'\n\nThank you for your support.';
		alert(msg);
     //window.location = "validate.php?id="+id+"&email=".em; */
  
}
