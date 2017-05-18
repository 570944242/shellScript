#!/bin/bash

yum install httpd -y
clear
echo -n "httpd has been install , Start now? [y/n]"
read condition
sleep 1
case  $condition in
	y|yes)
		service httpd start
		PIDNUM=$(pgrep httpd | wc -l)
		if [ $PIDNUM != "" ]
		then
			echo "service httpd is running, Proccess number is $PIDNUM "
		else 
			echo "The web service is not running :("
		fi
		;;
	n|no)
		;;
esac
echo -n "With boot? [y/n]"
read condition
sleep 1
case  $condition in
	y|yes)
		chkconfig httpd on
		echo " set success "
		;;
	n|no)	
		;;
esac
sleep 1 
yum install php -y
clear
echo " php has been install "
sleep 1
yum install mysqld mysql mysql-php -y
clear
echo -n  "mysqld has been install , Start now? [y/n]"
read condition
case $condition in
	y|yes)
		service mysqld start
		PIDNUM=$(pgrep mysqld | wc -l)
		echo "service mysqld is running ,Proccess num is $PIDNUM";
		;;
	n|no)
		;;
		
esac
echo  "please upload HTML file to current path"
cd /var/www/html
echo "<html><head><title>Test</title></head><body><?php echo Success ?></body></html>" > test.php
curl http://localhost/test.php
