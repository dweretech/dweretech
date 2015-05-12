<?php
// Pull in the NuSOAP code
require_once('../lib/nusoap.php');
// Create the server instance
$server = new soap_server();
// Initialize WSDL support
$server->configureWSDL('Africa Vision 2020', 'urn:avwsdl');
// Register the method to expose
$server->register('Get',                // method name
    array('name' => 'xsd:string'),        // input parameters
    array('return' => 'xsd:string'),      // output parameters
    'urn:avwsdl',                      // namespace
    'urn:avwsdl#Get',                // soapaction
    'rpc',                                // style
    'encoded',                            // use
    'Retriev a product info for a state'            // documentation
);
$server->register('Add',                // method name
    array('name' => 'xsd:string'),        // input parameters
	array('state' => 'xsd:string'),
    array('return' => 'xsd:string'),      // output parameters
    'urn:avwsdl',                      // namespace
    'urn:avwsdl#Add',                // soapaction
    'rpc',                                // style
    'encoded',                            // use
    'Add production to search engine'            // documentation
);
$server->register('Search',                // method name
    array('name' => 'xsd:string'),        // input parameters
	array('state' => 'xsd:string'),
    array('return' => 'xsd:string'),      // output parameters
    'urn:avwsdl',                      // namespace
    'urn:avwsdl#search',                // soapaction
    'rpc',                                // style
    'encoded',                            // use
    'Search productions and links'            // documentation
);
$server->register('GetAll',                // method name
    array('name' => 'xsd:string'),        // input parameters
	array('state' => 'xsd:string'),
    array('return' => 'xsd:string'),      // output parameters
    'urn:avwsdl',                      // namespace
    'urn:avwsdl#GetAll',                // soapaction
    'rpc',                                // style
    'encoded',                            // use
    'Retrieves production info'            // documentation
);
// Define the method as a PHP function
function Get($name) {
        return 'Get, ' . $name;
}
function Add($name, $state) {
        return 'Add, ' . $name;
}
function Search($name, $state) {
        return 'Search, ' . $name;
}

function GetAll($name, $state) {
        return 'GetAll, ' . $name;
}
// Use the request to (try to) invoke the service
$HTTP_RAW_POST_DATA = isset($HTTP_RAW_POST_DATA) ? $HTTP_RAW_POST_DATA : '';
$server->service($HTTP_RAW_POST_DATA);
?>
