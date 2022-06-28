#!/usr/bin/env bash

tar -xzf assets/music_data.tar.gz --directory assets/
rm assets/music_data.tar.gz
wget -q https://downloads.datastax.com/dsbulk/dsbulk.tar.gz
tar -xzf dsbulk.tar.gz
rm dsbulk.tar.gz
mv dsbulk* dsbulk
#PATH=$PATH:/workspace/music-data/dsbulk/bin
echo 'PATH="$PATH:/workspace/music-data/dsbulk/bin"' >> ~/.bashrc
#bash

echo -n 'Waiting for Cassandra to start...'
timeout 60 bash -c 'until cqlsh -e "describe cluster" >/dev/null 2>&1; do sleep 1; echo -n "."; done'
echo ' Ready!'

