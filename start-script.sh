#!/bin/bash

killall ollama >& /dev/null
# need to use the full path or the conda version will run very slowly
/hpc/apps/ollama/0.6.8/bin/ollama start >& /dev/null &
pushd . > '/dev/null';
SCRIPT_PATH="${BASH_SOURCE[0]:-$0}";

while [ -h "$SCRIPT_PATH" ];
do
    cd "$( dirname -- "$SCRIPT_PATH"; )";
    SCRIPT_PATH="$( readlink -f -- "$SCRIPT_PATH"; )";
done

cd "$( dirname -- "$SCRIPT_PATH"; )" > '/dev/null';
SCRIPT_PATH="$( pwd; )";
popd  > '/dev/null';
alias omni-engineer="python $SCRIPT_PATH/main.py"

