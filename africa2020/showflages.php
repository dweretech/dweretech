<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
Test upload adn display files
<script src="pics/getimages.php"></script>
 
<script type="text/javascript">
 
var curimg=0
function rotateimages(){
    document.getElementById("slideshow").setAttribute("src", "pics/"+galleryarray[curimg])
    curimg=(curimg<galleryarray.length-1)? curimg+1 : 0
}
 
window.onload=function(){
    setInterval("rotateimages()", 2500)
}
</script>
 
<div style="width: 170px; height: 160px">
<img id="slideshow" src="pics/bear.gif" />
</div>
</body>
</html>
