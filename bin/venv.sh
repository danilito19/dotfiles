#!/usr/bin/env bash

# start from proj repo where req.file is
echo "creating $1 virtualenv"
virtualenv $1
cd $1
source/bin/activate	
cd ..
pip install -r requirements.txt
