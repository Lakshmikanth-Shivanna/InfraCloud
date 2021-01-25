Run the container 

```
docker run infracloudio/csvserver
```

```
2021/01/25 07:34:19 error while reading the file "./inputdata": open ./inputdata: no such file or directory
```


solution --> 

we need to pass input data inside container 

```
docker run  -d -v /home/laxmikanth/inputFile:/csvserver/inputdata   infracloudio/csvserver 
```

2. create script to generate csv files with random numbers


3. find port on which server is listening 
```
docker exec -it b0b6134e82b6 /bin/bash 
```
```
netstat -tnlp
```

I found that the port is 9300

4. final command
docker run  -d -v /home/laxmikanth/inputFile:/csvserver/inputdata -p 9300:9300 -e CSVSERVER_BORDER=Orange    infracloudio/csvserver  


