![](https://codebuild.ap-northeast-1.amazonaws.com/badges?uuid=eyJlbmNyeXB0ZWREYXRhIjoiTnRwU2dkREdPWlcyYjFvZmhtd2hvU2NCanlQMmpZb2pFMEdCb2dQTFNOYWVJbUFtOWl1NVoxOWwvejFPOGpTZkJ1SWRrZmc3ek11bmN5TnZMZnNZR0lJPSIsIml2UGFyYW1ldGVyU3BlYyI6InkzUkJGMmdqK2RPckdHYm8iLCJtYXRlcmlhbFNldFNlcmlhbCI6MX0%3D&branch=master)
[![Build Status](https://travis-ci.org/pahud/sam-cli-docker.svg?branch=master)](https://travis-ci.org/pahud/sam-cli-docker)
[![GitHub release](https://img.shields.io/github/release/awslabs/aws-sam-cli.svg?style=plastic)](https://github.com/awslabs/aws-sam-cli/releases)
![docker image size](https://shields.beevelop.com/docker/image/image-size/pahud/aws-sam-cli/latest.svg?style=plastic)
![image layers](https://shields.beevelop.com/docker/image/layers/pahud/aws-sam-cli/latest.svg?style=plastic)
![image pulls](https://shields.beevelop.com/docker/pulls/pahud/aws-sam-cli.svg?style=plastic)

# sam-cli-docker
Docker for [AWS SAM CLI](https://github.com/awslabs/aws-sam-cli). You don't need to install anything or resolve any dependency issue in your laptop, just `docker run` it and it just works!

```bash
$ docker run -ti pahud/aws-sam-cli:latest sam --version                              
SAM CLI, version 0.43.0
```

# bundle with AWS CLI and Python 3.8 support

```bash
$ docker run -ti pahud/aws-sam-cli:latest aws --version                                               
aws-cli/1.17.17 Python/3.8.1 Linux/4.9.184-linuxkit botocore/1.14.17
$ docker run -ti pahud/aws-sam-cli:latest python --version                                            
Python 3.8.1
```


# Docker Image Daily Auto Building

The Docker image is [hosted](https://hub.docker.com/r/pahud/aws-sam-cli/) in docker hub as an automated build and will be trigger periodically to make sure it always ships the latest version of `SAM CLI` and `AWS CLI`. Check the latest [build details](https://hub.docker.com/r/pahud/aws-sam-cli/builds/) or all available [image tags](https://hub.docker.com/r/pahud/aws-sam-cli/tags)

The commands below will help you run the latest `SAM CLI` with docker.
```
$ docker pull pahud/aws-sam-cli:latest
$ docker run -ti pahud/aws-sam-cli:latest sam --version 
```

