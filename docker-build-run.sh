#!/bin/bash

set -x

_I_TAG='u-xenia'
docker build . -t  ${_I_TAG}

BASEPATH=$(cd `dirname $0`; pwd)

docker run --rm -it -v ${BASEPATH}:/usr/local/iganari \
                    -w /usr/local/iganari \
                    --name ${_I_TAG} \
                    ${_I_TAG} \
                    /bin/bash
