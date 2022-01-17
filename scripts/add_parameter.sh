api=`cat key_file`
api=${api:363:44}
echo $api
ibmcloud fn action update ml --param api_key $api