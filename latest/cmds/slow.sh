#! /bin/bash

. ${ROOT_PATH}/utils/utils.sh
load_configs

help() {
  echo "Usage:"
  echo "  $ deploy fast"
  echo ""
}

if [ $# -ge 1 ]; then
  help
  exit 1
fi

export RUN_SETUP='true'
export RUN_CONFIGURE='true'
export RUN_DEPLOY='true'
require cmds/run.sh
