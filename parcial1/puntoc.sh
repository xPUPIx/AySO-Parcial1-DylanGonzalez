useradd programadores -G grupoprogramadores
useradd tester -G grupotester
useradd analistas -G grupoanalistas
useradd disenadores -G grupodisenadores

mkdir -p /ExamenesUTN/alumno_1 /ExamenesUTN/alumno_2 /ExamenesUTN/alumno_3 /ExamenesUTN/profesores

chown programadores:programadores /ExamenesUTN/alumno_1
chmod 750 /ExamenesUTN/alumno_1

chown tester:tester /ExamenesUTN/alumno_2
chmod 700 /ExamenesUTN/alumno_2

chown analistas:analistas /ExamenesUTN/alumno_3
chmod 770 /ExamenesUTN/alumno_3

chown disenadores:disenadores /ExamenesUTN/profesores
chmod 755 /ExamenesUTN/profesores

for dir in alumno_1 alumno_2 alumno_3 profesores; do
    su -c "whoami > /ExamenesUTN/$dir/validar.txt" $(basename $dir)
done
