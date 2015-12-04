## Package Downloader
This is a docker image to use to download named packages from the ubuntu repository (for 14.04).
It has the google ppa repository/keys in it already.

You should volume mount in a directory from your host machine for it to make any sense, mount to /tmp/packages in the container

> docker run -v <host dir>:/tmp/packages chrislaw/package-download <package 1 name> <package 2 name>

Specify either a single package, or a space separated list.  If you pass nothing it will download the latest stable google-chrome package.
If the file already exists it will not re-download it.


Usage is intended to be part of a cron job.  Place a script in /etc/cron.daily with the contents along the lines of 

>#!/bin/bash
>
>src_dir="/tmp"

>docker run --rm -v ${src_dir}:/tmp/packages chrislaw/package-downloader firefox vlc google-chrome-stable

where src_dir  is the directory on the host machine where you want the images to reside.



