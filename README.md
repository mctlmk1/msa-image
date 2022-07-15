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

### HARBOR
- Harbor 프로젝트생성
```
curl -u {ID}:{PW} -k http://{HARBOR_IP}:30002/api/v2.0/projects -XPOST --data-binary "{\"project_name\": \"{PROJECT_NAME}\", \"public\": false}" -H "Content-Type: application/json" -i
```

- Secret 생성
```
kubectl create secret docker-registry msa-secret --docker-server=http://{HARBOR_IP}:30002 --docker-username={ID} --docker-password={PW} -n {NAMESPACE}
```

### Shell 
- 파일내용 일괄변경
```
find . -name "*.yml" -exec sed -i 's/"원래문자열"/"변경할문자열"/g' {} \;
```
