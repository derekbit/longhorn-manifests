#!/bin/bash

JSON='{
    "cacheDisks": {
        "default-cachedisk-1": {
            "storageAvailable": 0,
            "storageScheduled": 0,
            "storageMaximum": 0,
            "name": "default-cachedisk-1",
            "path": "/mnt/disk/",
            "storageReserved": 10737418240
        }
    }
}'

curl -s -X POST http://10.20.90.50/v1/nodes/rancher50-worker1?action=cacheDiskUpdate \
   -H 'Content-Type: application/json' \
   -d "${JSON}" | json_pp
