#!/bin/bash
set -e

export LD_LIBRARY_PATH=.:`cat /etc/ld.so.conf.d/* | grep -v -E "#" | tr "\\n" ":" | sed -e "s/:$//g"`
./autogen.sh
<<<<<<< HEAD
./configure ${@}
=======
./configure CPPFLAGS="-DBOOST_SPIRIT_THREADSAFE -DBOOST_NO_CXX11_SCOPED_ENUMS" ${@}
>>>>>>> baldr/master
make test -j$(nproc)
sudo make install
