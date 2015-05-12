<html>
<title>External Authentication System</title>
<script type="text/javascript">
function toggle_username(userid) {
    if (window.XMLHttpRequest) {
        http = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        http = new ActiveXObject("Microsoft.XMLHTTP");
    }
    handle = document.getElementById(userid);
    var url = 'ajax.php?';
    if(handle.value.length > 0) {
        var fullurl = url + 'do=check_username_exists&username=' + encodeURIComponent(handle.value);
        http.open("GET", fullurl, true);
        http.send(null);
        http.onreadystatechange = statechange_username;
    }else{
        document.getElementById('username_exists').innerHTML = '';
    }
}

function statechange_username() {
    if (http.readyState == 4) {
        var xmlObj = http.responseXML;
        var html = xmlObj.getElementsByTagName('result').item(0).firstChild.data;
        document.getElementById('username_exists').innerHTML = html;
    }
}
</script>
<body>
<form action="authentication.php" method="post">
 <p>Username: <input d="username" type="text" name="username" onchange="toggle_username('username')"/></p>
 <div id="username_exists" style="font-size: 11px;font-weight: bold;color:#FF3300"> </div>
 <p>Password: <input type="password" name="pass" /></p>
 <p><input type="hidden" name="year"  value="2008"/></p>
 <p><input type="submit" /></p>
</form>
</body>
</html>
