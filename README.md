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
docker stack deploy -c ./docker-stack.yml wso2is
```

## Deploy stack with Traefik

```
docker stack deploy -c ./docker-stack-traefik.yml wso2is
```

## Delete Stack

```
docker stack rm wso2is
```

## Build image

```
docker build -t identityorg/wso2is58:1.0 .
```

or

```
docker-compose --build
```

## Local compose up

```
docker-compose up -d
```

with build

```
docker-compose up -d --build
```