var xmlHttp;
var stage;
var UserProf='UserInfo';

var startSeconds = 10;
var milisec = 0;
var seconds=startSeconds;
var countdownrunning = false
var idle = false;
document.counter.timer.value=startSeconds;
 
xmlHttp=new XMLHttpRequest();

 
function getConnected(sLoc,fn){
xmlHttp= GetXmlHttpObject()

if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 } 
 stage=sLoc


var url="process.php"
url=url+"?fn="+fn
url=url+"&sid="+Math.random()
//alert('Hello there! ' + url)
 
xmlHttp.onreadystatechange=stateChanged 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)	
}

function resetUser(sLoc,em){
xmlHttp= GetXmlHttpObject()

if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 } 
 stage=sLoc


var url="resetuser.php"
url=url+"?em="+fn
url=url+"&sid="+Math.random()
alert('Hello there! ' + url)
 
xmlHttp.onreadystatechange=stateChanged 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)	
}

function loadXMLDoc(url)
{
// branch for native XMLHttpxmlHttpuest object
 
		xmlHttp=GetXmlHttpObject()
		if (xmlHttp==null)
		 {
		 alert ("Browser does not support HTTP Request")
		 return
		 } 
		 //alert("Here is URL "+url)
		xmlHttp.onreadystatechange = stateChanged;
		xmlHttp.open("GET", url, true);
		xmlHttp.send(null);
 
}

function SaveUser(sLoc,fn){
	
	var url = fn;
		//xmlHttp=GetXmlHttpObject()
		if (xmlHttp==null)
		 {
		 alert ("Browser does not support HTTP Request")
		 return
		 } 
        stage = sLoc;
        url = fn;
		 //alert("Here is URL "+url)
		
		xmlHttp.onreadystatechange = DoneSaveChanged;
		xmlHttp.open("GET", url, true);
		xmlHttp.send(null);
 
}

function GetXmlHttpObject()
{ 
var objXMLHttp=null
if (window.XMLHttpxmlHttpuest)
 {
 objXMLHttp=new XMLHttpxmlHttpuest()
 }
else if (window.ActiveXObject)
 {
 objXMLHttp=new ActiveXObject("Microsoft.XMLHTTP")
 }
return objXMLHttp
}

function DoneSaveChanged() 
{ 
 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 { 
//alert(xmlHttp.responseText);
 document.getElementById('LoginNow').innerHTML=xmlHttp.responseText;
 document.getElementById('saved').style.visibility = 'visible';
 document.getElementById('ckbox').checked=false; 
 document.frmEdit.role.disabled=true; 

 } 
} 

function stateChanged() 
{ 
 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 { 
 //alert(xmlHttp.responseText);
 document.getElementById(stage).innerHTML=xmlHttp.responseText;
 } 
} 

function getMyProfile(sLoc,em,pass){
	//get user profile.
 //document.getElementById('MyLogin').style.visibility='hidden';
	 
xmlHttp=GetXmlHttpObject()
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 } 
 stage=sLoc;
var url="userauth.php"
url=url+"?em="+em
url=url+"&pass="+pass
url=url+"&sid="+Math.random()
//alert("URL "+url);

xmlHttp.onreadystatechange=stateChanged 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
}
 
function DoAdmin(sLoc,fn){
	xmlHttp=GetXmlHttpObject()
	if (xmlHttp==null)
	 {
	 alert ("Browser does not support HTTP Request")
	 return
	 } 
	 stage=sLoc
	
	
	var url=fn
	 //alert('Hello there! ' + url)
	//url=url+"&sid="+Math.random()
	
	 
	xmlHttp.onreadystatechange=stateChanged 
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)	
	 
}
 
function CompleteSign(em,crse,cst)
{
xmlHttp=GetXmlHttpObject()
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 } 
 stage="completed"
var url="connected.php"
url=url+"?em="+em
url=url+"&myresource="+crse
url=url+"&cost="+cst
url=url+"&sid="+Math.random()
document.getElementById('success').innerHTML ='<img  src="images/hrglass.gif"   ></a> <br>';
xmlHttp.onreadystatechange=DoneChanged 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
} 

function DoneChanged() 
{ 

 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 { 
 //alert(xmlHttp.responseText);
 hidediv();
 document.getElementById('completed').innerHTML=xmlHttp.responseText;
 } 
} 
function setCRMFxmlHttpuest()
{  //alert('Hello 2' );
    with (document.forms[0]) {
          cert_xmlHttpuest.value = crmfObject.xmlHttpuest;
		   
          submit();
    }
}
function echeck(str) {

		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    alert("Invalid E-mail ID")
		    return false
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    alert("Invalid E-mail ID")
		    return false
		 }
		
		 if (str.indexOf(" ")!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

 		 return true					
}

