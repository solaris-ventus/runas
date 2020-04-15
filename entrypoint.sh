#!/bin/sh
if [ $(getent group ${runninggroup}) ]; then
  echo "group exists."
else
  groupadd --gid ${runninggroup} app
fi


if [ $(id -u ${runninguser}) ] ; then
	echo "user exists"
else
	useradd --uid ${runninguser} --gid ${runninggroup} app
fi	

exec gosu ${runninguser}:${runninggroup} sleep 10000000
