#!/bin/bash
# -*- coding: utf-8 -*-
# author:  	maxime déraspe
# email:	maxime@deraspe.net


# take the virtuoso.ini file from /mnt/graphs/
# otherwise takes the default one
if [ -f '/mnt/graphs/virtuoso.ini' ]
then
    virtuoso-t +foreground +configfile virtuoso.ini
else
    virtuoso-t +foreground +configfile /opt/virtuoso-build/bin/virtuoso.ini
fi
