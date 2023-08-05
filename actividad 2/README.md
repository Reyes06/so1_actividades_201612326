# Actividad 2 Sistemas Operativos 1 - 201612326

El script de Linux que al ejecutarse se le debe de pasar como parámetro el nombre de algún usuario de github. En base a este dato realiza una consulta a la API publica de los servicios de github y genera el siguiente mensaje:

"Hola ${GITHUB_USER}. User ID: ${ID}. Cuenta fue creada el: ${CREATED_AT}."

El mensaje anterior es guardado en el directorio /tmp/{FECHA}/saludos.log listo para poder montarse en un crontab posteriormente

Ejemplo de ejecución de script:
./github_info.sh Reyes06
