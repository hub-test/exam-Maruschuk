#!/usr/bin/bash
echo "*********************************** start cleaning work space **************"
rm -Rf /Jenkins/*
rm -Rf /Jenkins/.git
rm -Rf /Jenkins2/*
rm -Rf /Jenkins2/.git
rm -Rf /Jenkins3/*
rm -Rf /Jenkins3/.git
rm -Rf /Jenkins4/*
rm -Rf /Jenkins4/.git
echo "***********************************  cleaning work space is  completed  **************"


echo "*********************************** start cloning frog Gtihub **************"
git clone https://gitlab.com/staskuznetsov/site.git -b feature /Jenkins
git clone https://github.com/dihepp/exam-abramov.git /Jenkins2
git clone https://github.com/dihepp/exam-abramov.git /Jenkins4
git clone https://gitlab.com/staskuznetsov/site.git -b dev /Jenkins3
echo "*********************************** cloning frog Gtihub ended **************"

echo "*********************************** start deploying  web site **************"
ansible-playbook /Jenkins2/web.yml -u nick --private-key  /var/lib/jenkins/key/id_rsa 
ansible-playbook /Jenkins4/web1.yml -u nick --private-key  /var/lib/jenkins/key/id_rsa 
echo "***********************************  deploying  
