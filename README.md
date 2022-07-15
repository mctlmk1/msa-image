### Podman 설치 방법(Ubuntu18.04)


- Podman 설치
```
$ echo "deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_18.04/ /" | sudo tee /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list
$ curl -L "https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_18.04/Release.key" | sudo apt-key add -

$ sudo apt-get update
$ sudo apt-get -y upgrade
$ sudo apt-get -y install podman
```

- Insecure 설정
```
$ sudo vi /etc/containers/registries.conf
```

```
...
[[registry]]                     //주석해제
...
insecure = true                  //주석 해제 후 true로 변경
location = "3.37.105.130:30002"  // 신규추가
...
```

- Podman 실행
```
$ sudo systemctl enable podman
$ sudo systemctl start podman
```
