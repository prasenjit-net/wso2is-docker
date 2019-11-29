## Log into stack container
```
docker exec -it $(sudo docker ps -q -f name=wso2is_wso2is) bash
```

## List all stack processes

```
docker stack ps wso2is
```

## Deploy stack

```
docker stack deploy -c ./docker-compose.yml wso2is
```

## Delete Stack

```
docker stack rm wso2is
```

## Buoild image

```
docker build -t identityorg/wso2is58:1.0 .
```