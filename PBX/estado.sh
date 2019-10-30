#!/bin/bash
#titulo         :estado.sh
#descripcion    :Este Script muestra un menú rapido para manejar opciones con las centralitas.
#autor	        :Elias Nieva Prieto
#fecha          :2019-05-27
#version        :0.6
#uso		    :sh estado.sh
#notas          :Install Nano and Emacs para usar el Script
#bash_version   :4.1.5(1)-version
#e-mail         :informatica@ctbell.com
#Empresa        :C.T.Bell s.l.u
#Telefono       :966 812 131
#===3=====l======N=======1=========P=======r========1======@===3=====l======N=======1=========P=======r========1======@
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                           INICIAMOS EL SCRIPT                             #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░

# Variables Genericas cargadas desde el Script "Variables.sh"
VARIABLE=/root/scripts/variables.sh
source $VARIABLE


trap 'printf "\n";partial;exit 1' 2
banner() {
printf "\033[1;34m ░░▒▒▒▓▓▓▓██████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓████████████████████████████████████████████\033[1;33m/etc/profile.d/logoctb.sh\033[1;34m ▓▓▓▓▒▒▒░░ \e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓██████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓█                                        ${Blanco}   $FECHA - $HORA${Azulclaro}       █▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓█   ____        ______        ____              ___       ___        █▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓█  /\  _ \     /\__  _\      /\  _  \          /\_ \     /\_ \       █▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓█  \ \ \/\_\   \/_/\ \/      \ \ \L\ \     __  \//\ \    \//\ \      █▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓█   \ \ \/_/_     \ \ \       \ \  _ <   / __ \  \ \ \     \ \ \     █▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓█    \ \ \L\ \ __  \ \ \  __   \ \ \L\ \/\  __/   \_\ \_    \_\ \_   █▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓█     \ \____//\_\  \ \_\/\_\   \ \____/\ \____\  /\____\   /\____\  █▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓█      \/___/ \/_/   \/_/\/_/    \/___/  \/____/  \/____/   \/____/  █▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓█                                                  Tlf: ${Amarillo}966 812 131\033[1;34m  █▓▓▓▓▒▒▒░░ \e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓██████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓█${Rojoclaro} http://www.ctbell.com\033[1;34m  █████████████████████████████████████ \e[0m\033[0;37m v.$NUMVER\033[1;34m█▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓██████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░\e[0m\n"
}
# ░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                                                        DEFINICION DE VARIABLES PROPIAS                      #
# ░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░

FOLDERWEB="/var/www/html/"
FECHA=`date +%Y-%m-%d`
HORA=`date +%H:%M`
USERID=`id -g`
IP=`hostname -I  | cut -d " " -f1`
IP2=`hostname -I  | cut -d " " -f2`

#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                   TRABAJOS PREVIOS DE COMPROBACION                        #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
nohup ./updatespt.sh
clear #Limpiamos los trabajos previos para que no se muestren en Terminal
reset

#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                   VARIABLES PARA EL MENÚ DE OPCIONES                      #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
OPCION1="VER VARIABLES"
OPCION2="TODAS LIBRES"
OPCION3="TODAS OCUPADAS"
OPCION4="INDIVIDUAL LIBRE"
OPCION5="INDIVIDUAL OCUPADA"
OPCION6="NOMBRAR TODAS"
OPCION7="VER NOMBRES"
OPCION8="BORRAR NOMBRE Ó CAMBIARLOS"
OPCION9="CAMBIAR PROPIETARIO"
OPCION10="GENERA EXTENSIONES"
OPCION11="REINICIAR CENTRALITA"
OPCION12="MÁS OPCIONES"
OPCION13=""
OPCION14=""
OPCION15=""
OPCION16=""
OPCION17=""
OPCION18="██████   SALIR    ██████"
                #   FIN DE VARIABLES PARA EL MENÚ DE OPCIONES  #

