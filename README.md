## Log into stack container
```
    sudo docker exec -it $(sudo docker ps -q -f name=wso2is_wso2is) bash
```

## List all stack processes

```
    sudo docker stack ps wso2is
```

## Deploy stack

```
sudo docker stack deploy -c ./docker-compose.yml wso2is
```

## Delete Stack

```
sudo docker stack rm wso2is
```