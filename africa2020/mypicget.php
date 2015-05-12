<html>
<head>
<title>Download File From MySQL</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<p>
  <?php
require_once('db/dbinfo.inc'); 
require_once('securedata.php'); 
$host_url =$_SERVER['HTTP_HOST'];

function db_download_file( $id, $userid)
         {
         $return_value = "";
         $upload_dir ="upload";
		//$tf = $upload_dir.'/'.$userid.'/'.md5(rand()).".test";
		$tf = $upload_dir.'/'."test.tmp";
		$f = @fopen($tf, "w");
		if ($f == false) 
		die("Fatal error! {$upload_dir} is not writable. Set 'chmod 777 {$upload_dir}'
		or something like this");
		fclose($f);

         $select = "select id, name, size, type from upload where id = '" . $id . "'";

         $file_records = mysql_query($select);

         if($file_record = mysql_fetch_array($file_records))
           {
	   $file_name = $file_record[name];
	   $file_bytes = $file_record[size];
	   printf("<br> Found file: %s size is: %s, path is: %s ",$file_name, $file_bytes, $upload_dir.'/'. $file_name);
           $file_handle = fopen($upload_dir.'/'.$file_name, "wb");
			 
           fwrite($file_handle, $file_bytes, strlen($file_bytes));
		   fclose($file_handle);
           $return_value = $upload_dir.'/'. $file_name;
           }
		   
//echo "<br>Checking Database ...<a hre=".$base_url."/"."><img src=".$img_path." </a>  <br>";


         return($return_value);
}

$path=db_download_file(1,'1000');
 
echo "<br><a href=".$path.">  <img src='".$path."'> </a>  <br>";


 

// header("Content-Disposition: attachment; filename=$name");
// echo $content;
 
 
 
 
?>
</p>
<p><a href="upload/2801.jpg">My picture is here</a>: <img name="mypc" src="<?=$path?>" width="93" height="63" alt=""><a href="upload/2801.jpg"><img src="upload/2801.jpg" alt="" longdesc="upload/2801.jpg"></a></p>
</body>
</html>