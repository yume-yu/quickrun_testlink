# QuickRUN Testlink 1.9.16

# Requirements

* docker & docker-compose

# Getting Started

1. `$ git clone --recursive {this}`
1. `$ patch -u code/third_party/phpmailer/PHPMailerAutoload.php < PHPMailderAutoload.php.patch`
1. `$ patch -u code/lib/functions/tlUser.class.php < tlUser.class.php.patch`
1. `$ docker-compose build`
1. `$ docker-compose up -d`
1. check `docker-compose logs -f`
1. after started mysql, access http://localhost.
1. You see the setup wizard of testlink. When you need any parameters, please check docker-compose.yml.

# My develpment env

macOS 12.4 21F79 arm64 / MacBookPro18,3

## docker
```
❯ docker version
Client:
 Cloud integration: v1.0.29
 Version:           20.10.20
 API version:       1.41
 Go version:        go1.18.7
 Git commit:        9fdeb9c
 Built:             Tue Oct 18 18:20:35 2022
 OS/Arch:           darwin/arm64
 Context:           default
 Experimental:      true

Server: Docker Desktop 4.13.1 (90346)
 Engine:
  Version:          20.10.20
  API version:      1.41 (minimum version 1.12)
  Go version:       go1.18.7
  Git commit:       03df974
  Built:            Tue Oct 18 18:18:16 2022
  OS/Arch:          linux/arm64
  Experimental:     false
 containerd:
  Version:          1.6.8
  GitCommit:        9cd3357b7fd7218e4aec3eae239db1f68a5a6ec6
 runc:
  Version:          1.1.4
  GitCommit:        v1.1.4-0-g5fd4c4d
 docker-init:
  Version:          0.19.0
  GitCommit:        de40ad0
```
## docker-compose
```
❯ docker-compose --version
Docker Compose version v2.12.1
```
# tips
```
mysql -h localhost --port 33060 --protocol tcp -u root
```

