#!/bin/bash
echo "=== Desplegando aplicación ==="
pm2 stop all
git pull origin main
npm install
pm2 start app.js --name NodeSimpleApp
echo "Despliegue completado con éxito"
