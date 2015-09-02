#!/bin/bash

trap "/opt/flink/bin/stop-local.sh;exit 0" SIGINT SIGTERM 15 9 10

/opt/flink/bin/start-local.sh
tail -f /opt/flink/log/flink--jobmanager-flink.log
