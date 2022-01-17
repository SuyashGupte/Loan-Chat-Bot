url=`ibmcloud fn action get ml --url` 
url=${url:18}
echo $url
sed -i 's,YOUR_CLOUD_ACTION_URL,'$url',g' Dialog-Skill.json