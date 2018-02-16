```sh
docker run -p 8080:8080 \
    -v $(pwd)/harbor-jocker/jenkins-data:/var/jenkins_home  \
    -v /var/run/docker.sock:/var/run/docker.sock \
    --name jenkins \
    kmade/harbor-jocker
```