#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                       INICIO DEL MENÚ DE OPCIONES                         #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
banner
echo ""
printf "\033[1;34m ░░▒▒▒▓▓▓▓██████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓█████████████ IMPORTANTE LA PRIMERA VEZ Y ANTE LOS FALLOS ████████████▓▓▓▓▒▒▒░░    \e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓██████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓█                                                                    █▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓█ \e[0m 1º SON CORRECTAS DE LAS HABITACIONES?:                           █▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓█     DESDE:${Rojoclaro}$HABSTART                                            █▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓█     HASTA:${Rojoclaro}$LIMIT                                       █▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓█     CABINA:${Rojoclaro}$CABINA                                     █▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓█ 2º${Amarillo} RECUERDA${nc}:Nombrar todas las Extensiones:         █▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓█ \"${Rojoclaro}OP.6 - $OPCION6 ${nc}\" la primera vez               █▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓█                                                                    █▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓██████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░\e[0m\n"
#printf "\033[1;34m ░░▒▒▒▓▓▓▓█ ${Rojo} IMPORTANTE: ${nc} Para Reiniciar el Entorno grafico si hay fallo usar '${Cyan}service vncserver restart${nc}'\n desde la linea de comandos\e[0m\n"
#printf "\033[1;34m ░░▒▒▒▓▓▓▓██████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░\e[0m\n"
#sleep 2
# Comprobamos si existe el Fichero de Checking de la Habitación y el registro en Variables.sh si es así escribimos la información resultante.
 PS3='Por Favor seleccione una de las siguientes opciones:'

echo -e "${Blanco} "
  options=("$OPCION1" "$OPCION2" "$OPCION3" "$OPCION4" "$OPCION5" "$OPCION6" "$OPCION7" "$OPCION8" "$OPCION9" "$OPCION10" "$OPCION11" "$OPCION12" "$OPCION13" "$OPCION14" "$OPCION15" "$OPCION16" "$OPCION17" "$OPCION18")
                      select opt in "${options[@]}"
                        do
                        case $opt in


# INICIO DE OPCIONES  #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                               OPCION 1                                    #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
			"$OPCION1")
    			nano ~/scripts/variables.sh
    			#echo    Espera 4 segundos para continuar
                            #echo --------------------------------------------------
                            #sleep 5
                            clear
                            echo \#\#\#\# SELECCIONA UNA OPCIÓN \#\#\#\#
                            estado
    			break
			;;

#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                                 OPCION 2                                  #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
         "$OPCION2")  #TODAS LIBRES

for i in $(seq $HABSTART $LIMIT);
do
  	#Deficinicion de Variables propias del Archivo.
        NAME=$INDICE\-$ROOM
        ARCHIVO=/opt/CHAR/checking/checkinout$ROOM.php
    if [ -f $ARCHIVO ]
        then
		# Buscar por Texto en "$VARIABLE" para comprobar existencia de la linea
    		if grep -R "HAB$ROOM=" $VARIABLE
    			then

                                # Insertamos los datos en Checkinout%ROOM% para la variable ==> $agi->set_variable("CONTEXTO","hab-ESTADO");
                                echo sed -i "s/\"CONTEXTO\",\"hab-.*/\"CONTEXTO\",\"hab-libre\");/gi" $ARCHIVO
                                sed -i "s/\"CONTEXTO\",\"hab-.*/\"CONTEXTO\",\"hab-libre\");/gi" $ARCHIVO
                                # Sumamos 1 valor a la variable $ROOM para ir a la siguiente.
                               ((ROOM++))
                                echo Siguiente \=\=\> $ROOM .
                                echo ______________________________________
            else
    				# echo Esa Habitacion $ARCHIVO no Existe.
                    ((ROOM++))
                    #echo Siguiente \=\=\> $ROOM
#            echo ______________________________________

        	fi

        else

#            echo NO existe el $ARCHIVO
                    # Sumamos 1 valor a la variable $ROOM para ir a la siguiente.
                    ((ROOM++))
#            echo Siguiente \=\=\> $ROOM.
 #           echo ______________________________________
    fi
done


                        echo    Espera 4 segundos para continuar
                        echo --------------------------------------------------
                        sleep 5
                        clear
                        echo \#\#\#\# SELECCIONA UNA OPCIÓN \#\#\#\#
                        estado
			break
                        ;;

#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                               OPCION 3                                    #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░

        "$OPCION3") #TODAS OCUPADAS

