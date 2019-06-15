#!/usr/bin/env bash

x=/var/www/cgi-bin

yum update -y
yum install -y httpd python3 

systemctl enable httpd && systemctl start httpd

echo "#!/usr/bin/env python3

print ("Content-Type: text/plain\n")

print ("<b>Hello python</b>")


with open('/etc/passwd', 'r') as f:
    data = f.readlines()

    for i in data:
        print (i)" > $x/index.py
