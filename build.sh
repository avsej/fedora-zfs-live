#!/usr/bin/env bash
sudo livecd-creator \
     --verbose \
     --config=zfs.ks \
     --fslabel=zfslive \
     --title=zfslive \
     --product=zfslive \
     --cache=live-cache
