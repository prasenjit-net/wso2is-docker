Hi Infra Team,
    We have a task in our hand in this sprint which require your support for new infra creation and setup. Our task in hand is to create a new WSO2IS stack with 4 deployment environment.

For this we will need supports from you as below.

Environment SAT & INT:
    1. Two new VM with configuration similar to "iui-wso2is11.itservices.lan"
    2. One MySQL server with single node similar to WSOIS SAT/INT at "nlus-wso2db21.corp.tele2.com"

Environment UAT:
    1. Two new VM with configuration similar to "nluu-wso2is21.corp.tele2.com"
    2. A load balancer with similar to "sso.uat.tele2.nl" with hostname "sso-reseller.uat.tele2.nl"
    3. A MySQL percona cluster similar to "wso2db.uat.corp.tele2.com"
    4. Fire wall confiration between this, magento, reseller, fez, apigee and middleware
    5. CA signed certificate for above hostname

Environment PROD:
    1. Two new VM with configuration similar to "nlup-wso2is21.corp.tele2.com"
    2. A load balancer with similar to "sso.tele2.nl" with hostname "sso-reseller.tele2.nl"
    3. A MySQL percona cluster similar to "wso2db.corp.tele2.com"
    4. Fire wall confiration between this, magento, reseller, fez, apigee and middleware
    5. CA signed certificate for above hostname

VM Setup:
    1. We need the VM with latest stable version of either ubuntu/debian installed
    2. We need initial previledged access for setting up the application cluster

MySQL Setup:
    1. We need root access for creating and setting up initial DB

We requst you to pickup creation of two VM for SAT and INT in this sprint so that we can work on our story starting from this sprint.

