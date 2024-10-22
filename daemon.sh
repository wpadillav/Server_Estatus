#!/bin/bash

# Cargar variables del archivo .env
set -a
source .env
set +a

# menu para esocger la opcion de servicio a monitorear
echo "Seleccione el servicio a monitorear"
echo "1. mariadb/mysql 1"
echo "2. apache2 2"
echo "3. ufw 3"
echo "4. Salir"
read -p "Opcion: " opcion

case $opcion in
# capturamos el resultado de la consulta y lo guardamos en una variable para enviar por telegram
1)
    resultado=$(systemctl status mariadb | grep Active | awk '{print $2}')
    ;;
2)
    resultado=$(systemctl status apache2 | grep Active | awk '{print $2}')
    ;;
3)
    resultado=$(systemctl status ufw | grep Active | awk '{print $2}')
    ;;
4)
    exit 0
    ;;
*)
    echo "Opcion no valida"
    exit 1
    ;;
esac

# enviamos el resultado por telegram
curl -s -X POST https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage -d chat_id=$TELEGRAM_CHAT_ID -d text="$resultado"

# fin del script