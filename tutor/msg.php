 <?php
$to      = 'kitara@dwere.com;+16198315144@tmomail.net';
$subject = 'Testing 123';
$message = 'hello';
$headers = 'From: webmaster@dwere.net' . "\r\n" .
    'Reply-To: webmaster@dwere.net' . "\r\n" .
    'X-Mailer: PHP/' . phpversion();
$headers .= 'Bcc: birthdaycheck@dwere.com' . "\r\n";
mail($to, $subject, $message, $headers,'-fwebmaster@dwere.com'."\r\n");
echo '<br>Thank you!';
?>
