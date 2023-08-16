#!/bin/bash
# Author: Keith "andMYhacks" Hoodlet
# Note: run this weekly with a cronjob ;)

DOWNLOAD_PATH=/path/to/save/files

wget https://kaeferjaeger.gay/sni-ip-ranges/amazon/ipv4_merged_sni.txt -O $DOWNLOAD_PATH/amazon-ipv4-merged-sni.txt && \
wget https://kaeferjaeger.gay/sni-ip-ranges/digitalocean/ipv4_merged_sni.txt -O $DOWNLOAD_PATH/digitalocean-ipv4-merged-sni.txt && \
wget https://kaeferjaeger.gay/sni-ip-ranges/google/ipv4_merged_sni.txt -O $DOWNLOAD_PATH/google-ipv4-merged-sni.txt && \
wget https://kaeferjaeger.gay/sni-ip-ranges/microsoft/ipv4_merged_sni.txt -O $DOWNLOAD_PATH/azure-ipv4-merged-sni.txt && \
wget https://kaeferjaeger.gay/sni-ip-ranges/oracle/ipv4_merged_sni.txt -O $DOWNLOAD_PATH/oracle-ipv4-merged-sni.txt 
