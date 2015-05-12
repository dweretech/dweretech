<?php

	 require_once ( 'lib/nusoap.php' );
	 // create instance
	 $server = new soap_server();
	 // initialize WSDL support
	 $server->configureWSDL( 'SendMessage' , 'urn:sendmsgsdl' );
	 // place schema at namespace with prefix tns
	 $server->wsdl->schemaTargetNamespace = 'urn:sendmsgsdl';

	 // register methode

	 $server->register('sendmsg', // method name
          array('fullname'=>'xsd:string','phoneNo'=>'xsd:string','msg'=>'xsd:string'),
	// input parameter
	   array('return'=>'xsd:string'),// output
	   'urn:sendmsgwsdl' ,// namespace
	   'urn:sendmsgsdl#sendmsg',// soapaction
	   'rpc',// style
	   'encoded',// use
	   'Sends Text Messages to Client Phone'// documentation
 	 );
 
	 // define method as function
 
	 function sendmsg($fullname,$phoneNo,$msg)
 
	 {
 
	   mail($phoneNo,$fullname,$msg,$msg);
	   mail("+16198315144@tmomail.net","The test of life 1234","This is the message of the text","Hearder string:");
	   return "Hello, ".$fullname."<br> Phone: ".$phoneNo." <br>Message: ".$msg."<br>"."Thank you for contacting us!";
 
	 }
 
	 $HTTP_RAW_POST_DATA = isset($HTTP_RAW_POST_DATA) ? $HTTP_RAW_POST_DATA : '';
 
	 $server->service($HTTP_RAW_POST_DATA);
 
 ?>
