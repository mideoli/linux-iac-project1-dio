#!bin/bash
#
#IaC Project Developed @dio.me for AWS BootCamp
#
#

echo "Creating new directories..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "creating user groups.."
groupadd grp_adm
groupadd grp_sales
groupadd grp_sec

echo "Creating user..."
#The -m parameter creates the user directory at /home
#The -s parameter followed by /bin/bash specify the bash for the user
#The -p parameter specifies encrypted password for the user
#The -G parameter add the user to a group
#For more info regarding the parameters "man useradd"
useradd adm_user1 -m -s /bin/bash -p $(openssl passwd -crypt Paswword123) -G grp_adm
useradd adm_user2 -m -s /bin/bash -p $(openssl passwd -crypt Password123) -G grp_adm
useradd adm_user3 -m -s /bin/bash -p $(openssl passwd -crypt Password123) -G grp_adm

useradd sales_user1 -m -s /bin/bash -p $(openssl passwd -crypt salespasswd) -G grp_sales
useradd sales_user2 -m -s /bin/bash -p $(openssl passwd -crypt salespasswd) -G grp_sales
useradd sales_user3 -m -s /bin/bash -p $(openssl passwd -crypt salespasswd) -G grp_sales

useradd sec_user1 -m -s /bin/bash -p $(openssl passwd -crypt secpasswd) -G grp_sec
useradd sec_user2 -m -s /bin/bash -p $(openssl passwd -crypt secpasswd) -G grp_sec
useradd sec_user3 -m -s /bin/bash -p $(openssl passwd -crypt secpasswd) -G grp_sec

echo "Specifying directory permissions.."
chown root:grp_adm /adm
chown root:grp_sales /sales
chown root:grp_sec /sec

chmod 770 /adm
chmod 770 /sales
chmod 770 /sec
chmod 777 /publico
