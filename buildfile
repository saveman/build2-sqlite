# file      : buildfile
# copyright : not copyrighted - public domain

d = sqlite3/ test/
./: $d doc{README} file{manifest}
include $d
