#!/bin/bash
#
# Simple command script to start up the grip server to render an HTML version
# of a Markdown document via a browser. 
# This script simply starts the pip installed grip server running in a python
# virtual environment.
# It will pass on all command line args to the grip server instance.
# Try -h for options


REALDIR=$(readlink -m "$0")
MYDIR=$(dirname "$REALDIR")

cd "$MYDIR" || exit 1

# We expect the virtual environment to be in `venv` - run grip from there
venv/bin/grip $*
