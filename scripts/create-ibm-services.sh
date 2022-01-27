servicename="cp-cos"
service="cloud-object-storage"
region="global"
ibmcloud resource service-instance-create $servicename $service lite $region
#sed -i 's,YOUR_CLOUD_ACTION_URL,'$url',g' Dialog-Skill.json

servicename="cp-wmachinelearning"
service="pm-20"
region="us-south"
ibmcloud resource service-instance-create $servicename $service lite $region
#sed -i 's,YOUR_CLOUD_ACTION_URL,'$url',g' Dialog-Skill.json

servicename="cp-wassistant"
service="conversation"
region="us-south"
ibmcloud resource service-instance-create $servicename $service free $region