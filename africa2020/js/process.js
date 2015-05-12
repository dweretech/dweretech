// JavaScript Document


var xmlHttp;
var AVMyPage;
var StateNews;

function MM_showHideLayers() { //v9.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) 
  with (document) if (getElementById && ((obj=getElementById(args[i]))!=null)) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}
//=========================================
// Retrieve Site text associated with the 
// Keyword from Internet or Databases
//=========================================
function getText(rLoc,rStr)
{
	

var cState ;
	cState = rStr;
	if(cState.length == 0) 
		cState ='Africa';
		//alert("Count is "+ cState);
	if(cState.indexOf(" ")!=-1){ // check if it has blanks in it.
	   cState =  cState.replace(/ /gi,"_");
	   
	}
xmlHttp=GetXmlHttpObject()
//document.formjoinAVNet.name.value = document.formSearch.txtSearch.value
//alert(cState);
//document.formjoinAVNet.country.value=document.formSearch.txtSearch.value
AVMyPage = rLoc;
StateNews =  cState;
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 } 
var url="process.php"
url=url+"?UserInfo="+cState
url=url+"&sid="+Math.random()
//alert('The URL call is '+url); 
xmlHttp.onreadystatechange=ContentStateChanged 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)

} 



function getProfileText(rStr)
{
xmlHttp=GetXmlHttpObject()
AVMyPage = 'AVbodyV';
//alert(rStr);
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

function GetPhotoAlum(rLoc)
{
 AVMyPage = rLoc;
   //alert('Processing photo')
	xmlHttp=GetXmlHttpObject()
	if (xmlHttp==null)
	 {
	 alert ("Browser does not support HTTP Request")
	 return
	 } 
	var url="doAlbum.php";
	var vTitle = document.formAlbum.title.value;
	var vphoto = document.formAlbum.photo.value;
	var vpass = document.formAlbum.password.value;
	url=url+"?title="+vTitle+"\&photo="+vphoto+"\&password="+vpass; 
	url=url+"&sid="+Math.random()
	document.formAlbum.submit();
	 //alert('The URL call is '+url);  
	xmlHttp.onreadystatechange=ContentStateChanged
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)
	//alert('Done call');
 

} 
function DoNotes(rLoc)
{
 var dList;
 
 dList = rLoc.split(';');
 AVMyPage = dList[0];

  //alert('Processing Notes: LOC '+ AVMyPage + '  Todo '+ dList[1])
	xmlHttp=GetXmlHttpObject()
	if (xmlHttp==null)
	 {
	 alert ("Browser does not support HTTP Request")
	 return
	 } 
	var url="doNotes.php";
	var vsubject = document.formNotes.subject.value;
	var vnotes = document.formNotes.txtnotes.value;
	var vuser = document.formNotes.username.value;
	url=url+"?subject="+vsubject+"\&txtnotes="+vnotes+"\&username="+vuser+"\&todo="+dList[1]; 
	url=url+"&sid="+Math.random()
	//document.formNotes.submit();
	//alert('The URL call is '+url);  
	xmlHttp.onreadystatechange=ContentStateChanged
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)
	//alert('Done call');
 

} 


function ContentStateChanged() 
{ 
 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 { 
 //alert('Done with '+AVMyPage);
 document.getElementById(AVMyPage).innerHTML=xmlHttp.responseText;
// document.getElementById("AVNotes").innerHTML=xmlHttp.responseText;
 //document.getElementById("mycommunity").innerHTML=xmlHttp.responseText;
 getCountryText('WhatIsNew',StateNews);
 } 
} 

function getCountryText(crLoc,crStr)
{
xmlHttp=GetXmlHttpObject()
 
AVMyPage = crLoc;
//alert(rStr);

//if(rStr=='avnetwork'){   rStr='avnetwork';} else rStr='product';
//if(rStr=='product') { rStr='product';}
//if(rStr=='WhatIsNew') { rStr=rStr.toLowerCase();}

//document.formjoinAVNet.name.value = document.formSearch.txtSearch.value
if (xmlHttp==null)
 {
     alert ("Browser does not support HTTP Request")
 return
 } 
var url="whatisnew.php"
url=url+"?file="+crStr
url=url+"&sid="+Math.random()
xmlHttp.onreadystatechange=CountryStateChanged
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
} 

function CountryStateChanged() 
{ 
 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 { 
 // document.getElementById("AVMap").visibility='hide';
  //MM_showHideLayers('AVMap','','hide');
  document.getElementById(AVMyPage ).innerHTML=xmlHttp.responseText;
  //document.getElementById("mycommunity").style.border="1px solid #A5ACB2";
  //document.formjoinAVNet.country.value = document.formSearch.txtSearch.value
 //document.getElementById("mycommunity").innerHTML=xmlHttp.responseText;
 } 
} 

function getMainContentStatus(rLoc,rStr)
{
// alert(' Loc '+rLoc+'File is '+rStr);
 AVMyPage = rLoc;
xmlHttp=GetXmlHttpObject()

if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 } 
var url="rhtcont.php"
url=url+"?file="+rStr
url=url+"&sid="+Math.random()
xmlHttp.onreadystatechange=ContentTextChanged 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
} 

function DoAdmin(rLoc,rStr)
{
 // alert(' Loc '+rLoc+'File is '+rStr);
 AVMyPage = rLoc;
xmlHttp=GetXmlHttpObject()

if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 } 
var url="dwtweblizer.php"
url=url+"?cmd="+rStr
url=url+"&sid="+Math.random()
xmlHttp.onreadystatechange=ContentTextChanged
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
} 

