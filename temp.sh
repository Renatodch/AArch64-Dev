#!bin/bash
#Indicador de temperatura para RPI 3B+

TMP=$(cat /sys/class/thermal/thermal_zone0/temp)

VAR=$((TMP/1000))
echo $VAR c

