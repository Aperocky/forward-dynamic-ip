# Forward Dynamic IP

A server-client structure to allow monitoring of IP addresses from dynamic sources such as home. 

Created to address port forwarding from my dynamic IP home.

## Requirements:

1. Server Side Infrastructure:

    - PHP with NGINX or APACHE.

2. Client Side Configuration:

    - Bash, edit setup.sh to configure LOCAL_NAME and URL, SETUP_CRON=1 will enable periodical reports.  

    - After editing setup.sh, run report.sh (once).

