#!/usr/bin/env bash
set -e

# TODO: check if git is clean
now=$(date +'%d-%m-%Y')
python scripts/process.py fetch ${now}
python scripts/process.py crunch

#git add data/ website/data/
#git commit -m "Update ${now}"