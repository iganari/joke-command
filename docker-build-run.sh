#!/bin/bash

set -x

_I_TAG='u-xenia'
docker build . -t  ${_I_TAG}
sh ./docker-run.sh ${_I_TAG}
#!/bin/bash

set -x

BASEPATH=$(cd `dirname $0`; pwd)

docker run --rm -it -v ${BASEPATH}:/usr/local/iganari \
                    -w /usr/local/iganari \
                    --name ${1} \
                    ${1} \
/bin/bash
