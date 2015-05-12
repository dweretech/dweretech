// JavaScript Document
/**
*
*  AJAX IFRAME METHOD (AIM)
*  http://www.dwere.com/
*
**/
  
var xmlHttp; 

 

function OpenAdStage(url) {
	//newwindow=window.open(url,'name','height=600,width=350');
	var width=350
	var height=600;
	var left=screen.width-width;
	var top=screen.height-height;
	var pWin=open( url, 'win', 'width='+width+',height='+height+',left='+left+',t op='+top );
	if( pWin.screenX != null ) {
	pWin.screenX=left;
	pWin.screenY=top;
	}
	if (window.focus) {newwindow.focus()}
	return false;
}

// -->
function swapImage(imgIdx) {
        theImages = new Array(["dwt-info.JPG","Doing Business with DWERE!","http://dweretech.com"],
							  ["dwt-conslt.GIF","DWT Consultant","TabbedPanels1.showPanel(4);getConnected('UserInfo','edit.php')"],
							  ["dwt-ads1.JPG","<a href=\"\" onclick=\"return OpenAdStage('adstage.php')\">How to advertise with us?</a>","TabbedPanels1.showPanel(4)"],
							  ["future-of-learning_id2728501_size3901.jpg","The planet is circlar","TabbedPanels1.showPanel(3)"],
							  ["logoEbay_x45.gif","Visit our Daily deal on eBay","http://www.ebay.com/itm/260938818015"],
							  ["APS_PRO_Big_Box_US_Ad.gif","Turn Pennies Into Dollars","http://www.allpennystocks.com/aps_us/hot_nasdaq_stocks.asp"],
							  ["thumbtack.JPG","Thumbtack","http://www.thumbtack.com/dwere-tech-research-La-Mesa-CA/service/896034"]
							  );
if(imgIdx){
	whichImage = imgIdx;
}
else {
   whichImage = Math.floor(Math.random()*theImages.length);
}
var gotoUrl =  /http/.test(theImages[whichImage][2]);
if(gotoUrl){
 document.getElementById("ShowDealsToday").innerHTML= '<center><a href="" onclick="window.location=\''+  
 theImages[whichImage][2]+'\'"><img src="images/' + theImages[whichImage][0]+ 
'" alt="" width="174" height="174" align="right" target="_new"> </a>'+theImages[whichImage][1]+'</center>';
}
else {
 document.getElementById("ShowDealsToday").innerHTML= '<center><a href="" onclick="'+  
 theImages[whichImage][2]+'"><img src="images/' + theImages[whichImage][0]+ 
'" alt="" width="174" height="174" align="right" target="_new"> </a>'+theImages[whichImage][1]+'</center>';
}

}

function init() {
	document.getElementById('file_upload_form').onsubmit=function() {
    document.getElementById('file_upload_form').target = 'upload_target'; //'upload_target' is the name of the iframe
	document.getElementById("upload_target").onload = uploadDone; //This function should be called when the iframe has compleated loading
     
	}
}

function uploadDone() { //Function will be called when iframe is loaded
	var ret = frames['upload_target'].document.getElementsByTagName("body")[0].innerHTML;
	var data; // eval('('+ret+')'); //Parse JSON // Read the below explanations before passing judgment on me
	//document.file_upload_form.fn.value='upload/'+document.getElementsByTagName("body")[0].innerHTML;//\'upload/'.$name.'\';
	/* alert('File Path '+data.file_name );
	if(data.success) { //This part happens when the image gets uploaded.
		//document.getElementById("image_details").innerHTML = "<img src='upload/" + data.file_name + "' /><br />Size: " + data.size + " KB";
		// <img src='upload/" + data.file_name + "' /><br />Size: " + data.size + " KB";
	}
	else if(data.failure) { //Upload failed - show user the reason.
		alert("Upload Failed: " + data.failure);
	}	*/
}
function ShowForm(DivN){
	var scr = document.getElementById(DivN);
	 if (scr.style.visibility=='visible'){
		 scr.style.visibility='hidden';
	 }else
	   scr.style.visibility='visible';
	  
	return
}
function WImage(){
	//document.getElementById('fid').value  
	alert(document.getElementById('file').value);
	document.getElementById("image_details").innerHTML =document.getElementById('file').value
	return
}
function InitHTML(){
	 var aframe = window.frames['upload_target'];
	 document.getElementById('image_details').innerHTML = aframe.document.body.innerHTML; ;
	return;
}

/* loads a page into iframe */
function loadIntoFrame(id, page){
var el;
alert(' '+page);
el = document.getElementById(id);
if(el) el.src = page; 
}

/* takes a html content from iframe and pastes it into 'myDiv' on this page */
function loadIntoDiv(divName, frameName){
var el,aframe;
	el = document.getElementById(divName);
	aframe = window.frames[frameName];
	 
	if(el && aframe){
		el.innerHTML=aframe.document.body.innerHTML;
	}
} 
  // profile function
function loadImage(){
	var el,aframe;
	//document.getElementById('fid').value
	//loadIntoFrame('upload_target','upload/'+document.getElementById('file').value); 
	 alert(document.getElementById('file').value);
	 alert('<img src=upload/'+document.getElementById('file').value+'>');
	 //document.getElementById('mypic').src='upload/'+document.getElementById('file').value;
	// document.getElementById("image_details").innerHTML =document.getElementById('file').value;
	//loadIntoFrame("image_details", page);
	return
}
function ShowMsg(msg){

if(navigator.appName == 'Microsoft Internet Explorer') //IE
{
//selectedValue = document.getElementById(myID).parentNode.innerText;
alert(msg+' ' + navigator.appName);
}
else if(navigator.appName == 'Netscape') //Firefox
{
	alert(msg);
//selectedValue = document.getElementById(myID).parentNode.childNodes.item(1).innerHTML;
}
	
return 

}

// initializes 
window.onload=init;



 