for i in $(seq $HABSTART $LIMIT);
do
  	#Deficinicion de Variables propias del Archivo.
        NAME=$INDICE\-$ROOM
        ARCHIVO=/opt/CHAR/checking/checkinout$ROOM.php
    if [ -f $ARCHIVO ]
        then
		# Buscar por Texto en "$VARIABLE" para comprobar existencia de la linea
    		if grep -R "HAB$ROOM=" $VARIABLE
    			then

                                # Insertamos los datos en Checkinout%ROOM% para la variable ==> $agi->set_variable("CONTEXTO","hab-ESTADO");
                                echo sed -i "s/\"CONTEXTO\",\"hab-.*/\"CONTEXTO\",\"hab-ocupada\");/gi" $ARCHIVO
                                sed -i "s/\"CONTEXTO\",\"hab-.*/\"CONTEXTO\",\"hab-ocupada\");/gi" $ARCHIVO
                                # Sumamos 1 valor a la variable $ROOM para ir a la siguiente.
                               ((ROOM++))
                                echo Siguiente \=\=\> $ROOM.
                                echo ______________________________________

            else
#    				echo Esa Habitacion $ARCHIVO no Existe.
                    ((ROOM++))
 #                   echo Siguiente \=\=\> $ROOM
  #          echo ______________________________________

        	fi

        else

  #          echo NO existe el $ARCHIVO
                    # Sumamos 1 valor a la variable $ROOM para ir a la siguiente.
                    ((ROOM++))
   #         echo Siguiente \=\=\> $ROOM.
   #         echo ______________________________________
    fi
done
                        echo    Espera 4 segundos para continuar
                        echo --------------------------------------------------
                        sleep 5
                        clear
                        echo \#\#\#\# SELECCIONA UNA OPCIÓN \#\#\#\#
                        estado
			break

                        ;;
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                               OPCION 4                                    #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░

        "$OPCION4") #Individual Libre

                        # Pedir la habitación al usuario
                        clear
                        echo ===============================================
                        echo 'Introduzca una Habitación para cambiar a "Libre":'
                        #leer el dato del teclado y guardarlo en la variable de usuario var1
                        echo NºHab:
                        read ROOM
                        echo ===============================================
                            ARCHIVO=/opt/CHAR/checking/checkinout$ROOM.php
                            #echo checkinout$ROOM.php
                            sed -i "s/\"CONTEXTO\",\"hab-.*/\"CONTEXTO\",\"hab-libre\");/gi" $ARCHIVO
                            echo checkinout$ROOM.php Pasa a "Libre"
                        echo    Espera 4 segundos para continuar
                        echo --------------------------------------------------
                        sleep 3
                        clear
                        echo \#\#\#\# SELECCIONA UNA OPCIÓN \#\#\#\#
                        estado


			break

                        ;;

#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                               OPCION 5                                    #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
	"$OPCION5")	#Individual_Ocupada

                        # Pedir la habitación al usuario
                        clear
                        echo ===============================================
                        echo 'Introduzca una Habitación para cambiar a "Ocupada":'
                        #leer el dato del teclado y guardarlo en la variable de usuario var1
                        echo NºHab:
                        read ROOM
                        echo ===============================================
                            ARCHIVO=/opt/CHAR/checking/checkinout$ROOM.php
                            sed -i "s/\"CONTEXTO\",\"hab-.*/\"CONTEXTO\",\"hab-ocupada\");/gi" $ARCHIVO
                            echo checkinout$ROOM.php Pasa a "Ocupada"
                        echo ------------------------------------------------
			 echo    Espera 4 segundos para continuar
                        echo --------------------------------------------------
                        sleep 3
                        clear
                        echo \#\#\#\# SELECCIONA UNA OPCIÓN \#\#\#\#
                        estado
                            break


			;;

#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                               OPCION 6                                    #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░

	"$OPCION6") 	#NOMBRAR TODAS

		# Ejecuta Script para nombrar extensiones
			~/scripts/inicio.sh
                        echo    Espera 4 segundos para continuar
                        echo --------------------------------------------------
                        sleep 5
                        clear
                        estado
			break

			;;
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                               OPCION 7                                    #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░

	"$OPCION7")	#Ver Nombres")
clear
            /root/scripts/nombres_check.sh
