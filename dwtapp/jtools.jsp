<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="com.jcraft.jsch.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Remote Ssh</title>
</head>
<body>
<%
String sshHost = "172.16.10.15";
int sshPort = 22;
String sshUserName = "lagony";
String sshPassword = "dwere4u";
String sshCommand ="ifconfig";
InputStream in = null;
FileOutputStream fos=new FileOutputStream("/tmp/ErrLog");
com.jcraft.jsch.Session jschsess = null;

try {
JSch jsch = new JSch();
Properties conf = new Properties();
conf.put("StrictHostKeyChecking", "no");
jschsess = jsch.getSession( sshUserName , sshHost);
jschsess.setConfig(conf);
jschsess.setPort(sshPort);
jschsess.setPassword(sshPassword);
jschsess.connect();
Channel channel = jschsess.openChannel("exec");
((ChannelExec)channel).setPty(true);
((ChannelExec)channel).setCommand(sshCommand);
channel.setInputStream(null);
((ChannelExec)channel).setErrStream(fos);
in=channel.getInputStream();
channel.connect();
byte[] tmp = new byte[1024];
while (true) {
        while (in.available() > 0) {
            int i = in.read(tmp, 0, 1024);
            if (i < 0)
                break;
                out.print(new String(tmp, 0, i));
        }
        if (channel.isClosed()) {
             if(in.available() > 0) {
                int i = in.read(tmp, 0, 1024);
                out.print(new String(tmp, 0, i));
             }
             if (channel.getExitStatus() == 0) {
                 out.println("</br></br>");
             out.println("Command has been posted to the server.");
             }
            break;
           }
        try {
            Thread.sleep(1000);
              } catch (Exception ee) {}
       }
channel.disconnect();
        jschsess.disconnect();
} catch (Exception e) {
  out.println("</br></br>");
        out.println("Error. " + e.toString());
}
%>
</body>
</html>
