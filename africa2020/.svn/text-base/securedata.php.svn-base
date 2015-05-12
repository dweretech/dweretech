<?php
function avencrypt_c($ukey,$plain_text){
	//
    // Symmetric Encryption  
	//
    $key_value = $ukey;//"ct8bnp4xe9";
    //$plain_text =$udata;// "PLAIN TEXT";
	$cipher_alg = MCRYPT_RIJNDAEL_256;//MCRYPT_DES;
	//$size = mcrypt_get_iv_size (MCRYPT_CAST_256, MCRYPT_MODE_CFB);
    //$iv = mcrypt_create_iv ($size, MCRYPT_DEV_RANDOM);
	$iv = mcrypt_create_iv(mcrypt_get_iv_size($cipher_alg,MCRYPT_MODE_ECB), MCRYPT_RAND);
    $encrypted_text = mcrypt_ecb($cipher_alg, $key_value, $plain_text, MCRYPT_ENCRYPT,$iv);
	//$encrypted_text="umT0fT0yu88nZBJnTfIvWU59c2fGrK4euA63vwTkdplM13rgL4CjtGrN09Qa8olbAc9Az5hu8niRLj5N*UU=";
	
    //echo ("<p><b> Text before encryption : ".$plain_text ."</b>");
    //echo ("<p><b> Text after encryption : </b>");
	//echo ( $encrypted_text );
	//echo ("<p><b> Text after Base64 applied: </b>");
	
	$enc = base64_encode($encrypted_text);
  //  echo ( $enc  );
    return $enc; 

}
// 
// Performes Symantec Decryption
//
function avdecrypt_c($ukey,$encrypted_text){
    $key_value = $ukey;//;
    $plain_text =$encrypted_text;// "PLAIN TEXT";
	$cipher_alg = MCRYPT_RIJNDAEL_256;//MCRYPT_DES;
	//$size = mcrypt_get_iv_size (MCRYPT_CAST_256, MCRYPT_MODE_CFB);
    //$iv = mcrypt_create_iv ($size, MCRYPT_DEV_RANDOM);
	 $iv = mcrypt_create_iv(mcrypt_get_iv_size($cipher_alg,MCRYPT_MODE_ECB), MCRYPT_RAND);
    //$encrypted_text = mcrypt_ecb($cipher_alg, $key_value, $plain_text, MCRYPT_ENCRYPT,$iv);
	//$encrypted_text="umT0fT0yu88nZBJnTfIvWU59c2fGrK4euA63vwTkdplM13rgL4CjtGrN09Qa8olbAc9Az5hu8niRLj5N*UU=";

     // echo ("<p><b> Text after encryption : </b>");
	 //echo ( $encrypted_text );
	//echo ("<p><b> Text after Base64 applied: </b>");
	//echo ( "<br>".base64_decode($encrypted_text) );
	$dec = base64_decode($encrypted_text);
    $decrypted_text = mcrypt_ecb($cipher_alg, $key_value, $dec , MCRYPT_DECRYPT,$iv) ;
	$dec =str_replace("\x0", '',$decrypted_text);
     //echo ("<p><b> Text after decryption : </b>");
    // echo ( $dec); 

    return $dec; 

}
?>
