#!/bin/bash

# Desired package(s) passed as parameters.
# So if no parameters, then set a default

if [ $# == 0 ] ; then
  set -- "google-chrome-stable"
fi

apt-get update
apt-get download $@

