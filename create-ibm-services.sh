servicename="cp-cos"
service="cloud-object-storage"
region="global"
ibmcloud resource service-instance-create $servicename $service lite $region

servicename="cp-wstudio"
service="data-science-experience"
region="eu-gb"
ibmcloud resource service-instance-create $servicename $service free-v1 $region

servicename="cp-wmachinelearning"
service="pm-20"
region="eu-gb"
ibmcloud resource service-instance-create $servicename $service lite $region

servicename="cp-wassistant"
service="conversation"
region="eu-gb"
ibmcloud resource service-instance-create $servicename $service free $region