FROM wso2/wso2is:5.8.0

# Add mysql driver jar
COPY --chown=wso2carbon:wso2 ./wso2is/mysql-connector-java-8.0.18.jar ${WSO2_SERVER_HOME}/repository/components/lib/

HEALTHCHECK --interval=30s --retries=3 --start-period=1m30s --timeout=5s CMD curl -k https://localhost:9443/api/health-check/v1.0/health || false