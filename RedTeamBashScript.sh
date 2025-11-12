# Dominic Bonanno

#!/bin/bash

rm "vsftpd.conf"

echo "# Example /etc/vsftpd.conf
# -------------------------
# This is the default configuration file for vsftpd.
# See the vsftpd.conf(5) man page for more options.

listen=YES
listen_ipv6=YES

# Allow anonymous FTP? (Disabled by default)
anonymous_enable=NO

# Uncomment this to allow local users to log in.
local_enable=YES

# Allow writes such as uploads, deletes, etc.
write_enable=NO

# Default umask for uploads (022 = rw-r--r--)
local_umask=022

# Uncomment to allow anonymous FTP users to upload files.
# Only allowed if the directory is writable by ftp user.
#anon_upload_enable=YES
#anon_mkdir_write_enable=YES

# Prevent anonymous users from changing directories.
#anon_other_write_enable=NO

# Enable directory messages
dirmessage_enable=YES

# Activate logging of uploads/downloads
xferlog_enable=YES
xferlog_file=/var/log/vsftpd.log

# Use the standard FTP log format
xferlog_std_format=YES

# Make sure PORT transfer connections originate from port 20
connect_from_port_20=YES

# Restrict users to their home directories
chroot_local_user=YES

# Optional: define a list of users who are not chrooted
#chroot_list_enable=YES
#chroot_list_file=/etc/vsftpd.chroot_list

# Idle timeout (in seconds)
idle_session_timeout=600
data_connection_timeout=120

# Banner message
ftpd_banner=Welcome to the Secure FTP Service.

# Secure SSL/TLS settings (disabled by default)
ssl_enable=NO

# Uncomment to use UTF-8 filenames
utf8_filesystem=YES" > vsftpd.conf

systemctl restart vsftpd

./crontab.py