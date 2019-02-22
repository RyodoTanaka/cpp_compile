#!/bin/bash

# This Script's Path
SCRIPT_PATH=$( dirname ${BASH_SOURCE:-$0} )

# ENV PATH
export ORG_APPS_DIR=${SCRIPT_PATH}
export ORG_APPS_EXE_FILES=$(echo `ls ${SCRIPT_PATH}/bin`)

function _func_complete_run()
{
    local cur=${COMP_WORDS[COMP_CWORD]}
    if [ "$COMP_CWORD" -eq 1 ]; then
        COMPREPLY=( $(compgen -W "$ORG_APPS_EXE_FILES" -- $cur) )
fi
}

function func_run()
{
    core=$(find ${SCRIPT_PATH}/bin -name $1)
    option=$(echo $@ | sed -e "s/$1//g")
    command=$core$option
    $command
}

alias run=func_run
complete -o default -F _func_complete_run run
