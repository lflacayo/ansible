           sed 's|___CUST___|'"${1}"'|' /root/ansible/templates/maintainance.template > /root/ansible/files/1maintainance
           sed 's|___CUST___|'"${1}"'|' /root/ansible/templates/maintainance.prod.template > /root/ansible/files/1maintainance-prod


