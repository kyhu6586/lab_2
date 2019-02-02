#!/bin/bash
# Authors : Kylie Hunter
# Date: 1/30/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Type a regular expression"
read regExp
echo "Type a file name"
read fileName
grep $regExp $fileName
#Now some Hard Coding-- First count number of phone numbers
#All on separate lines and in format xxx-xxx-xxxx

grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' regex_practice.txt

#Now count num emails
#Not checking for proper format-- only an @ symbol

grep -c '[@]' regex_practice.txt

#List all phone numbers beginning with 303 and put in a file
# phone_results.txt
echo "List of phone numbers beginning with 303:"
grep '^303-' regex_practice.txt
grep '^303-' regex_practice.txt > phone_results.txt

#List all emails that end with geocities.com and put in file
#email_results.txt
echo "List of emails from geocities.com: "
grep '@geocities.com$' regex_practice.txt
grep '@geocities.com$' regex_practice.txt > email_results.txt

#List all items of file that match a command line regex and put in file
#command_results.txt
echo "List of lines in regex that match command line argument: "
grep $1 regex_practice.txt
grep $1 regex_practice.txt > command_results.txt


