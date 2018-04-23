#!/bin/bash
set -e

# Define help message
show_help() {
  echo """
  Commands
  sh          : start shell
  start       : start webserver
  """
}

case "$1" in
  start )
    python app.py
  ;;
  sh )
    /bin/sh
  ;;
  *)
    show_help
  ;;
esac
