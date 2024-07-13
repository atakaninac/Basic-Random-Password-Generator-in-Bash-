#!/bin/bash

#Basic Form of Random Password Generating Script

password_generator() {
	
	local PASS_LEN=$1
	
	openssl rand -base64 48 | cut -c1-$PASS_LEN
	
	echo
}

read -p "Input the length of the password: " PASS_LEN

echo "Random generated password is:"
password_generator $PASS_LEN
