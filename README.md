# Docker file for Virtuoso triplestore

## Running

You have to attach a volume (into /mnt/graphs) that minally contains the config file virtuoso.ini..
and can contains all your data (virtuoso.db, etc..)

```
	docker pull zorino/centos-virtuoso
	docker run -p 9000:9000 -v ./data:/mnt/graphs/ zorino/centos-virtuoso

```


