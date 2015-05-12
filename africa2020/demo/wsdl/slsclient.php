<?php
require_once('lib/nusoap.php');
$proxyhost = 'MYHOST';
$proxyport = '8080';
$proxyusername = 'username';
$proxypassword = 'pass';

$wsdl="http://localhost/testwebservice/service.asmx?wsdl";

try
{
$client=new nusoap_client($wsdl,false);
}
catch(Exception $e)
{
printf("Message = %s\n",$e->getMessage());
}

$params = array(
    'a'                 => 2,
    'b'                => 4,
    );

try
{   
$result = $client->call('sum',array('parameters' => $params));

}
catch(EXception $e1)
{
printf("Message = %s\n",$e1->getMessage());
}
if ($client->fault)
 {
    echo '<h2>Fault</h2><pre>';
    print_r($result);
    echo '</pre>';
}
else
{
    // Check for errors
    $err = $client->getError();
    if ($err)
    {
        // Display the error
        echo '<h2>Error</h2><pre>' . $err . '</pre>';
       
    } else
    {
        // Display the result
        echo '<h2>Result</h2><pre>';
        print_r($result);
        echo '</pre>';
    }
}
echo '<h2>Request</h2><pre>' . htmlspecialchars($client->request, ENT_QUOTES) . '</pre>';
echo '<h2>Response</h2><pre>' . htmlspecialchars($client->response, ENT_QUOTES) . '</pre>';
echo '<h2>Debug</h2><pre>' . htmlspecialchars($client->getDebug(), ENT_QUOTES) . '</pre>';

?>
