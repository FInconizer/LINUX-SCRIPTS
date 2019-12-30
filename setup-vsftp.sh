sudo apt-get install vsftpd

#Check if anonymous_enable=NO exists and if it doesn't add it
grep -qxF 'anonymous_enable=NO' /etc/vsftpd.conf || echo 'anonymous_enable=NO' >> /etc/vsftpd.conf

#Check if local_enable=YES exists and if it doesn't add it
grep -qxF 'local_enable=YES' /etc/vsftpd.conf || echo 'local_enable=YES' >> /etc/vsftpd.conf


#Check if chroot_local_user=YES exists and if it doesn't add it
grep -qxF 'chroot_local_user=YES' /etc/vsftpd.conf || echo 'chroot_local_user=YES' >> /etc/vsftpd.conf

#Check if chroot_list_enable=NO exists and if it doesn't add it
grep -qxF 'chroot_list_enable=NO' /etc/vsftpd.conf || echo 'chroot_list_enable=NO' >> /etc/vsftpd.conf

service vsftpd restart

