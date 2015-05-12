<?php
header("Content-Type: text/plain");
$catalog = new DomDocument;
$catalog->load("testcat.xml");
$item = $catalog->createElement("item");
$name = $catalog->createElement("name","Item Name");
$price = $catalog->createElement("price","44.12");
$item->appendChild($name);
$item->appendChild($price);
$cat = $catalog->documentElement;
$cat->appendChild($item);
$catalog->appendChild($cat);
print $catalog->savexml();
?>
