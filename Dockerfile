FROM wso2/wso2is:5.8.0

# ADD common configuration files at proper position
COPY --chown=wso2carbon:wso2 ./wso2is/carbon.xml ${WSO2_SERVER_HOME}/repository/conf/
COPY --chown=wso2carbon:wso2 ./wso2is/email-admin-config.xml ${WSO2_SERVER_HOME}/repository/conf/email/
COPY --chown=wso2carbon:wso2 ./wso2is/identity.xml ${WSO2_SERVER_HOME}/repository/conf/identity/
COPY --chown=wso2carbon:wso2 ./wso2is/master-datasources.xml ${WSO2_SERVER_HOME}/repository/conf/datasources/
COPY --chown=wso2carbon:wso2 ./wso2is/bps-datasources.xml ${WSO2_SERVER_HOME}/repository/conf/datasources/
COPY --chown=wso2carbon:wso2 ./wso2is/metrics-datasources.xml ${WSO2_SERVER_HOME}/repository/conf/datasources/
COPY --chown=wso2carbon:wso2 ./wso2is/user-mgt.xml ${WSO2_SERVER_HOME}/repository/conf/
COPY --chown=wso2carbon:wso2 ./wso2is/registry.xml ${WSO2_SERVER_HOME}/repository/conf/
COPY --chown=wso2carbon:wso2 ./wso2is/embedded-ldap.xml ${WSO2_SERVER_HOME}/repository/conf/identity/
COPY --chown=wso2carbon:wso2 ./wso2is/catalina-server.xml ${WSO2_SERVER_HOME}/repository/conf/tomcat/
COPY --chown=wso2carbon:wso2 ./wso2is/health-check-config.xml ${WSO2_SERVER_HOME}/repository/conf/

COPY --chown=wso2carbon:wso2 ./wso2is/mysql-connector-java-8.0.18.jar ${WSO2_SERVER_HOME}/repository/components/lib/

HEALTHCHECK --interval=30s --retries=3 --start-period=1m30s --timeout=5s CMD curl -k https://localhost:9443/api/health-check/v1.0/health || false