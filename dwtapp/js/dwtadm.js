// JavaScript Document
function delayer(){
    window.location = "dwtadm.php"
	//onLoad="setTimeout('delayer()', 15000)"
}
function SendCMD(cmd){
 var myfrm = document.getElementById('frmSQLexec');
	if(myfrm.passc.value ==''){
		alert('Invalid PASSWORD');
		myfrm.passc.focus;
		return
	}
	else
	 if(myfrm.passc.value=='2684'){
		window.location='dwtadm.php?cmd='+cmd;  
	  }
	  else{
	    document.getElementById('UserList').innerHTML='Invalid Password';
		myfrm.passc.focus;
		return
	  }
	
}
function DoCMD(){
	var myfrm = document.getElementById('frmSQLexec');
	
	if(myfrm.sqlcmd.value ==''){
		alert('Invalid COMMAND');
		myfrm.sqlcmd.focus;
		return
	}
	else
	  if(myfrm.passc.value ==''){
		  alert('Invalid PASSWORD');
		  myfrm.passc.focus;
		  return
	  }
	  else
	  
	  if(myfrm.passc.value=='2684'){
		  myfrm.submit()
		  
	  }
	  else{
	    document.getElementById('UserList').innerHTML='Invalid Password';
		myfrm.passc.focus;
		return
	  }
}