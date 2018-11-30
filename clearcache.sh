#!/bin/bash
# Note, we are using "echo 3", but it not recommended in production instead use "echo 1"
sync; echo 3 > /proc/sys/vm/drop_caches
