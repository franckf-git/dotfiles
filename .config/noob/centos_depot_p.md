# centos ajout de depots

> must have

yum -y install deltarpm
yum-config-manager --enable extras

> must have

yum install epel-release

> multimedia

yum install --nogpgcheck https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm
yum install --nogpgcheck https://download1.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-7.noarch.rpm

> workstation

yum install https://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm

> hardware drivers

yum install http://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm

yum check-update
yum -y update
