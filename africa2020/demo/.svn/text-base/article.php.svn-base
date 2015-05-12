<?php

/* load the xml file and stylesheet as domdocuments */
$xsl = new DomDocument();
$xsl->load("article.xsl");
$inputdom = new DomDocument();
$inputdom->load("article.xml");

/* create the processor and import the stylesheet */
$proc = new XsltProcessor();
$xsl = $proc->importStylesheet($xsl);
$proc->setParameter(null, "titles", "Titles");

/* transform and output the xml document */
$newdom = $proc->transformToDoc($inputdom);
 header("Content-Type: text/plain");
print $newdom->saveXML();

?> 
