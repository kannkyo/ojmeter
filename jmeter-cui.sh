#!/bin/bash
cd `dirname $0`

source setup.sh

LOG_FILE=$TEMP_ROOT/log.jtl
PROPERTIES_FILE=$PROJECT_ROOT/jmeter-cui.properties
DASHBOARD_DIRECTORY=$TEMP_ROOT/dashboard

if [ -e $DASHBOARD_DIRECTORY ]; then
    echo Remove $DASHBOARD_DIRECTORY
    rm -rf $DASHBOARD_DIRECTORY
fi

if [ -e $LOG_FILE ]; then
    echo Remove $LOG_FILE
    rm -f $LOG_FILE
fi

# execute jmeter
set -x
$APP_FILE -n -l $LOG_FILE -p $PROPERTIES_FILE $@
$APP_FILE -g $LOG_FILE -o $DASHBOARD_DIRECTORY
set +x
