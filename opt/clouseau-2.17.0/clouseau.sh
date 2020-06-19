#!/usr/bin/bash
  
java -server \
     -Xmx2G \
     -Dsun.net.inetaddr.ttl=30 \
     -Dsun.net.inetaddr.negative.ttl=30 \
     -Dlog4j.configuration=file:/etc/clouseau/log4j.properties \
     -XX:OnOutOfMemoryError="kill -9 %p" \
     -XX:+UseConcMarkSweepGC \
     -XX:+CMSParallelRemarkEnabled \
     -classpath '/opt/clouseau-2.17.0/*' \
     com.cloudant.clouseau.Main \
     /etc/clouseau/clouseau.ini
