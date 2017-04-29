# file      : buildfile
# copyright : not copyrighted - public domain

./: libsqlite3/ test/ doc{INSTALL README} file{manifest}

# Don't install tests or the INSTALL file.
#
dir{test/}: install = false
doc{INSTALL}@./: install = false
