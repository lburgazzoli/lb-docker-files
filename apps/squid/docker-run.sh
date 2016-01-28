docker run \
    -ti \
    --rm \
    --name squid \
    -p 3128:3128 \
    lburgazzoli/app-squid \
    /usr/sbin/squid3 -N -d 0
