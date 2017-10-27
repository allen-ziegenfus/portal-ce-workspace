
. ~/.bash_profile_dxp

#CATALINA_OPTS="$CATALINA_OPTS -Dfile.encoding=UTF8 -Djava.net.preferIPv4Stack=true -Dorg.apache.catalina.loader.WebappClassLoader.ENABLE_CLEAR_REFERENCES=false -Duser.timezone=GMT -Xmx4096m -XX:MaxPermSize=768m"

UPGRADEDIR=~/liferay/portal-ce-workspace/upgrade
DIR=~/liferay/portal-ce-workspace/bundles/tools/portal-tools-db-upgrade-client

cp ./*.properties ${DIR}
cd ${DIR}
export JAVA_OPTS="-Xms4096m -Xmx4096m -XX:MaxNewSize=2048m -XX:+UseConcMarkSweepGC -XX:+CMSParallelRemarkEnabled"
java -jar "${DIR}/com.liferay.portal.tools.db.upgrade.client.jar" -j "${JAVA_OPTS}"


cp ${DIR}/upgrade.log* ${UPGRADEDIR}

