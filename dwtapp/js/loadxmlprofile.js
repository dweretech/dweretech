
var req;
var authenticator = "dwere_net";
var keyTransportCert = null;


function loadXMLDoc(url)
{
// branch for native XMLHttpRequest object
	if (window.XMLHttpRequest) {
		req = new XMLHttpRequest();
		req.onreadystatechange = processReqChange;
		req.open("GET", url, true);
		req.send(null);
	// branch for IE/Windows ActiveX version
	} 
	else
	  if (window.ActiveXObject) {
		 req = new ActiveXObject("Microsoft.XMLHTTP");
		 if (req) {
			req.onreadystatechange = processReqChange;
			req.open("GET", url, true);
			req.send();
		}
	   }
}

function processReqChange()
{
// only if req shows "complete"
	if (req.readyState == 4) {
	// only if "OK"
		if (req.status == 200) {
			// ...processing statements go here...
			  response = req.responseXML.documentElement;
			method = response.getElementsByTagName('method')[0].firstChild.data;
			result = response.getElementsByTagName('result')[0].firstChild.data;
			/*
			profile = req.responseXML.documentElement;
			fullname = profile.getElementsByTagName('fullname')[0].firstChild.data;
			email = profile.getElementsByTagName('email')[0].firstChild.data;
			passcode = profile.getElementsByTagName('passcode')[0].firstChild.data;
			zipcode = profile.getElementsByTagName('zipcode')[0].firstChild.data;
			alert("Here is "+fullname +"\n" + email);  
					*/
			eval(method + '(\'\', result)');
		} 
		 else  
		  alert("There was a problem retrieving the XML data:\n" + req.statusText);
	}
}
// Get XML progile
function loadXMLProfile(url)
{
// branch for native XMLHttpRequest object
	if (window.XMLHttpRequest) {
		req = new XMLHttpRequest();
		req.onreadystatechange = processXMLProfile;
		req.open("GET", url, true);
		req.send(null);
	// branch for IE/Windows ActiveX version
	} 
	else
	  if (window.ActiveXObject) {
		 req = new ActiveXObject("Microsoft.XMLHTTP");
		 if (req) {
			req.onreadystatechange = processReqChange;
			req.open("GET", url, true);
			req.send();
		}
	   }
}

function validate()
{ //alert('Hello 1' );
    with (document.forms[0]) {
        var keyTransportCert = null;
        // generate keys for nsm.
        if (typeof(crypto.version) != "undefined") {
              crmfObject = crypto.generateCRMFRequest(
                "CN=" + fn.value,
                zp.value, 
                authenticator,
        	    keyTransportCert,
                "setCRMFRequest();",
                1024, null, "rsa-dual-use");
         }
        return false;
    }
}

function setCRMFRequest()
{  //alert('Hello 2' );
    with (document.forms[0]) {
          cert_request.value = crmfObject.request;
		   
          submit();
    }
}
function processXMLProfile()
{
// only if req shows "complete"
	if (req.readyState == 4) {
	// only if "OK"
		if (req.status == 200) {
			// ...processing statements go here...
			 
			profile = req.responseXML.documentElement;
			fullname = profile.getElementsByTagName('fullname')[0].firstChild.data;
			email = profile.getElementsByTagName('email')[0].firstChild.data;
			passcode = profile.getElementsByTagName('passcode')[0].firstChild.data;
			zipcode = profile.getElementsByTagName('zipcode')[0].firstChild.data;
			
			document.getElementById('fn').value=fullname;
			document.getElementById('zp').value=zipcode;
			//alert("Here is "+fullname +"\n" + email+"\n" + document.getElementById('zp').value);   
			document.forms[0].action='myprofile.php'
			document.forms[0].type='post'
			document.forms[0].id='getProfilePage'
			document.forms[0].enctype='application/x-www-form-urlencoded'
			
			 
			 //document.forms[0].onsubmit='return validate();'
			 validate();
			//document.forms[0].submit();
			eval(profile + '(\'\', fullname)');
			
			//document.forms[0].email=fullname;
			
					//getProfilePage
			//document.write("Hello World!");
			//window.document.location.href = "myprofile.php?zp="+zipcode ;
		} 
		 else  
		  alert("There was a problem retrieving the XML data:\n" + req.statusText);
	}
}

function clearform(){
	//var fn = document.getElementById('fullname').value='';
	var em = document.getElementById('email').value='';
	var pw = document.getElementById('passcode').value='';
	//var zp = document.getElementById('zipcode').value='';
}
function saveProfile(){
	var fn = document.getElementById('fullname').value;
	var em = document.getElementById('email').value;
	var pw = document.getElementById('passcode').value;
	var zp = document.getElementById('zipcode').value;
	url = 'save.php?fn=' + fn + '&em=' + em +'&pw=' + pw +'&zp=' +zp;
	 //alert(url);
    loadXMLDoc(url);

}
function loginOK()
{
 //alert("There was a problem retrieving");


// Input mode
    var em = document.getElementById('email').value;
	var pw = document.getElementById('passcode').value;
	url = 'getprofile.php?em=' + em+'&pw='+ pw;	
	//alert(""+url);
   loadXMLProfile(url); 
}

function checkName(input, response)
{
//alert("There was a problem retrieving");

if (response != ''){
// Response mode
	message = document.getElementById('nameCheckFailed');
	if (response == 1){
		message.className = 'error';
		var usrtxt = document.getElementById('username');
		   usrtxt.focus();
		   document.getElementById('password').value="test";
	}else 
		message.className = 'hidden';
		//message.className = 'ok';
	 
}else{
// Input mode

url = 'dwtadm.php?q=' + input;
loadXMLDoc(url);
}
}

