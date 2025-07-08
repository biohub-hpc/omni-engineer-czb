#!/bin/bash

killall ollama >& /dev/null
ollama start >& /dev/null &
alias omni-engineer="python $PWD/main.py"

