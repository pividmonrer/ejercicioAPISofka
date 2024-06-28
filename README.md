# ejercicioAPISofka
Considere como SUT la API https://reqres.in/api-docs/. el cual es un servicio de gestión de usuarios

REPORTE DE CONCLUSIONES DE PRUEBAS DE API
Resumen
En esta sesión de pruebas, utilizamos Karate para realizar pruebas automatizadas en la API de 
gestión de usuarios proporcionada por https://reqres.in/api-docs/. Las pruebas se centraron en 
las siguientes funcionalidades:
- Consultar un usuario creado por ID
- Actualizar los datos de un usuario y verificar la correcta actualización
- Eliminar un usuario del sistema
- Consultar la lista completa de usuarios y verificar que el usuario eliminado no se encuentra en 
el sistema
RESULTADOS
Consultar un Usuario por ID
• Estado: Exitoso
• Tiempo Promedio de Respuesta: 200 ms
• Conclusión: La API respondió correctamente con los detalles del usuario solicitado.
Actualizar los Datos de un Usuario
• Estado: Exitoso
• Tiempo Promedio de Respuesta: 250 ms
• Conclusión: La API permitió actualizar los datos del usuario y la verificación posterior 
confirmó que los datos se actualizaron correctamente.
Eliminar un Usuario
• Estado: Exitoso
• Tiempo Promedio de Respuesta: 180 ms
• Conclusión: La API respondió correctamente a la solicitud de eliminación del usuario.
Verificar la Eliminación del Usuario
• Estado: FALLIDO
• Tiempo Promedio de Respuesta: 220 ms
• Conclusión: La API respondió con un código 200 en lugar de un código 404 al verificar la 
eliminación del usuario. Esto indica que la funcionalidad de eliminación no se comportó 
como se esperaba. Esto se puede explicar por una falta de persistencia en los datos de la 
API de ejemplo.
Conclusiones Generales
Las pruebas revelaron que, aunque la mayoría de las funcionalidades de la API funcionan 
correctamente, hay un problema con la eliminación de usuarios. Se recomienda investigar este 
problema y realizar correcciones en la API para asegurar que los usuarios eliminados no se 
puedan consultar posteriormente.
Recomendaciones
- Revisar y corregir la funcionalidad de eliminación de usuarios en la API.
- Implementar más pruebas para cubrir otros casos de uso y asegurarse de que no 
haya otros problemas similares.
- Continuar utilizando Karate para mantener una suite de pruebas automatizadas y 
asegurar la calidad de la API.
ARCHIVOS DE REPORTES - RUTAS
• Reporte HTML: /karate-reports/karate-summary.html
• Reporte JSON: /karate-reports/karate-summary-json.txt
• Reporte CSV: /karate-reports/karate-summary.csV
