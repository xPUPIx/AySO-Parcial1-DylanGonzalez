grep "MemTotal" /proc/meminfo > Filtro_Basico.txt
dmidecode -t chassis | grep "Manufacturer" >> Filtro_Basico.txt
