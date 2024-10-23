# Server_Estatus

# Service and Disk Monitor with Telegram Alerts

Este proyecto es un script en Bash que monitorea el estado de un servicio en Linux y el uso del espacio en disco. Envía notificaciones a un usuario o grupo de Telegram usando la API de Telegram. Es un proyecto open source simple y útil que puedes modificar fácilmente según tus necesidades.

## Requisitos

1. Tener instalado `curl`.
2. Tener un bot de Telegram. Si no tienes uno, puedes crear uno con [BotFather](https://core.telegram.org/bots#botfather).

## Instalación

1. Clona este repositorio:

   ```bash
   git clone https://github.com/tu_usuario/service-monitor-telegram.git
   cd service-monitor-telegram
2. Crear un archivo `.env` para almacenar de forma segura las credenciales (Token y Chat ID).
3. hacer el daemon.sh un ejecutable mediante "chmod +x daemon.sh"
4. Para ejecutyar con bash (bash daemon.sh)

