adduser student --no-create-home --disabled-password --gecos ""
chmod -R o= *
chown -R student source
ls -lr .