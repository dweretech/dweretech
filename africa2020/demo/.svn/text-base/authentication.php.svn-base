<?php  
 //File: gaccess.php
  require_once 'domdoc.php';
  if($_POST['username'] && $_POST['pass']){
  //echo "Profile";
  try {
    //first, create an instance of MyDomDocument
    $dom = new MyDomDocument();
    $ip=$_SERVER['REMOTE_ADDR'];
    //now, create the root of the XML document
    $root = $dom->addElement($dom, 'CUSTOMER');
    //you can always add an attribute to the node if necessary
    $root->setAttribute('id', $ip);
    //once the root element is created, add nested nodes as needed
    $emplno = $dom->addElement($root, 'REG_ID', 'klagony');
    $fname = $dom->addElement($root, 'FIRST_NAME', 'Kitara');
    $lname = $dom->addElement($root, 'LAST_NAME', 'Lagony');
    $email =  $dom->addElement($root, 'EMAIL','klagony@gmail.com');
    $regplan = $dom->addElement($root, 'REG_PLAN','Community Member');
    //finally, output the XML document
    header("Content-Type: text/plain");
    echo $dom->saveXML();
  }
  catch(Exception $e) {
       print $e->getMessage();
  }
 }
  else
   echo "Invalid login";
?>
