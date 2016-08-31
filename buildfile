# file      : buildfile
# copyright : not copyrighted - public domain

d = sqlite3/ test/
./: $d doc{INSTALL README} file{manifest}
include $d


# Don't install tests or the INSTALL file.
#
dir{test/}: install = false
doc{INSTALL}@./: install = false
