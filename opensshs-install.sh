#!/bin/bash

# login sebagai root
apt update
apt install openssh-server -y

# perintah untuk menjalankan openssh server
systemctl start ssh

# perintah untuk mengaktifkan openssh server ketika server reboot
systemctl enable ssh

# perintah untuk melihat status openssh server sudah berjalan/belum
systemctl status ssh
