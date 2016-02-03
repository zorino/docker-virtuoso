# Docker file for Virtuoso triplestore

## Running

You can attach a volume into /mnt/graphs for persistent storage

```
	docker pull zorino/centos-virtuoso
	docker run -p 9000:9000 -v ./data:/mnt/graphs/ zorino/centos-virtuoso
```

