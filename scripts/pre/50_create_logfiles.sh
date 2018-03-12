#!/bin/bash

source "${EJABBERD_HOME}/scripts/lib/base_config.sh"                            
source "${EJABBERD_HOME}/scripts/lib/config.sh" 

for LOG in crash.log error.log erlang.log ; do

    if ! [ -f ${LOGDIR}/${LOG} ] ; then
        echo  "Creating ${LOGDIR}/${LOG}"
        touch ${LOGDIR}/${LOG}
    fi
done
