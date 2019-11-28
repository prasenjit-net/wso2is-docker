FROM wso2/wso2is:5.8.0

# ADD configuration files at proper position
COPY --chown=wso2carbon:wso2 ./axis2.xml ${WSO2_SERVER_HOME}/repository/conf/axis2/
COPY --chown=wso2carbon:wso2 ./carbon.xml ${WSO2_SERVER_HOME}/repository/conf/
COPY --chown=wso2carbon:wso2 ./email-admin-config.xml ${WSO2_SERVER_HOME}/repository/conf/email/
COPY --chown=wso2carbon:wso2 ./identity.xml ${WSO2_SERVER_HOME}/repository/conf/identity/
COPY --chown=wso2carbon:wso2 ./master-datasources.xml ${WSO2_SERVER_HOME}/repository/conf/datasources/
COPY --chown=wso2carbon:wso2 ./user-mgt.xml ${WSO2_SERVER_HOME}/repository/conf/

