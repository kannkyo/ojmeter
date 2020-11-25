#!/bin/bash

source setup.sh

LOG_FILE=$TEMP_ROOT/log.jtl
JMX_FILE=$PROJECT_ROOT/jmx/influxdb.jmx
PROPERTIES_FILE=$PROJECT_ROOT/jmeter-cui.properties
DASHBOARD_DIRECTORY=$TEMP_ROOT/dashboard

if [ -e $DASHBOARD_DIRECTORY ]; then
    echo Remove $DASHBOARD_DIRECTORY
    rm -rf $DASHBOARD_DIRECTORY
fi

# execute jmeter
$APP_FILE -n -t $JMX_FILE -l $LOG_FILE -p $PROPERTIES_FILE
$APP_FILE -g $LOG_FILE -o $DASHBOARD_DIRECTORY