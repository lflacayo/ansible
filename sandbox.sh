#!/bin/bash
EXPECTED_ARGS=1
E_BADARGS=65

if [ $# -ne $EXPECTED_ARGS ]
    then
    echo "Usage: `You need to run  $0` {cust}"
    echo "waldo | scls | wxccny | svots "
    exit $E_BADARGS
fi


   /usr/bin/ansible-playbook aa.yaml -e CUST=$1
   /usr/bin/ansible-playbook bb.yaml -e CUST=$1
   /usr/bin/ansible-playbook cc.yaml -e CUST=$1
   /usr/bin/ansible-playbook dd.yaml -e CUST=$1
   /usr/bin/ansible-playbook ee.yaml -e CUST=$1
   /usr/bin/ansible-playbook ff.yaml -e CUST=$1
   /usr/bin/ansible-playbook gg.yaml -e CUST=$1





