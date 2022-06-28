#!/usr/bin/env bash

tar -xzvf assets/music_data.tar.gz
rm assets/music_data.tar.gz
wget https://downloads.datastax.com/dsbulk/dsbulk.tar.gz
tar -xzvf dsbulk.tar.gz
rm dsbulk.tar.gz
mv dsbulk* dsbulk
export PATH="$PATH:/workspace/music-data/dsbulk/bin"

echo -n 'Waiting for Cassandra to start...'
timeout 60 bash -c 'until cqlsh -e "describe cluster" >/dev/null 2>&1; do sleep 1; echo -n "."; done'
echo ' Ready!'

