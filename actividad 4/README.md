# Levantar servicio 

1. Copiar el archivo actividad4.sh con permisos de ejecucion

	sudo cp ./actividad4.sh /usr/local/bin/actividad4.sh
	sudo chmod 777 /usr/local/bin/actividad4.sh

2. Copiar el archivo actividad4.service

	sudo cp ./actividad4.service /etc/systemd/system/actividad4.service

3. Recargar la configuración de systemd

	sudo systemctl daemon-reload

4. Habilitar el programa como un servicio

	sudo systemctl enable actividad4.service

5. Inicia el servicio

	sudo systemctl start actividad4.service

# Monitorear servicio

1. Verifica el estado del servicio

	sudo systemctl status actividad4

2. Muestra la salida del script y los registros asociado

	sudo journalctl -u actividad4


