<?php
/*
Plugin name: Get Datepicker
Plugin URL: http://dev3.dwere.net
Description: Javascript to display custom date
Author: Kitara Lagony
Version: 0.1
Author URL: http://dev3.dwere.net
*/

add_action('wp_enqueue_scripts','register_scripts');

function register_scripts(){
	wp_register_script( 'Date Picker', plugins_url('get_datepicker.js',_FILE_),'jquery',0.1,true);
}
	 
add_action('wp_enqueue_scripts', 'load_scripts' );

function load_scripts(){
	$getDP == 'Say Get Datepicker';
	wp_localize_script('get_datepicker','get_datepicker',array('text' => $getDP ));
	wp_enqueue_script( 'get_datepicker' );
}

 