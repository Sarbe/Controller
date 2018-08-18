#!/bin/sh

WRK_DIR=/home/sarbe/POS/src

GIT_DIR=Rxdfert
#1.go to working folder
cd $WRK_DIR||exit

if [ -d $WRK_DIR/$GIT_DIR ] 
then
	rm -r -f $GIT_DIR
fi

echo 'Cloning Repository from GIT for first time.'
git clone https://github.com/Sarbe/Rxdfert.git

#3.. go to Rxdfert folder
cd $WRK_DIR/$GIT_DIR||exit

#4. mvn install
mvn clean install

#4 copy jar to src folder
cp target/*.jar $WRK_DIR/POS-Retailer.jar




