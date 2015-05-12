<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<TITLE></TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</HEAD>
<BODY onLoad="update();">
   
    <SCRIPT LANGUAGE="JavaScript" type="text/JavaScript">
       
        function XmlHttp( ){
            this.CreateXmlHttpObject = CreateXmlHttpObject;
            this.GetUrlContent = GetUrlContent;
            this.GetResponseText = GetResponseText;
            this.GetReadyState = GetReadyState;           
            this.HttpMethod = 'GET'; // default
            this.objXmlHttp = this.CreateXmlHttpObject();
        }

        // Initialize XMLHttpObject
        function CreateXmlHttpObject(){
            var xmlhttp=false;
            try {
                xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
            } catch (e) {
            try {
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (E) {
                xmlhttp = false;
            }
        }
   

        if (!xmlhttp && typeof XMLHttpRequest!='undefined') {
            xmlhttp = new XMLHttpRequest();
        }
            return xmlhttp;
        }
        var objXMLHttp =  new XmlHttp();
               
        function GetReadyState( ){
            return this.objXmlHttp.readyState;
        }

        function GetResponseText( ){
            return this.objXmlHttp.responseText;
        }


        // Function performs Get request to absolute url(strUrl)
        // using XmlHttp object (asynchroni)
        // Response returned into objResult element using innerHTML.
        // When state of XmlHttp object is changed - objOnReadyStateChangeFunction called
        function GetUrlContent( strUrl, objOnReadyStateChangeFunction ){
            this.objXmlHttp.open(this.HttpMethod, strUrl, true);
            this.objXmlHttp.setRequestHeader('Content-Type', 'text/xml; charset=UTF-8');
            if(objOnReadyStateChangeFunction){
                this.objXmlHttp.onreadystatechange=function(){
                    objOnReadyStateChangeFunction();
                }
            }
            this.objXmlHttp.send(null)   
        }
       
        //This function is called when we get the data back from the server.       
        function GetResponse1( ){   
            if (objXMLHttp.GetReadyState()==4) {                       
                // save response in inner html of result object   
                var objMyDiv = document.getElementById( 'MyDiv1' );
                objMyDiv.innerHTML = objXMLHttp.GetResponseText( );     
            }
        } 

        //This function is called when we get the data back from the server.       
        function GetResponse2( ){   
            if (objXMLHttp.GetReadyState()==4) {                       
                // save response in inner html of result object   
                var objMyDiv = document.getElementById( 'MyDiv2' );
                objMyDiv.innerHTML = objXMLHttp.GetResponseText( );     
            }
        } 

        function UpdateDiv1( FieldValue ){
            if( FieldValue !='' ){
                var objMyDiv = document.getElementById( 'MyDiv1' );
                objMyDiv.innerHTML = 'Please wait, getting info from server for Div 1...';
                objXMLHttp.GetUrlContent( 'http://www.weberdev.com/get_example-' + FieldValue + '.html' , GetResponse1 );       
            }
            return;
         }   
        function UpdateDiv2( FieldValue ){
            if( FieldValue !='' ){
                var objMyDiv = document.getElementById( 'MyDiv2' );
                objMyDiv.innerHTML = 'Please wait, getting info from server for Div 2...';
                objXMLHttp.GetUrlContent( 'http://www.weberdev.com/get_example-' + FieldValue + '.html' , GetResponse2 );       
            }
            return;
         }   
    </SCRIPT>

    <FORM NAME="MyForm" ACTION="MyFile.html" METHOD="POST">
    <SELECT NAME="Test1" onChange="UpdateDiv1(this.value);">
    <OPTION VALUE="4509">4509</OPTION>
    <OPTION VALUE="4506">4506</OPTION>
    <OPTION VALUE="4505">4505</OPTION>
    </SELECT>
    <BR>
    <SELECT NAME="Test2" onChange="UpdateDiv2(this.value);">
    <OPTION VALUE="4500">4500</OPTION>
    <OPTION VALUE="4501">4501</OPTION>
    <OPTION VALUE="4502">4502</OPTION>
    </SELECT>
    <INPUT  TYPE="SUBMIT" NAME="SUBMIT" VALUE="Submit">
    </FORM>

    <DIV ID="MyDiv1" STYLE="top:10px;right:0px;position:relative;border-width:1px;border-color:#000000;border-style:solid;width:500px;height:600px;overflow:hidden;">DIV 1</DIV>
    <BR><BR>
    <DIV ID="MyDiv2" STYLE="top:-630px;right:-550px;position:relative;border-width:1px;border-color:#000000;border-style:solid;width:500px;height:600px;overflow:hidden;">DIV 2</DIV>
</BODY>
</HTML>