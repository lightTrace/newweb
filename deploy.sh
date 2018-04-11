#! /bin/sh

kill -9 $(pgrep webserver)
cd ~/newweb/
git pull git@github.com:lightTrace/newweb.git
cd webserver/
go build
./webserver &
