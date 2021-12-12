#!/bin/bash

unrar x docs.part01.rar
unrar x tools.part1.rar
mkdir /tmp/mkdocs
mkdir /tmp/mktools
gocryptfs ./docs /tmp/mkdocs
gocryptfs ./tools /tmp/mktools
rsync -av /mnt/i/hacking/ /tmp/mkdocs/hacking/ --exclude kurenaif
rsync -av /mnt/i/src/tools/ /tmp/mktools/
sudo umount /tmp/mkdocs
sudo umount /tmp/mktools
rm *rar
rar a -r -rr10 -v50000k "docs.rar" "docs"
rar a -r -rr10 -v50000k "tools.rar" "tools"
rm -rf docs
rm -rf tools
./git_hist_delete.sh
