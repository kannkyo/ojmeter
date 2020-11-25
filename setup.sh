#!/bin/bash

# see 
#   official manual - https://jmeter.apache.org/usermanual/get-started.html#running
#   setting for jp - https://qiita.com/ctrlzr/items/3a819e06ab7784d68ff5

export JMETER=apache-jmeter-5.3

# path setting
export PROJECT_ROOT=.
export TEMP_ROOT=$PROJECT_ROOT/.tmp
export APP_ROOT=$PROJECT_ROOT/app
export ZIP_FILE=$TEMP_ROOT/$JMETER.zip
export APP_DIRECTORY=$APP_ROOT/$JMETER
export APP_FILE=$APP_DIRECTORY/bin/jmeter
export SET_ENV_FILE=$APP_DIRECTORY/bin/setenv.sh

if [ ! -e $TEMP_ROOT ]; then
    echo Create $TEMP_ROOT
    mkdir $TEMP_ROOT
fi

if [ ! -e $ZIP_FILE ]; then
    echo Download $ZIP_FILE
    curl https://ftp.kddi-research.jp/infosystems/apache//jmeter/binaries/apache-jmeter-5.3.zip -o $ZIP_FILE
fi

if [ ! -e $APP_DIRECTORY ]; then
    echo Extract $APP_DIRECTORY
    unzip $ZIP_FILE -d $APP_ROOT
fi

# generate setenv.sh
if [ ! -e $SET_ENV_FILE ]; then
    echo Create $SET_ENV_FILE
    cat <<EOF > $SET_ENV_FILE
export JMETER_LANGUAGE="-Duser.language="ja" -Duser.region="JP""
EOF
fi
