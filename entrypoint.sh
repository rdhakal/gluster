#!/bin/sh
cp /mnt/crt/* /etc/ssl/
RESULT=$?
if [ $RESULT -eq 0 ]; then
  echo "gluster crt copied "
else
  echo "failed to copy cert"
  exit 1
fi

touch /var/lib/glusterd/secure-access
RESULT=$?
if [ $RESULT -eq 0 ]; then
  echo "secure-access created "
else
  echo "secure-access failed"
  exit 1
fi
echo "sleep on"
sleep 5