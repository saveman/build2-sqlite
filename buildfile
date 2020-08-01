# file      : buildfile
# copyright : not copyrighted - public domain

# Glue buildfile that "pulls" all the packages.

import pkgs = {*/ -upstream/}
./: $pkgs