function checkName()
{
    var em = document.getElementById('email').value;
	  
	if (document.getElementById('fullname').value  ==''){
         alert("Invalid username " );
    	//passtxt.focus();
		return
	}if (em  ==''){
         alert("Invalid  email " );
    	//passtxt.focus();  
		
		return
	}
	else
	 if (!echeck(em)){
		 document.getElementById('email').focus;
	 } 
	if (document.getElementById('passcode').value ==''){
         alert("Invalid password" );
    	//passtxt.focus();
		return
	}if (document.getElementById('zipcode').value ==''){
         alert("Invalid zipcode" );
    	//passtxt.focus();
		return
	}if (document.getElementById('role').value ==''){
	 	alert("Invalid role" );
	//passtxt.focus();
		return
	}else {
	// alert("There is no problem. Ready to save... " +document.getElementById('fullname').value);
	   // saveProfile()
        saveProfile();
	}
// Input mode
 

function clearform(){
	 document.getElementById('fullname').value='';
	 document.getElementById('email').value='';
	 document.getElementById('passcode').value='';
	 document.getElementById('zipcode').value='';
	 document.getElementById('role').value='';
}
function saveProfile(){
	var fn = document.getElementById('fullname').value;
	var em = document.getElementById('email').value;
	var pw = document.getElementById('passcode').value;
	var zp = document.getElementById('zipcode').value;
	var rle = document.getElementById('role').value;
	 url = 'save.php?fn=' + fn + '&em=' + em +'&pw=' + pw +'&zp=' +zp +'&rle=' +rle;
	 //alert(url);
   SaveUser(UserProf,url);

}
 
}
/******************************************
Process Course registration
*******************************************/
function DoFrm(){
//alert('Hello '+ ' '+document.ReqForm.uname.value )
document.myform.em.value = document.ReqForm.uname.value;
var total="",courses="",cost=0,count=0,em="",costv='';
	 for(var i=0; i < document.myform.myresource.length; i++){
		if(document.myform.myresource.options[i].selected) {
			total +=document.myform.myresource.options[i].value + "  "+ document.myform.cost.value+ "\n"
			costv +=document.myform.cost.value+';';
			courses +=document.myform.myresource.options[i].value+'('+document.myform.cost.value+')'+';'
			count++;
		}
	 }
	if(total=="") 
	{ alert("select scripts")
	}
	else {
		em = document.myform.em.value+':'+ document.ReqForm.pass.value;
		cost = eval(count*document.myform.cost.value)+".00" 
		alert (total +"\n==============================\n"+
			            "Total                                    "+ cost);
		 
		CompleteSign(em,courses,costv);
	}
}

function hidediv() {
if (document.getElementById) { // DOM3 = IE5, NS6
document.getElementById('success').style.visibility = 'hidden';
}
else {
if (document.layers) { // Netscape 4
	document.success.visibility = 'hidden';
}
else { // IE 4
	document.all.success.style.visibility = 'hidden';
	}
}
}

function showdiv() {
if (document.getElementById) { // DOM3 = IE5, NS6
	document.getElementById('success').style.visibility = 'visible';
}
else {
if (document.layers) { // Netscape 4
	document.success.visibility = 'visible';
}
else { // IE 4
	document.all.success.style.visibility = 'visible';
	}
}

} 

function showMeTest() {
	alert('Found Me');
}
function RegValidate() {
// Checking if at least one period button is selected. Or not.
// + document.RegForm.myresource.options.selectedIndex
//alert('Hello ' +document.RegForm.em.value+' '+ document.RegForm.myresource.options[0].value);
//

	var total="",courses="",Tcost=0,count=0,em="",price="";
	 
	for(var i=0; i < document.RegForm.myresource.length; i++){
		if(document.RegForm.myresource.options[i].selected) {
			total +=document.RegForm.myresource.options[i].value + "  "+ document.RegForm.cost.value+ "\n";
			courses +=document.RegForm.myresource.options[i].value+';';
			price += document.RegForm.cost.value+ ';';
			count++;
		}
	 }
	if(total=="") 
	{ alert("select scripts");
	}
	else {
		em = document.RegForm.em.value;
		Tcost = eval(count*document.RegForm.cost.value)+".00"; 
		alert (total +"\n==============================\n" 
			         +"Total                                    "+ Tcost);
		CompleteSign(em,courses,price);
	}
}

function CountDown()
{ 
    if(idle == true)
    {ShowForm('counterform')

        if (milisec<=0)
        { 
            milisec=9 
            seconds-=1 
        } 
        if (seconds<=-1)
        { 
            document.location='../logoff.php';
            milisec=0 
            seconds+=1 
            return;
        } 
        else 
        milisec-=1; 
        document.counter.timer.value=seconds+"."+milisec;
        setTimeout("CountDown()",100);
    }
    else
    {
        return;
    } 
}
function startCountDown()
{
   document.counter.timer.value=startSeconds;
   seconds = startSeconds;
   milisec = 0

   document.counter.timer.style.display = 'block';
   idle = true;
   CountDown();
   document.getElementById("alert").innerHTML = 'You are idle. you will be logged out after ' + startSeconds + ' seconds.';
   countdownrunning = false;   
}

function resetTimer()
{ 
    document.counter.timer.style.display = 'none';
    idle = false;    
    document.getElementById("alert").innerHTML = '';


    if(!countdownrunning)
        setTimeout('startCountDown()',2000);

    countdownrunning = true;

}