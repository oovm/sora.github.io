#!/usr/bin/env bash
java -jar bfg.jar --strip-blobs-bigger-than 100K ..
git reflog expire --expire=now --all && git gc --prune=now --aggressive
git push -f
sleep 10