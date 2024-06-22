```
$ sudo docker build -t s2h .
...
Successfully tagged s2h:latest

$ sudo docker-compose up -d
[+] Running 1/1
 ⠿ Container s2h-s2h-1  Started  

# http request to chrome cast (without args) -> print usage
$ curl -s localhost:8080/usage |head 
Control your Google Chromecast or Google Home Mini from the
command line.

Usage:
  go-chromecast [flags]
  go-chromecast [command]

Available Commands:
  completion  Generate the autocompletion script for the specified shell
  help        Help about any command

# ls command
$ curl -s localhost:8080/ls | head
bin
pkg
src
```

command specification
compose.yml
```
    command: >
        /usage go-chromecast
        /ls ls
        # if you want to run "go-chromecast args1" then register that to uri(like /cmd1)
        /cmd1 go-chromecast args1
```


ref
~~~
https://github.com/msoap/shell2http
https://github.com/vishen/go-chromecast
