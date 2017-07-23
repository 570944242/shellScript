#!/bin/bash
#filename: create database 

mysql -u root -pyourpasswowrd <<EOF 2>/root/sh.rec
create database students;
EOF
