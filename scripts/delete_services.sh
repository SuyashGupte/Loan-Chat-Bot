servicename="cp-cos"
ibmcloud resource service-instance-delete $servicename -f

servicename="cp-wstudio"
ibmcloud resource service-instance-delete $servicename -f


servicename="cp-wmachinelearning"
ibmcloud resource service-instance-delete $servicename -f

servicename="cp-wassistant"
ibmcloud resource service-key-delete Auto-generated%20service%20credentials -f
ibmcloud resource service-instance-delete $servicename -f
