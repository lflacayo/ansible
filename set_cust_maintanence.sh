#!/bin/bash
EXPECTED_ARGS=1
E_BADARGS=65

if [ $# -ne $EXPECTED_ARGS ]
    then
    echo "Usage: `You need to run  $0` {plack_version}"
    echo "lak-5_02 |lak-5_00| lak-4_12 | lak-4_10 | lk-4_12 | lk-4_10 | plack-LK-4_08 "
    exit $E_BADARGS
fi

NEWCUST=$1


   sed 's|___CUST___|'"${2}"'|' /root/ansible/templates/lak-6_02_upgrade.tmpl > /root/ansible/files/1maintainance
   sed 's|___CUST___|'"${2}"'|' /root/ansible/templates/lak-6_02_upgrade.tmpl> /root/ansible/files/lak-6_02_upgrade.sh
   /usr/bin/ansible-playbook   maint-playbook.yaml
   /usr/bin/ansible-playbook   upgrade-playbook.yaml
   /usr/bin/ansible-playbook   restart-plack.playbook.yaml
   /usr/bin/ansible-playbook   restart-s-solr.playbook.yaml
   /usr/bin/ansible-playbook   maint-off-playbook.yaml





