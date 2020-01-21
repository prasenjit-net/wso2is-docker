# Reseller Portal new Instance Prototype

This is a prototype implementation for separating the WSO2 IS dependency for new customer acquisition and related order flows to a new instance of WSO IS. It is also assumed that the new instance will be based on WSO2 IS version __5.8.0__.

## Assumptions

Thease are the assumtions considered for prototype

- WSO2 IS version to be used __5.8.0__
- Docker based implementation to be used during development
- Later if and when decided to implement it in actual environment, we might choose to deploy it on docker/VM/Kubernatese as its decided
- We will have a demo with our progress on Friday 24th January 2020

## Tasks to be completed

- Create repository for all required code modification
- Create a postman collection for regression test
- Modify login screen to look same as before
- We will not use UM_USER_CONSUMER table to reduce customization
- We will not do UserStoreManager customization as part of prototype
- Ldap use store required for CSR, will not be included in scope of prototype
- Simplified login will not be in scope of prototype
- Will do limited set data migration for reseller user
- Some of the APIs as listed below will be done as part of prototype

## APIs to be included in prototype version

- new activation link retrieval
- User creation api wrapper

## APIs needed but not included in prototype scope

- validate activation code
- check password and update password with UID

These APIs will be included in actual implementation of the instance.