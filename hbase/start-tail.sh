#!/usr/bin/env bash

export PATH=$PATH:/opt/hbase/bin

HBASE_ROOT_LOGGER=WARN,console HBASE_SECURITY_LOGGER=WARN,console /opt/hbase/bin/start-hbase.sh
tail -f /opt/hbase/logs/*.{log,out}
