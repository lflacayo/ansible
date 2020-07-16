#!/bin/bash
EXPECTED_ARGS=1
E_BADARGS=65

if [ $# -ne $EXPECTED_ARGS ]
    then
    echo " Usage: `You need to run  $0` {CUST_CODE}"
    echo " scls | wxuhartford | alma "
    exit $E_BADARGS
fi


    /usr/bin/ansible-playbook bb.yaml -e CUST=$1
    /usr/bin/ansible-playbook aa.yaml -e CUST=$1
    /usr/bin/ansible-playbook cc.yaml -e CUST=$1
    /usr/bin/ansible-playbook dd.yaml -e CUST=$1

