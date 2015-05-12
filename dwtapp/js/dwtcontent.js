var xmlhttp, DS="DisplayStage";

function loadContent(str)
{
 var partsOfStr = str.split(',');
 //alert ("Execute " + partsOfStr[1]);
 //DS="DisplayStage"
 DS="MyPage"
 var jsp2exec = partsOfStr[1];
 xmlhttp=GetXmlHttpObject();

  if (xmlhttp==null)
  {
   alert ("Your browser does not support Ajax HTTP");
   return;
  }

    var url=jsp2exec;
    url=url+"?q="+str;

    xmlhttp.onreadystatechange=getOutput;
    xmlhttp.open("GET",url,true);
    xmlhttp.send(null);
}
// login into database
function RegisterUser(str)
{

 var partsOfStr = str.split(',');
//alert ("Execute " + partsOfStr[1]);
 //DS="DisplayStage"
 DS="MyPage"
 var inputs = document.getElementById("frmRegId");
 var jsp2exec = partsOfStr[1];
 xmlhttp=GetXmlHttpObject();

  if (xmlhttp==null)
  {
   alert ("Your browser does not support Ajax HTTP");
   return;
  }

    var url=jsp2exec;
    url=url+"?name="+inputs.name.value+ "&pw=" + inputs.pw.value +"&cpw=" + inputs.cpw.value;
   //alert( "Here is URL: " + url);
    xmlhttp.onreadystatechange=getOutput;
    xmlhttp.open("GET",url,true);
    xmlhttp.send(null);
}

function DemoReg(str)
{

 var partsOfStr = str.split(',');
//alert ("Execute " + partsOfStr[1]);
 //DS="DisplayStage"
 DS="MyPage"
 var inputs = document.getElementById("frmDemo");
 var jsp2exec = partsOfStr[1];
 xmlhttp=GetXmlHttpObject();

  if (xmlhttp==null)
  {
   alert ("Your browser does not support Ajax HTTP");
   return;
  }

    var url=jsp2exec;
    url=url+"?name="+inputs.name.value+ "&mail=" + inputs.mail.value;
    alert( "Here is URL: " + url);
    xmlhttp.onreadystatechange=getOutput;
    xmlhttp.open("GET",url,true);
    xmlhttp.send(null);
}

function GetAddr(str)
{

 var partsOfStr = str.split(',');
//alert ("Execute " + partsOfStr[1]);
 //DS="DisplayStage"
 DS="MyPage"
 var inputs = document.getElementById("frmAddr");
 var jsp2exec = partsOfStr[1];
 xmlhttp=GetXmlHttpObject();

  if (xmlhttp==null)
  {
   alert ("Your browser does not support Ajax HTTP");
   return;
  }

    var url=jsp2exec;
    url=url+"?Address1="+inputs.Address1.value+ "&Address2=" + inputs.Address2.value+ "&city=" + inputs.city.value +
	"&state=" + inputs.state.value+ "&zipcode=" + inputs.zipcode.value;
    alert( "Here is URL: " + url);
    xmlhttp.onreadystatechange=getOutput;
    xmlhttp.open("GET",url,true);
    xmlhttp.send(null);
}
function GetResult(str)
{

 var partsOfStr = str.split(',');
//alert ("Execute " + partsOfStr[1]);
 //DS="DisplayStage"
 DS="MyPage"
 var inputs = document.getElementById("frmResult");
 var jsp2exec = partsOfStr[1];
 xmlhttp=GetXmlHttpObject();

  if (xmlhttp==null)
  {
   alert ("Your browser does not support Ajax HTTP");
   return;
  }

    var url=jsp2exec;
    url=url+"?description="+inputs.description.value;
   // alert( "Finally Here is URL: " + url);
    xmlhttp.onreadystatechange=getOutput;
    xmlhttp.open("GET",url,true);
    xmlhttp.send(null);
}

function SaveData(str)
{
 
 var partsOfStr = str.split(',');
 DS ="MyPage";
 //alert ("Execute " + partsOfStr[1]);
 var inputs = document.getElementById("frmLoginId");
 var jsp2exec = partsOfStr[1];
 xmlhttp=GetXmlHttpObject();

  if (xmlhttp==null)
  {
   alert ("Your browser does not support Ajax HTTP");
   return;
  }

    var url=jsp2exec;
    url=url+"?username="+inputs.username.value+ "&passwd=" + inputs.passwd.value +"&ssID=" +inputs.ssID.value;
   //alert( "Here is URL: " + url);
    xmlhttp.onreadystatechange=getOutput;
    xmlhttp.open("GET",url,true);
    xmlhttp.send(null);
	
	//loadContent('Servlet , dwtloader.jsp')
}


function getOutput()
{ var out = DS;
  if (xmlhttp.readyState==4)
  {
  document.getElementById(out).innerHTML=xmlhttp.responseText;
  }
}

function GetXmlHttpObject()
{
    if (window.XMLHttpRequest)
    {
       return new XMLHttpRequest();
    }
    if (window.ActiveXObject)
    {
      return new ActiveXObject("Microsoft.XMLHTTP");
    }
 return null;
}
