#!/bin/bash
#
SER_HOST=db
SER_PORT=3306
echo "try to ping ${SER_HOST}: ${SER_PORT}";
while ! nc -z "${SER_HOST}" "${SER_PORT}"; do
  echo "try to ping ${SER_HOST}: ${SER_PORT} fail";
  sleep 3;
done

SER_HOST=redis
SER_PORT=6379
echo "try to ping ${SER_HOST}: ${SER_PORT}";
while ! nc -z "${SER_HOST}" "${SER_PORT}"; do
  echo "try to ping ${SER_HOST}: ${SER_PORT} fail";
  sleep 3;
done

./fish-game