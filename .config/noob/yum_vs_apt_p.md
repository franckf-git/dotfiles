# Gestion des paquets fedora vs debian

#Fedora                       #Debian                                           #Task

> --------------------------------------------Adding, Removing and Upgrading Packages                                
auto                          apt-get update                                    #Refresh list of available packages
yum install PACKAGE           apt-get install PACKAGE                           #Install a package from a repository
yum install PACKAGE.rpm       dpkg --install PACKAGE.deb                        #Install a package file
rpm -i PACKAGE.rpm                
rpm -e PACKAGE                apt-get remove PACKAGE                            #Remove a package
yum remove PACKAGE            apt-get purge PACKAGE                             #Remove a package with configuration files
yum check-update              apt-get -s upgrade                                #Check for package upgrades
                              apt-get -s dist-upgrade
yum update                    apt-get upgrade                                   #Upgrade packages
rpm -Uvh
yum upgrade                   apt-get dist-upgrade                              #Upgrade the entire system
> -------------------------------------------------------Package Information                                
yum search PACKAGE            apt-cache search PACKAGE                          #Get information about an available package
yum list available            apt-cache dumpavail                               #Show available packages
yum list installed            dpkg --list                                       #List all installed packages
rpm -qa
yum info PACKAGE              apt-cache show PACKAGE                            #Get information about a package
rpm -qi PACKAGE               dpkg --status PACKAGE                             #Get information about an installed package
rpm -ql PACKAGE               dpkg --listfiles PACKAGE                          #List files in an installed package
rpm -qd PACKAGE               -                                                 #List documentation files in an installed package
rpm -qc PACKAGE               dpkg-query --show -f '${Conffiles}\n' PACKAGE     #List configuration files in an installed package
rpm -qR PACKAGE               apt-cache depends                                 #Show the packages a given package depends on
rpm -q --whatrequires [args]  apt-cache rdepends                                #Show other packages that depend on a given package (reverse dependency)

> --------------------------------------------------Package File Information
rpm -qpi PACKAGE.rpm          dpkg --info PACKAGE.deb                           #Get information about a package file
rpm -qpl PACKAGE.rpm          dpkg --contents PACKAGE.deb                       #List files in a package file
rpm -qpd PACKAGE.rpm          -                                                 #List documentation files in a package file
rpm -qpc PACKAGE.rpm          -                                                 #List configuration files in a package file
rpm2cpio FILE.rpm |cpio -vid  dpkg-deb --extract PACKAGE.deb DIRECTORY          #Extract files in a package
rpm -qf FILENAME              dpkg --search FILENAME                            #Find package that installed a file
yum provides FILENAME         apt-file search FILENAME                          #Find package that provides a particular file

> ----------------------------------------------Misc. Packaging System Tools
-                             apt-cache stats                                   #Show stats about the package cache
rpm -Va                       debsums                                           #Verify all installed packages
yum clean packages            apt-get clean                                     #Remove packages from the local cache directory
-                             apt-get autoclean                                 #Remove only obsolete packages from the local cache directory
yum clean headers             apt-file purge                                    #Remove header files from the local cache directory

> --------------------------------------General Packaging System Information
*.rpm                         *.deb                                             #Package file extension
/etc/yum.conf                 /etc/apt/sources.list                             #Repository location configuration
alien --to-rpm PCK.deb        #conversion

> in bashrc
case $(lsb_release -i | awk '{ print $3 }') in
Ubuntu|Debian)
alias upgrade='sudo apt update && sudo apt -V upgrade && sudo apt-get autoremove -y && sudo apt-get clean'
;;
CentOS|Fedora)
alias upgrade='sudo dnf check-update ; sudo dnf upgrade ; sudo dnf clean packages -y'
;;
esac
