# Install dan Setting SSH Server di Debian 9

- Perintah 

  `sudo su`
  
  `git clone https://github.com/ryvf4dh/install-sshserver.git`
  
  `cd install-sshserver`
  
  `bash opensshs-install.sh`
  
- Letak direktori dan file konfigurasi openssh server ada di `/etc/ssh`

- Cara login ke server yaitu dengan openssh client yang terinstal pada komputer desktop yaitu melalui terminal linux (jika linux os atau dengan putty jika menggunakan windows), dengan perintah:
  
  `ssh nama-user-login@ip-address-server`
  
  contoh 
  
  `ssh root@192.168.31.90` kemudian tekan enter
  
- Cara mengganti port default dari openssh server

  Untuk alasan keamanan, sangat disarankan untuk mengganti port openssh server, terlebih jika server yang digunakan mempunyai data yang penting. Port default dari openssh server yaitu berjalan pada port 22. Jika ingin mengganti portnya kita bisa menggantinya dengan nomor port antara 49152-65535. Jikalau dibawah 49152 boleh saja namun mungkin akan bentrok service lain yang sudah berjalan di server (menurut Internet Assigned Numbers Authority - IANA). Untuk lebih jelasnya lihat penjelasan di bawah ini:
  
  `Ports 0-1023 = system or well-known ports.`
  
  `Ports 1024-49151 = user or registered ports.`
   
  `Ports 49152-65535 = dynamic / private ports`
  
  - Cara mengecek port yang sedang aktif, ketik perintah ini `netstat -tulpn`
  - Untuk mengganti port ketik perintah ini `nano /etc/ssh/sshd_config` 
  - lalu hilangkan tanda `#` dan ubah Port 22 ke Port 49273 (misalnya) kemudian simpan file konfigurasinya dengan menekan CTRL+O lalu CTRL+X
  - Kemudian ketik perintah di bawah ini:
    
    `systemctl restart ssh`
    
    `systemctl status ssh`

    `netstat -tulpn | grep ssh`

  - Kemudian untuk login kembali ke server dengan custom port ketik perintah dibawah ini:

    `ssh nama-user-login@ip-address-server -p nomor-port`
    
    contoh 
  
    `ssh root@192.168.31.90 -p 49273` kemudian tekan enter
    
  - Selesai.