// Write to widow

function writeConsole() {
	 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 { 
	// document.getElementById( AVMyPage).innerHTML=xmlHttp.responseText;
	 //document.getElementById("mycommunity").innerHTML=xmlHttp.responseText;
 
	 top.consoleRef= window.open("", "Window3", "width=320,height=210,scrollbars=yes"); 
	 top.consoleRef.document.writeln(
	  '<html><head><title>Console</title></head>'
	   +'<body bgcolor=white onLoad="self.focus()">'
	   +xmlHttp.responseText
	   +'</body></html>'
	 )
	 top.consoleRef.document.close()
 }
}

function ContentTextChanged() 
{ 
//
 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 { 
 document.getElementById( AVMyPage).innerHTML=xmlHttp.responseText;
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


//==========================================
// Perform User Authentication
//==========================================
function userAuth(rLoc,rStrU,rStrP)
{
// alert(' Loc '+rLoc+'File is '+rStr);
 AVMyPage = rLoc;
xmlHttp=GetXmlHttpObject()

if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 } 
var url="webauth.php"
url=url+"?uname="+rStrU +"&pname="+rStrP;
 
//alert('The URL call is '+url); 
xmlHttp.onreadystatechange=UserAuthState


xmlHttp.open("GET",url,true)
xmlHttp.send(null)

} 

function UserAuthState() 
{ 
//P. Okot;Tanzania;pakitara@gmail.com;pakitara;da14cca95fede304e67cb4eca1e8940e;1/298/221
 var dList, rVar,myname,cntry,email,uname,uVsa;
 

 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 { 
 
 
 rVar =xmlHttp.responseText;
  dList = rVar.split(';');
 myname = dList[0]; 
 cntry = dList[1];
 email = dList[2]; 
 uname = dList[3]; 
 uVsa = dList[5]; 
//alert( cntry);
document.formSearch.txtSearch.value=cntry;
//document.formSearch.txtSearch.focus();

//MM_showHideLayers('AVSrch','','show');
//document.formSearch.txtSearch.refresh();
//getText('AVbodyV',document.formSearch.txtSearch.value);
 document.getElementById( AVMyPage).innerHTML=''; //AvLogOut
 document.getElementById('AvLogOut').innerHTML='<a href=\'#\' onClick=\'MM_callJS("Africa")\'>My Community</a> | ' +
 '<a href=\'#\' onClick=\'MM_callJS("Africa")\'>Trading: $1</a> |' + 
 '<a href=\'#\' onClick=\'LogOffUser("myProfile",document.formSearch.userinfo.value)\'>Log Out</a>';
 document.getElementById("myProfile").innerHTML= 'You are: '+ myname; //xmlHttp.responseText;
 getCountryText('WhatIsNew',uVsa);
 document.formSearch.userinfo.value=rVar;
 document.getElementById('MyToDo').style.visibility='visible';
 MM_callJS(cntry);
 } 
 	
}
function LogOffUser(rLoc,rStrU)
{
var URL;
var i ;
var QryStrValue;
// alert(' Loc '+rLoc+' File is '+rStrU);
 AVMyPage = rLoc;
xmlHttp=GetXmlHttpObject()

if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 } 
var url="logout.php"
url=url+"?UserInfo="+rStrU;
 
//alert('The URL call is '+url); 
xmlHttp.onreadystatechange=ContentTextChanged;


xmlHttp.open("GET",url,true)
xmlHttp.send(null)

}

function checkform ()
{
 var loginfrm = document.formUserAuth;
  //alert('Hello '+loginfrm.uname.value);
 
  if (loginfrm.uname.value == "")  {
    alert( "Please enter user name." );
    loginfrm.uname.focus();
    return false ;
  }
  if (loginfrm.pname.value == "")  {
    alert( "Please enter password." );
    loginfrm.pname.focus();
    return false ;
  }
 // alert(loginfrm.uname.value + ' ' + loginfrm.pname.value);
  
   userAuth('AVLoginV',loginfrm.uname.value,loginfrm.pname.value);
  //document.formUserAuth.submit()
  // ** END **
  return true ;
}

function clearForm(oForm) {
   
  var elements = oForm.elements;
   
  oForm.reset();

  for(i=0; i<elements.length; i++) {
     
  field_type = elements[i].type.toLowerCase();
 
  switch(field_type) {
 
    case "text":
    case "password":
    case "textarea":
          case "hidden":  
     
      elements[i].value = "";
      break;
       
    case "radio":
    case "checkbox":
        if (elements[i].checked) {
          elements[i].checked = false;
      }
      break;

    case "select-one":
    case "select-multi":
                elements[i].selectedIndex = -1;
      break;

    default:
      break;
  }
    }
}

function CheckAFVNetForm(oForm) {
   
  var elements = oForm.elements;
   
 // oForm.reset();

  for(i=0; i<elements.length; i++) {
     
  field_type = elements[i].type.toLowerCase();
 
  switch(field_type) {
 
    case "text":
    case "password":
      
      if(elements[i].value == ""){
	    alert('Check form field value below ' +elements[i].name)
		elements[i].focus();
		 return
		  break; 
		}
       default:
      break;
  }
}
oForm.submit();
}