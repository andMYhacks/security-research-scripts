#!/usr/bin/python3
# ----------------
# Author: Keith "andMYhacks" Hoodlet
#
# Usage: python burp-scope.py TARGETS.txt > outputfile
# then open the file with "Used advanced scope control"
# and click the "Load ..." button

import sys

domains = []

# Read in line delimited URLs from a text file and add them to the domains list
def read_domains_from_file(filename):
    with open(filename, 'r') as file:
        for line in file:
            domains.append(line.strip())

filename = sys.argv[1]
read_domains_from_file(filename)

# Function to add ".*\." to the front and ".*" to the end of each domain
def modify_and_print_1():
    for domain in domains:
        modified_domain = domain.replace(".", "\\.")
        modified_domain = ".*\\." + domain.replace(".", "\\.") + ".*"
        print(modified_domain)

# Function to add "^" to the beginning and ".*" to the end of each domain
def modify_and_print_2():
    for domain in domains:
        modified_domain = "^" + domain.replace(".", "\\.") + ".*"
        print(modified_domain)

# Run the functions
modify_and_print_1()
modify_and_print_2()
