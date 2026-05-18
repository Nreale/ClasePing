@echo off

:INICIO
echo =========================================
echo 1. Verificación de Bucle Local
echo 2. Obtener IP de la placa
echo 3. Prueba de Conectividad Estándar
echo 4. Monitoreo Continuo
echo 5. Definir Cantidad de Paquetes
echo 6. Prueba de Carga
echo 7. Resolución de Nombres
echo 8. IPconfig
echo 9. Nslookup
echo 10. Tracert
echo 11. Salir
echo =========================================

set /p opcion=Elige una opcion (1-11):

if %opcion%==1 goto MostrarPing
if %opcion%==2 goto ObtenerIP
if %opcion%==3 goto Dominio
if %opcion%==4 goto Infinito
if %opcion%==5 goto Cantidad
if %opcion%==6 goto opcion6
if %opcion%==7 goto opcion7
if %opcion%==8 goto 1Ipconfig
if %opcion%==9 goto 1nslookup
if %opcion%==10 goto 1tracert
if %opcion%==11 goto Salir

:MostrarPing
ping 127.0.0.1
pause
goto INICIO

:ObtenerIP
echo Donde dice Direccion IPv4
IPconfig
pause
goto INICIO

:Dominio
set /p Dominio=Ingrese un Dominio o IP:
ping %Dominio%
pause
goto INICIO

:Infinito
set /p Dominio=Ingrese un Dominio o IP:
ping %Dominio% -t
pause
goto INICIO

:Cantidad
set /p Dominio=Ingrese un Dominio o IP:
ping %Dominio% -n 10
pause
goto INICIO

:opcion6
set /p Dominio=Ingrese un Dominio o IP:
ping %Dominio% -l 1000
pause
goto INICIO

:opcion7
set /p Dominio=Ingrese una IP:
ping %Dominio% -a
pause
goto INICIO

:1Ipconfig
IPconfig
pause
goto INICIO

:1nslookup
set /p Dominio=Ingrese una IP:
Nslookup %Dominio%
pause
goto INICIO

:1tracert
set /p Dominio=Ingrese una IP:
Tracert %Dominio%
pause
goto INICIO

:Salir
pause
exit




