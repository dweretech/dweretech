<?php
mysql_connect ('localhost', 'slswauth', 'N9X0E0b4');
mysql_select_db('classbook');

$do = $_GET['do'];
echo " UN ".$_GET['username'];
switch($do) {
    case 'check_username_exists':
        if(get_magic_quotes_gpc()) {
            $username = $_GET['username'];
        }else{
            $username = addslashes($_GET['username']);
        }
        $count = mysql_num_rows(mysql_query("SELECT * FROM `users` WHERE `username`='".$username."'"));
        header('Content-Type: text/xml');
        header('Pragma: no-cache');
        echo '<?xml version="1.0" encoding="UTF-8"?>';
        echo '<result>';
        if($count > 0) {
            echo 'That username already exists, please select another one.';
        }else{
            echo 'That username is available.';
        }
        echo '</result>';
    break;
    default:
        echo 'Error, invalid action';
    break;
}
?>
