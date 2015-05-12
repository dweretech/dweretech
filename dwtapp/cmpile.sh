#!/bin/bash
#
##Test and Prod Builts #################
#
#javac -deprecation -classpath $CATALINA_HOME/common/lib/servlet-api.jar WEB-INF/src/WebCrawler.java
#mv -f  WEB-INF/src/WebCrawler.class  WEB-INF/classes/

export JAVA_HOME=/usr/local/jdk1.8.0_45
export PATH=$PATH:$JAVA_HOME/bin

dt=`date +'%Y%m%d_%H%M%S'`
echo ''
echo 'Preparing jar file for deployment...'
echo 'Stay tuned!'
echo ''
if [ "$1" = "prod" ]
then
  cp -r * ../prod/dwtapps/
  cd ../prod/dwtapps/
  sed -i -r 's/192.168.274.4/172.16.10.28/g' *.jsp
  #sed -i -r 's/1521:orcl/1521:dwtdb/g' *.jsp
  jar cf ../dwtapp$dt.war *
  echo "Production build complete..."
  ls -l 
else
  sed -i -r 's/172.16.10.28/192.168.174.4/g' *.jsp
  jar cf /apps/dwtapp$dt.war *
  cp /apps/dwtapp$dt.war /apps/webapps/dwtapp.war
  ls -ltr  /apps/webapps/
fi
