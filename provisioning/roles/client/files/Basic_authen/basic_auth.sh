#!/bin/bash

URL="http://192.168.20.5/super_secret/index.html"
USERNAME="user2"
PASSWORD="HTTP_is_not_safe"

curl -s -o /dev/null -w "%{http_code}\n" --user "${USERNAME}:${PASSWORD}" "${URL}"
