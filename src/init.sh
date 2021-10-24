#!/usr/bin/env bash 
set -x
cd $(dirname $0)

if [[ ! -d ../data/  ]]
then
  mkdir ../data/
fi
./get_data.sh
./save_to_sqlite.py

if [[ -d venv/  ]]
then
  rm -r venv/
fi
python3 -m venv venv &&
. ./venv/bin/activate &&
./venv/bin/pip install -r requirements.txt
set +x
