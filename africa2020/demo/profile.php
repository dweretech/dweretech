<?php
  //File: gaccess.php
  require_once 'domdoc.php';
  try {
    //first, create an instance of MyDomDocument
    $dom = new MyDomDocument();
    $ip=$_SERVER['REMOTE_ADDR'];
    //now, create the root of the XML document
    $root = $dom->addElement($dom, 'CUSTOMER');
    //you can always add an attribute to the node if necessary
    $root->setAttribute('id', $ip);
    //once the root element is created, add nested nodes as needed
    $emplno = $dom->addElement($root, 'REG_ID', '156934');
    $fname = $dom->addElement($root, 'FIRST_NAME', 'John');
    $lname = $dom->addElement($root, 'LAST_NAME', 'Jamison');
    $email =  $dom->addElement($root, 'EMAIL','jjamison@gmail.com');
    $regplan = $dom->addElement($root, 'REG_PLAN','Community Member');
    //finally, output the XML document
    echo $dom->saveXML();
  }
  catch(Exception $e) {
       print $e->getMessage();
  }
?>
