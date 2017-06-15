#!/bin/sh

echo "==========================================="
echo "AtomixHome:"
ls -ls $ATOMIX_HOME
echo ""

echo "==========================================="
echo "AtomixArgs:"
echo "$@"
echo ""

java \
    -jar $ATOMIX_HOME/atomix-server.jar \
    -address $ATOMIX_BOOTSTRAP_HOST:$ATOMIX_BOOTSTRAP_PORT \
    -bootstrap \
    "$@"
