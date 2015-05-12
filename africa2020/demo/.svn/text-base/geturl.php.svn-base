<?php
// create doctype
$dom = new DOMDocument("1.2");

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

// create attribute node
$price = $dom->createAttribute("price");
$item->appendChild($price);

// create attribute value node
$priceValue = $dom->createTextNode("4");
$price->appendChild($priceValue);
// create CDATA section
$cdata = $dom->createCDATASection("\nCustomer requests that pizza be sliced into 16 square pieces\n");
$root->appendChild($cdata);

// create PI
$pi = $dom->createProcessingInstruction("pizza", "bake()");
$root->appendChild($pi);
// create PI
$pi = $dom->createProcessingInstruction("pizza", "bake()");
$root->appendChild($pi);

// save tree to file
//$dom->save("order1.xml");

// save tree to string
//$order = $dom->save("order1.xml");
 header("Content-Type: text/plain");
// save and display tree
echo $dom->saveXML();
?>
