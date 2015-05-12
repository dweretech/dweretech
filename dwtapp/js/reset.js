
var req;


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
			
			profile = req.responseXML.documentElement;
			fullname = profile.getElementsByTagName('fullname')[0].firstChild.data;
			email = profile.getElementsByTagName('email')[0].firstChild.data;
			passcode = profile.getElementsByTagName('passcode')[0].firstChild.data;
			zipcode = profile.getElementsByTagName('zipcode ')[0].firstChild.data;
			alert("Here is "+fullname +"\n" + zipcode);
					
			eval(method + '(\'\', result)');
		} 
		 else  
		  alert("There was a problem retrieving the XML data:\n" + req.statusText);
	}
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
//alert("Checked for name: " + input);
}
}
