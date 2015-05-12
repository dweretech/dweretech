<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<?php
$doc = DOMDocument::loadXML('<root><node/></root>');
echo $doc->saveXML();

$doc = new DOMDocument();
$doc->loadXML('<root><node/></root>');
echo $doc->saveXML();
?> 
Saving XML<br>
<?php

$doc = new DOMDocument('1.0');
// we want a nice output
$doc->formatOutput = true;

$root = $doc->createElement('book');
$root = $doc->appendChild($root);

$title = $doc->createElement('title');
$title = $root->appendChild($title);

$text = $doc->createTextNode('This is the title');
$text = $title->appendChild($text);

echo 'Wrote: ' . $doc->save("xml/test.xml") . ' bytes<br>'; // Wrote: 72 bytes

?> 
Loading XML<br>
<?php
$doc = DOMDocument::load('xml/test.xml');
echo $doc->saveXML();

$doc = new DOMDocument('xml/test2.xml');
$doc->load('xml/test2.xml');
echo $doc->saveXML()."MY XML"."<br>";
?> 
</body>
</html>
