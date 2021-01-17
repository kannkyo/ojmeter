#!/bin/bash
cd `dirname $0`

source setup.sh

# execute jmeter
echo bash $APP_FILE $@
     bash $APP_FILE $@
