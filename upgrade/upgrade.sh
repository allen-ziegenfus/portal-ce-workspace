CATALINA_OPTS="$CATALINA_OPTS -Dfile.encoding=UTF8 -Djava.net.preferIPv4Stack=true -Dorg.apache.catalina.loader.WebappClassLoader.ENABLE_CLEAR_REFERENCES=false -Duser.timezone=GMT -Xmx4096m -XX:MaxPermSize=768m"
java -Xms4096m -Xmx4096m -XX:MaxNewSize=2048m -XX:MaxPermSize=1024m -XX:PermSize=1024m  -jar ../bundles/tools/portal-tools-db-upgrade-client/com.liferay.portal.tools.db.upgrade.client.jar 