printf "${Azulclaro} ░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░\e[0m\n"
echo ''
printf "${Azulclaro} Se ha generado un archivo en ${Rojoclaro} /opt/CHAR/Nombres_chekinout.txt ${Azulclaro}o bien desde Windows en ${Rojoclaro}\\\\192.168.103.175\astchar\Nombres_chekinout.txt \e[0m\n"
echo ''
printf "${Amarillo} Si ${Verdeclaro} para volver al menú de ${Azulclaro}Estados ${Verdeclaro} ó ${Amarillo} NO ${Verdeclaro} para salir al CLI \e[0m\n"
echo ''
printf "${Azulclaro} ░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░\e[0m\n"
read -r -p '"Si" o "NO":  >>' input
            case $input in
                [sS][iIE]|[sS])
                #echo "Si"
                        estado
                        break
                ;;
                [nN][oO]|[nN])
                # echo "No
                                break
                ;;
                *)
                echo "Entrada Invalida "
                exit 1
                ;;
                esac
               ;;

			
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                               OPCION 8                                    #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░

	"$OPCION8") 	#Lista chekings")
clear
read -r -p '"Introduce el Nombre que quieres que aparezca en las extensiones o dejalo en vacio para limpiarlos" >>> ' dolar1
             /root/scripts/borracheck.sh $dolar1
printf "${Azulclaro} ░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░\e[0m\n"
printf "${Amarillo} Si ${Verdeclaro} para volver al menú de ${Azulclaro}Estados ${Verdeclaro} ó ${Amarillo} NO ${Verdeclaro} para salir al CLI \e[0m\n"
printf "${Azulclaro} ░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░\e[0m\n"
read -r -p '"Si" o "NO":  >>' input
            case $input in
                [sS][iIE]|[sS])
                #echo "Si"
                        estado
                        break
                ;;
                [nN][oO]|[nN])
                # echo "No
                                break
                ;;
                *)
                echo "Entrada Invalida "
                exit 1
                ;;
                esac
               ;;
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                               OPCION 9                                    #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░

	"$OPCION9") 	#Cambiar propietario
				chown asterisk:asterisk /opt/CHAR/checking/checkinout*.php
				ls -la /opt/CHAR/checking/checkinout*.php
				echo	Espera 4 segundos para continuar
				echo --------------------------------------------------
				sleep 5
				clear
				echo \#\#\#\# SELECCIONA UNA OPCIÓN \#\#\#\#
	                        estado
        	                break

			;;

#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                               OPCION 10                                   #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
	"$OPCION10")
printf "\033[1;34m ░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓██                                             MENU GENERACION AUTOMATICA DE EXTENSIONES                                              ██▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░\e[0m\n"
        /root/scripts/generabulk.sh
        		break
;;
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                               OPCION 11                                   #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░

	"$OPCION11")	#Reiniciar Pbx"
				reboot -f
			;;


#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                               OPCION 12                                   #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░

	"$OPCION12") 	#AVANZADO
printf "\033[1;34m ░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓██                                                  MENU AVANZADO DE OPCIONES                                                         ██▓▓▓▓▒▒▒░░\e[0m\n"
printf "\033[1;34m ░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░\e[0m\n"
				avanzado
        		break
			;;
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                               OPCION 13                                   #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
	"$OPCION13")
     echo "TODAVIA NO ESTA DISPONIBLE ESTA OPCION"


;;
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                               OPCION 14                                   #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
	"$OPCION14")
     echo "TODAVIA NO ESTA DISPONIBLE ESTA OPCION"


;;
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                               OPCION 15                                   #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
	"$OPCION15")
       echo "TODAVIA NO ESTA DISPONIBLE ESTA OPCION"


;;
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                               OPCION 16                                   #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
	"$OPCION16")
     echo "TODAVIA NO ESTA DISPONIBLE ESTA OPCION"


;;
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                               OPCION 17                                   #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
	"$OPCION17")
      echo "TODAVIA NO ESTA DISPONIBLE ESTA OPCION"

;;
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                               OPCION 18                                   #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
	"$OPCION18") #██████   SALIR    ██████"
                        clear
                             	echo -e "${nc}Ejecute de nuevo \"${Rojo}estado${nc}\" para modificar las opciones de las Habitaciones así como los nombre"
                                break
                         ;;


#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                             OPCION ERRONEA                                #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░


                    *) echo "Seleccion Incorrecta $REPLY";;
                     esac
                        done


#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
#                             FIN DEL SCRIPT                               #
#░░▒▒▒▓▓▓▓████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▓▓▓▓▒▒▒░░
