#!/bin/sh

echo
echo "### lancement de l'experimentation "
echo

python3 server.py > res &
sleep 5
python3 hacker.py
sleep 1

cat res

echo
echo "### fin de l'experimentation "
echo
