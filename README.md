# Docker file for Virtuoso triplestore

## Running


You need to attach a volume into /mnt/graphs that contains at least a virtuoso.ini configuration file.


```
docker pull zorino/docker-virtuoso
docker run --name myvirtuoso -p 9000:9000 -v ./data:/mnt/graphs/ zorino/docker-virtuoso
```

To load triples from cmd line, create a **raw_data folder** inside your volume (**/mnt/graphs/raw_data**) and execute the vt-utils CLI.

```
docker exec myvirtuoso vt-utils load 'http://mygraph.org'
```

For other commands :
```
docker exec myvirtuoso vt-utils

vt-utils : virtuoso utilities cmd line

  load [graph]       load graph files from /mnt/graphs/raw_data volume into graph

  fast-load [graph]  load graph files from /mnt/graphs/raw_data volume into graph
                     with indexing disabled, will reindex after the loading

  fct-install        install faceted browser (fct) vad

  fct-index          launch the fct indexing and ranking

  delete [graph]     will delete graph from the triplestore

  help               print this
```
