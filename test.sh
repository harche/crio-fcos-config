#!/bin/bash

set -xe

/usr/bin/curl --fail --retry 5 --retry-delay 3 --silent --show-error  -o /usr/local/sbin/crio.tar.gz https://storage.googleapis.com/k8s-conform-cri-o/artifacts/crio-v1.18.3.tar.gz 

tar -zxvf /usr/local/sbin/crio.tar.gz -C /usr/local/sbin/

export PATH=$PATH:/usr/local/sbin/crio-v1.18.3/bin

/usr/local/sbin/crio-v1.18.3/bin/crio-static

