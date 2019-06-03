#!/usr/bin/env bash

yum update -y
yum install -y httpd python3 

systemctl enable httpd && systemctl start httpd


