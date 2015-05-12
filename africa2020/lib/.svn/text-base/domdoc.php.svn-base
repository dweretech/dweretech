<?php
  //File:domdoc.php
  class MyDomDocument extends DomDocument{
    
    public function __construct($ver = "1.0", $encode = "UTF-8")
    {
     parent::__construct($ver, $encode);
    }
    public function addElement($node, $elemName, $elemVal="")
    {
     if(!$child = $this->createElement($elemName, $elemVal))
       throw new Exception('Could not create a new node ');
     if(!$child = $node->appendChild($child))
       throw new Exception('Could not append a new node ');
     return $child;
    }
  }
?>
