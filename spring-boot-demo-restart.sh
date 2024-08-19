#!/bin/sh
sudo cp /home/ec2-user/app/spring-boot-demo.service /usr/lib/systemd/system/spring-boot-demo.service
sudo systemctl restart spring-boot-demo