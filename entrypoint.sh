#!/bin/bash
set -e

# Source .bashrc
if [ -f /root/.bashrc ]; then
  source /root/.bashrc
fi

# Execute an interactive bash shell
exec bash -i

exec ${ARGS[@]}