# file      : buildfile
# copyright : not copyrighted - public domain

./: {*/ -build/} doc{INSTALL README version} file{manifest}

# The version file is auto-generated (by the version module) from manifest.
# Include it in distribution and don't remove when cleaning in src (so that
# clean results in a state identical to distributed).
#
doc{version}: file{manifest}
doc{version}: dist  = true
doc{version}: clean = ($src_root != $out_root)

# Don't install tests or the INSTALL file.
#
dir{test/}:      install = false
doc{INSTALL}@./: install = false
