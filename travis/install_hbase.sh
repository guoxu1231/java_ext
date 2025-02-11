#! /bin/bash

mkdir $HOME/download -p
if [ ! -f $HOME/download/hbase-1.2.4-bin.tar.gz ]; then sudo wget -O $HOME/download/hbase-1.2.4-bin.tar.gz https://archive.apache.org/dist/hbase/1.2.4/hbase-1.2.4-bin.tar.gz; fi
sudo mv $HOME/download/hbase-1.2.4-bin.tar.gz hbase-1.2.4-bin.tar.gz && tar xzf hbase-1.2.4-bin.tar.gz
sudo rm -f hbase-1.2.4/conf/hbase-site.xml && sudo mv travis/config/hbase/hbase-site.xml hbase-1.2.4/conf
sudo hbase-1.2.4/bin/start-hbase.sh