#!/usr/bin/env bash
sudo livecd-creator \
     --verbose \
     --config=zfs.ks \
     --fslabel=zfslive \
     --title=zfslive \
     --cache=live-cache
