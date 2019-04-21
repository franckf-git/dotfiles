# durcissement et suggestions de securite

sudo apt-get install lynis
sudo lynis update release
sudo lynis --checkall
sudo lynis -c -Q > (sudo lynis audit system)
cat /var/log/lynis-report.dat

sudo nano /etc/lynis/default.prf 

> decommenter

410   config:update_local_directory:/usr/local:
412   config:update_local_version_info:/usr/local/lynis/client-version:
417   config:update_server_protocol:http:
