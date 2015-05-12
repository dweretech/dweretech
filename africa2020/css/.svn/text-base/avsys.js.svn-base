// JavaScript Document
function MM_callJS(jsStr) { //v2.0
//alert(jsStr)
var myPlan=document.form1.txtMyAfrica.value;
// setup a country to join
document.formjoinAVNet.country.value=jsStr;
document.formjoinAVNet.knownStates.value= document.form1.txtMyAfrica.value;
document.formSearch.txtSearch.value=jsStr;
SearchNow(jsStr);

// check for any pre-existing state.
if(myPlan.indexOf( jsStr )==-1){
    if(myPlan.length>0){
       document.form1.txtMyAfrica.value += ","+jsStr ;
	   }
	   else
	   document.form1.txtMyAfrica.value += jsStr ;
	   
}
else
  alert(jsStr + " Exist already");
  
//document.frmCountry.selMyState.text=jsstr
 // return eval(jsStr)
}
function UpdateAll(){
document.formjoinAVNet.knownStates.value= document.form1.txtMyAfrica.value;
}

function ShowMe(){
//alert(' '+document.formjoinAVNet.getElementById['HideMe'].Visibility );
document.getElementById("HideMe").style.border = "5px dotted black";
}
function MM_showHideLayers() { //v9.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  if (window.XMLHttpRequest) { // Mozilla, Safari, ...
  for (i=0; i<(args.length-2); i+=3) 
  with (document) if (getElementById && ((obj=getElementById(args[i]))!=null)) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
	} else if (window.ActiveXObject) {
	alert('IE');
	}
}
function SearchNow(str){
if (window.XMLHttpRequest) { // Mozilla, Safari, ...
var xmlHttp = new XMLHttpRequest();
} else if (window.ActiveXObject) { // IE
var xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
}

 xmlHttp.open('GET','joinunion.php?name='+str,true);
  
 xmlHttp.onreadystatechange=function() {
  if (xmlHttp.readyState==4) {
    //alert(xmlHttp.getAllResponseHeaders());

  }
 }
 //window.alert(str);
 xmlHttp.send(null);

}