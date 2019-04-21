# benchmark

wget http://test-debit.free.fr/1024.rnd   #tester le debit descendant

iperf                                     #test reseau
iperf -s -i 1                             #serveur port 5001
iperf -c IPSERVEUR -i 1                   #client

pi=$(echo "scale=10; 4*a(1)" | bc -l)     #calcul de pi pour test cpu
dd status=progress bs=16k count=102400 oflag=direct if=/dev/zero of=test_data  #ecritur
cat /dev/zero /var/bigfile
dd bs=16K count=102400 iflag=direct if=test_data of=/dev/null                  #lecture
pv /FILE.iso | dd of=/dev/sdX             #affiche la progression
bar /FILE.iso | dd of=/dev/sdX            #affiche la progression
cat /dev/sda > /dev/null
cat /dev/zero > /dev/null                 #cpu charge
stress -c 4 -t 60s
dd if=/dev/zero of=/dev/null
md5sum /dev/urandom                       #cpu
/usr/bin/bzip2 -9c /dev/zero > /dev/null
time $(i=0; while (( i < 9999999 )); do (( i ++ )); done)        #pour comparaison
stress -c 4 -m 2 -d 1 -t 40s              #totale
cat /dev/sda3 | pipebench -q > /dev/null  #hdd
/usr/bin/awk '{print $0 ; }' /dev/zero    #ram
dd if=/dev/zero | ssh IP_AUTRE dd of=/dev/null                   #reseau emission
ssh IP_AUTRE dd if=/dev/zero | dd of=/dev/null                   #reseau reception
cat /proc/sys/kernel/random/entropy_avail #vérifier niveau entropie (inf à 3000)

> outil de benchmarking simple

sudo apt-get install stress
stress -c                     ###>>>nb de coeurs
stress -m                     ###>>>nb de process de 256mo de ram
stress -m 4 --vm-bytes 300M   ###>>>4 process de 300mo
stress -d                     ###>>>nb de process de 1G disque
stress -d 2 --hdd-bytes 512M  ###>>>2 process de 512mo
stress -c 4 -m 2 -d 1 -t 40s
