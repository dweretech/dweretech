<link href="css/avsys.css" rel="stylesheet" type="text/css" />
<?php
require_once('db/dbinfo.inc'); 
$notes=$_REQUEST['txtnotes'];
$subject =$_REQUEST['subject'];
$userid=$_REQUEST['username'];
$todo = strtolower($_REQUEST['todo']);
$id =$_REQUEST['id'];
$st =  date(DATE_RFC822); // gmdate('D, d M Y H:i:s', $ts)
echo 'ID is '.$id.' todo '.$todo;

setlocale(LC_TIME, 'en_US');
$tm =gmdate('D, d M Y H:i:s');
$table='notes';
if(($notes) && ($subject) && ($todo=='save')){
   $sql = "SELECT id, title, notes,sdate FROM {$table} where userid like '".$userid."' and id ='".$id."'";
   $result = mysql_query($sql);
   $usql="update `notes` set notes='$notes', title ='$subject',sdate=now() where userid like '".$userid."' and id ='".$id."'";
  
   if(mysql_fetch_assoc($result)){//mysql_fetch_row
    mysql_query($usql);
	// echo 'Doing update using '. $usql;
  	}
	else
	mysql_query("INSERT INTO `notes` set notes='$notes', title ='$subject  $true', userid = '$userid',sdate=now()");
	
}

if(($id) && ($todo=='del')) {
  $dsql = "delete from {$table} where userid like '".$userid."' and id ='".$id."'"; 
  //echo 'Doing delete using '. $dsql;  
  $result = mysql_query($dsql);
  }
  
if(($id) && ($todo=='show')) {
  $sql = "SELECT id, title, notes,sdate FROM {$table} where userid like '".$userid."' and id ='".$id."'";
   
  $result = mysql_query($sql);
  
  while( list($id,$title,$notes,$sdate) = mysql_fetch_row($result) ){
  ?>


<table width="440" border="0" align="center" cellpadding="4" cellspacing="2" bordercolor="#FFFFFF">
  <tr ><td class="AVForms">
<form action="j#" method="POST" enctype="multipart/form-data" name="formNotes" target="_self">
              <p align="center">Title: 
                <input name="subject" type="text" id="iSubject" value="<?=$title?>" size="50" />
                <input name="txtToday" type="hidden" id="txtDate" size="40" value="<?=$sdate?>" />
                <input name="username" type="hidden" value="<?=$userid?>" id="txtDate" size="40" />
      </p>
    <p align="center">My Notes: [ <a href="#" onclick="getText('AVCenterStage','notes.php')">New</a> ] [ <a href="#" onclick="DoNotes('AVCenterStage;Save\&id=<?=$id?>')">Save</a> ] [ <a href="#" onclick="DoNotes('AVCenterStage;list')">List</a> ] [ <a href="#" onclick="DoNotes('AVCenterStage;Del\&id=<?=$id?>')">Delete</a> ]  [<a href="#" onclick="getText('AVCenterStage','avmap.txt')">Exit</a>]<br>
      <textarea name="txtnotes" cols="50" rows="10" id="iTxtNotes" onchange=""><?=$notes?></textarea>
    </p>
<div align="center"><br>
                   This allows you to manage notes on your project. <br>
      </div>
    </form> 
 </td></tr></table>
<?php
 
	 }
 
}   
?>
<table  border="0" align="center" cellpadding="4"  width="440" > 
 
<?php
 
$result = mysql_query("SELECT id, title, notes,sdate FROM {$table} where userid like '".$userid."' ORDER BY id DESC");
if (mysql_num_rows($result) == 0) // table is empty
    echo '<ul><li>No records found</li></ul>';
else
{  ?>
    <tr bgcolor="#CCCCCC"><td>ID</td><td align="center">Title</td><td align="center">Date</td></tr>
    <?php 
	$rc=0;
    while(list($id,$title,$notes,$sdate) = mysql_fetch_row($result))
    {
        // outputing list
        if($rc%2){
		 ?>
		   <tr bgcolor='#CCCCCC'><td><input type='checkbox' name='del' value='<?=$id?>'></td><td> 
           <a href='#' onclick="DoNotes('AVCenterStage;show\&id=<?=$id?>')"><?=$title?></a>  
         </td><td><small><?=$sdate?></small></td></tr>
           <?php
		   }
		 else {
 			?>
<tr bgcolor='#CCFFFF'><td><input type='checkbox' name='del' value='<?=$id?>'></td><td> 
            <a href='#' onclick="DoNotes('AVCenterStage;show\&id=<?=$id?>')"><?=$title?></a>  
         </td><td><small><?=$sdate?></small></td></tr>
         <?php
		 }
		$rc +=1;
    }


}
?>
<tr><td>
[<a href="#" onclick="getText('AVCenterStage','avmap.txt')">Exit</a>]
 </td></tr>
</table>
 
