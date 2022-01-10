#!/bin/bash

curl -s -X GET http://10.20.90.50/v1/nodes/rancher50-worker1 | json_pp
