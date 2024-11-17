#!/bin/bash

# Verifica si se proporcionó un dominio como argumento
if [ -z "$1" ]; then
  echo "Por favor, ingresa un dominio como argumento."
  exit 1
fi

echo "Escaneo nmap: "
sudo nmap -sCV -Pn $1 -oN nmap.txt

echo "Escaneo nikto: "
nikto -h $1 -Tuning 1,2,3,4,5,6,7,8,9,0,a,b,c,d,e,x -output nikto.txt

echo "Escaneo wpscan: "
wpscan --api-token "API" -e vp,t,dbe,u --url 'https://'$1'' -o wpscan.txt #Registrarnos en wpscan para obtener API.
