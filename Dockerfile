FROM wso2/wso2is:5.8.0

# Add prometheus support
COPY --chown=wso2carbon:wso2 ./wso2is/jmx_prometheus_javaagent-0.12.0.jar ${WSO2_SERVER_HOME}/bin/
COPY --chown=wso2carbon:wso2 ./wso2is/is.yml ${WSO2_SERVER_HOME}/bin/
COPY --chown=wso2carbon:wso2 ./wso2is/wso2server.sh ${WSO2_SERVER_HOME}/bin/

# Add mysql driver jar
COPY --chown=wso2carbon:wso2 ./wso2is/mysql-connector-java-8.0.18.jar ${WSO2_SERVER_HOME}/repository/components/lib/
COPY --chown=wso2carbon:wso2 ./wso2is/release/authenticationendpoint.war ${WSO2_SERVER_HOME}/repository/deployment/server/webapps/authenticationendpoint.war
COPY --chown=wso2carbon:wso2 ./wso2is/release/api#identity#recovery#v0.9.war ${WSO2_SERVER_HOME}/repository/deployment/server/webapps/api#identity#recovery#v0.9.war
COPY --chown=wso2carbon:wso2 ./wso2is/release/api#identity#user#v1.0.war ${WSO2_SERVER_HOME}/repository/deployment/server/webapps/api#identity#user#v1.0.war

HEALTHCHECK --interval=30s --retries=3 --start-period=1m30s --timeout=5s CMD curl -k https://localhost:9443/api/health-check/v1.0/health || false