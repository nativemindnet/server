mkdir /root/.ssh
echo "-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAAAMwAAAAtzc2gtZW
QyNTUxOQAAACBMyeMYwHjkyjKV4kGAmIcGBmlwOkGD4+H9b0zOvekNAAAAAIjG/YwXxv2M
FwAAAAtzc2gtZWQyNTUxOQAAACBMyeMYwHjkyjKV4kGAmIcGBmlwOkGD4+H9b0zOvekNAA
AAAEBPLO8wtoMXrdiBdiZy2XDMoUhXOlyku5CSbZwjL2nuJkzJ4xjAeOTKMpXiQYCYhwYG
aXA6QYPj4f1vTM696Q0AAAAAAWMBAgME
-----END OPENSSH PRIVATE KEY-----
" > /root/.ssh/id_ed25519

chmod 0600 /root/.ssh/id_ed25519
cd /opt

git config --global user.email anton_dodonov@gmail.com
git config --global user.name anton_dodonov

git clone git@gitlab.com:superplot/plot.worker.git

