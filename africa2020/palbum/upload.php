<?php
require_once('../db/dbinfo.inc'); 
// if something was posted, start the process...
if(isset($_POST['upload']))
{

// define the posted file into variables
$name = $_FILES['picture']['name'];
$tmp_name = $_FILES['picture']['tmp_name'];
$type = $_FILES['picture']['type'];
$size = $_FILES['picture']['size'];

// get the width & height of the file (we don't need the other stuff)
list($width, $height, $typeb, $attr) = getimagesize($tmp_name);
    
// if width is over 600 px or height is over 500 px, kill it    
if($width>600 || $height>500)
{
echo $name . "'s dimensions exceed the 600x500 pixel limit.";
echo ?> <a href="form.htm">Click here</a> to try again. <? ;
die();
}

}

?>