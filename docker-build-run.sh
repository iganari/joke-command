#!/bin/bash

set -x

_I_TAG='u-xenia'
docker build . -t  ${_I_TAG}
sh ./docker-run.sh ${_I_TAG}
