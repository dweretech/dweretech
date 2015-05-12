<html>
<head>
<title>Upload Image</title>
</head>
<body>
<?php
require_once('db/dbinfo.inc'); 
require_once('securedata.php'); 
/*
    This function take the image from form variables
                            */

function getImageFile($file){
$takeFile = fopen($file, "r");
$file = fread($takeFile, filesize($file));
fclose($takeFile);

return $file;
}

  /*
    We learn image type using this function
    Because we will let onlt gif, jpg and png images can be uploaded
                            */

function getfileType( $name ){
$name = explode(".", $name);
$name = array_reverse($name);
$name = $name[0];
return $name;
}

$allowedImageTypes = array("gif","jpg","png");
if(empty($_FILES['image_file']['name'])){
echo "File not uploaded";
}
else {
$fileType = $_FILES['image_file']['name'];

if(in_array(getfileType($fileType), $allowedImageTypes)){
$fileContent = getImageFile($_FILES['image_file']['name']);
$imgName= $_POST['name'];

$uploadedImage = chunk_split(base64_encode($fileContent));

$query = "INSERT INTO images_table VALUES('NULL','$imgName','$uploadedImage')";

$result = mysql_query($query);

if(mysql_affected_rows() > 0){

echo "Image has been inserted succesfully";
}
else {
echo "Image can not be inserted check your submission";
}
}
else {
echo "This is not a true image type";
}
}
?>

<form action="mypic.php" method="POST" enctype="multipart/form-data">
Name : <input type="text" name="name"> <br/>
Image :<input type="file" name="image_file">
<input type="submit" value="Upload" name="func">
</form>
</body>
</html>
