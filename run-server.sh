#!/bin/sh

docker run -dp 3306:3306 -v /data/mysql:/var/lib/mysql mysql
