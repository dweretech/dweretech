<?php
// create doctype
$dom = new DOMDocument("1.0");

// display document in browser as plain text
// for readability purposes
header("Content-Type: text/plain");

// create root element
$root = $dom->createElement("toppings");
$dom->appendChild($root);

// create child element
$item = $dom->createElement("item");
$root->appendChild($item);

// create text node
$text = $dom->createTextNode("pepperoni");
$item->appendChild($text);

// save and display tree
echo $dom->saveXML();
?>
