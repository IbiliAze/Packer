#!/bin/bash

docker run -dt -p 80:5000 --entrypoint /usr/local/bin/node  la/express:0.1.0 /var/code/master/src/app.js
