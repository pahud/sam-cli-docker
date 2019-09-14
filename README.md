![](https://codebuild.us-west-2.amazonaws.com/badges?uuid=eyJlbmNyeXB0ZWREYXRhIjoialZyT0lSMGZEZ3VnR1NvN2ErZGRaTE13WXFYbE9DWHNiVGsxV0tiRFZrM0sxNjRUWkxKZ2JDQzh1d24xV1crRVljWm5lS2duVE5LaHJQYWwvT1pNanFzPSIsIml2UGFyYW1ldGVyU3BlYyI6IlFseWdXNElIQVd4WEFyTUwiLCJtYXRlcmlhbFNldFNlcmlhbCI6MX0%3D&branch=master)
[![Build Status](https://travis-ci.org/pahud/sam-cli-docker.svg?branch=master)](https://travis-ci.org/pahud/sam-cli-docker)
[![GitHub release](https://img.shields.io/github/release/pahud/sam-cli-docker.svg?style=plastic)](https://github.com/pahud/sam-cli-docker/releases)
![docker image size](https://shields.beevelop.com/docker/image/image-size/pahud/aws-sam-cli/latest.svg?style=plastic)
![image layers](https://shields.beevelop.com/docker/image/layers/pahud/aws-sam-cli/latest.svg?style=plastic)
![image pulls](https://shields.beevelop.com/docker/pulls/pahud/aws-sam-cli.svg?style=plastic)

# sam-cli-docker
Docker for [AWS SAM CLI](https://github.com/awslabs/aws-sam-cli). You don't need to install anything or resolve any dependency issue in your laptop, just `docker run` it and it just works!

```bash
$ docker run -ti pahud/aws-sam-cli:latest sam --version                              
SAM CLI, version 0.21.0
```


# Docker Image Autobuilding

The Docker image is [hosted](https://hub.docker.com/r/pahud/aws-sam-cli/) in docker hub as an automated build and will be trigger periodically to make sure it ships with the latest version of AWS SAM CLI. Check the latest [build details](https://hub.docker.com/r/pahud/aws-sam-cli/builds/)

The commands below will help you run the latest `SAM CLI` with docker.
```
$ docker pull pahud/aws-sam-cli:latest
$ docker run -ti pahud/aws-sam-cli:latest sam --version 
```

