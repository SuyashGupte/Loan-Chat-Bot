<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
  html,
  div,
  body {
    background-color: #1a1a1a;
    font-family: 'IBM Plex Sans', sans-serif;
    font-size: 18px;
    outline: none;
  }
  body {
    font-family: Helvetica, sans-serif;
  }
  /* The actual timeline (the vertical ruler) */
  .timeline {
    position: relative;
    max-width: 1200px;
    margin: 0 auto;
    margin-left: 50px;
  }
  .content p {
    margin: 0px;
  }
  .content .afterbutton
  {
    padding-top: 16px;
  }
  /* The actual timeline (the vertical ruler) */
  .timeline::after {
    content: '';
    position: absolute;
    width: 1px;
    background-color: white;
    top: 15px;
    bottom: 80px;
    left: 18px;
    margin-left: -2px;
  }
  /* Container around content */
  .container {
    padding: 0px 0px;
    width: 70%;
    align-content: left;
    margin: 0px 0px 0px 0px;
    margin-left: 25px;
    margin-top: 32px;
  }
  /* The circles on the timeline */
  .container::after {
    content: '';
    position: absolute;
    width: 10px;
    height: 10px;
    right: -6px;
    background-color: white;
    border: 0px solid #FF9F55;
    top: 15px;
    border-radius: 50%;
    z-index: 1;
    margin: 0px 0px 0px 0px;
  }
  /* Place the container to the left */
  .left {
    left: 0px;
  }
  /* Place the container to the right */
  .right {
    left: 0px;
  }
  /* Add arrows to the left container (pointing right) */
  .left::before {
    content: " ";
    height: 0;
    top: 22px;
    width: 0;
    z-index: 1;
    right: 30px;
    border: medium solid white;
    border-width: 10px 0 10px 10px;
    border-color: transparent transparent transparent white;
  }
  /* Fix the circle for containers on the right side */
  .right::after {
    left: -13px;
  }
  /* The actual content */
  .content {
    padding: 5px 10px;
    color: white;
    background: transparent;
  }
  .button.is-dark.is-medium {
    font-family: 'IBM Plex Sans', sans-serif;
    background: transparent;
    border-color: white;
    color: #fff;
    border: 1px solid white;
    padding: 10px;
    padding-left: 20px;
    margin-bottom: 13px;
    border-radius: 0px;
    min-width: 180px;
    font-size: 14px;
    text-align: left;
    min-height: 48px;
    margin: 0px;
    justify-content:left;
  }
  .button.is-dark.is-medium:hover {
    font-family: 'IBM Plex Sans', sans-serif;
    background-color: #2a67f5;
    border-color: white;
    color: #fff;
  }
  .footer {
    display: flex;
    background-color: #343A3E;
    margin-top: 20px;
    padding: 0px;
    max-width: 1200px;
  }
  .github-icon {
    min-height: 100%;
    min-width: 100%;
    object-fit: cover;
    object-position: 250% 100px;
    opacity: 15%;
    bottom: 15px;
  }
  .image-content {
    padding: 5px 10px;
    background: transparent;
    color: black;
    position: absolute;
    font-size: 27px;
  }
  .image-div {
    position: relative;
    background-color: white;
    min-width: 50%;
    background-image: linear-gradient(rgba(255,255,255,0.9), rgba(255,255,255,0.9)), url("https://raw.githubusercontent.com/IBM/Developer-Playground/master/didact/images/github.svg");
    background-position: -50% 60px;
    background-repeat: no-repeat;
    padding-top: 20px;
    padding-left: 20px;
  }
  .image-btn {
    position: absolute;
    right: 0;
    bottom: 0%;
    background-color: #0062FF;
    width: 300px;
    padding: 0px;
    padding-bottom: 20px;
  }
  .image-link span 
  {
    float: right;
    font-size: 32px;
    padding-right: 20px;
  }
  .image-btn .image-link:hover
  {   
    text-decoration: none;
    color: white;
    background-color: #0353E9;
  }
  .image-btn  a:hover
  {
    text-decoration: none;
    color: white;
  }
  .image-link {
    color: white;
    display: block;
    padding: 5px 10px 5px 10px;
    line-height: 28px;
    font-size: 16px;
  }
  .header
  {
    background-image: url('https://raw.githubusercontent.com/IBM/Developer-Playground/development/didact/images/anomaly.jpeg');
    width: 100%;
    height: auto;
    min-height: 300px;
    display: inline-block;
    margin-top: 20px;
    margin-bottom: 20px;
    margin-left: 30px;
    margin-right: 30px;
    background-size: contain;
    max-width: 1200px;
  }
  .header .right-content
  {
    float: right;
    width: 45%;
    background-color:#0072C3;
    min-height: 300px;
    padding: 20px;
    padding-top: 2.5%;
    font-size: 14px;
  }
  .header .right-content h4
  {
    background: none;
    color: white;
    padding-left: 25px;
    padding-right: 25px;
  }
  .header .right-content div
  {
    background: none;
    color: white;
    padding-left: 15px;
    padding-right: 25px;
    font-size: 14px;
    margin-bottom: 10px;
  }
  .header .right-content ul
  {
    margin: 0px;
    margin-left: 25px;
    margin-bottom: 10px;
    line-height: 16px;
  }
  .container a
  {
     color: #78A9FF;
    background-color: transparent;
    text-decoration: none;
  }
  .container a:visited
  {
    color: #8C43FC;
    background-color: transparent;
    text-decoration: none;
  }
  .apptitle
  {
    margin-left: 25px;
    margin-top: 20px;
    margin-bottom: 0px;
    font-size: 20px;
    color: white;
  }
  .subheading
  {
    margin-left: 25px;
    margin-top: 0px;
    margin-bottom: 0px;
    font-size: 16px;
    color: grey;
  }
  .no-hover:hover
  {
    background-color: #0062FF !important;
  }
  .section{
    margin-top: 5px;
    margin-bottom:-50px;
  }
}
</style>
</head>
<body>
  <div class="apptitle"> 
    Agro Smart Assistant
  </div>
  <div class="subheading">
    Use Machine Learning in Virtual Assistants to automate crop recommendation.
  </div>
  <div class="header">
      <div class="right-content">
         <div>
          Precision agriculture is in trend nowadays. It helps the farmers to get informed decision about the farming strategy. Precision agriculture is a modern farming technique that uses research data of soil characteristics, soil types, crop yield data collection and suggests the farmers the right crop based on their site-specific parameters. This reduces the wrong choice on a crop and increase in productivity.
        </div>
        <div>
          Now a days businesses also use chatbots to increase productivity and provide a better customer experience. This demo aims to automate the banking experience for customers regarding loan applications using Watson Studio machine learning, Cloud function.
        </div>
     </div>
   </div>
   <div class="section">
    <p style="font-size:20px">Learning Resources</p>
    <div class="content-">
      <a href="https://www.ibm.com/docs/en/cloud-paks/cp-data/4.0?topic=projects-creating-project">Create a new project in Cloud Paks for Data Platform.</a></br>
      <a href="https://www.ibm.com/docs/en/cloud-paks/cp-data/4.0?topic=data-adding-analytics-project">Add data to project in Cloud Paks for Data Platform.</a></br>
      <a href="https://www.ibm.com/docs/en/cloud-paks/cp-data/4.0?topic=functions-deployment-spaces">Create Deployment Spaces.</a></br>
      <a href="https://cloud.ibm.com/docs/assistant?topic=assistant-assistant-add">Creating an Watson Assistant.</a></br>
      <a href="https://cloud.ibm.com/docs/assistant?topic=assistant-skill-add">Adding Skills to your assistant.</a>
    </div>
   </div>
   <div class="section">
      <p style="font-size:20px">Included Components</p>
      <div class="content-">
          <p>This sample application uses the following IBM Services:</p>
          <p><a href="https://cloud.ibm.com/objectstorage">Cloud Object Storage</a>: Object storage organizes data into buckets. A service instance is logical grouping of buckets.</p>
          <p><a href="https://cloud.ibm.com/catalog/services/watson-assistant">Watson Assistant</a>: Watson Assistant lets you build conversational interfaces into any application, device, or channel.</p>
          <p><a href="https://cloud.ibm.com/catalog/services/watson-studio">Watson Studio</a>: Develop sophisticated machine learning models using Notebooks and code-free tools to infuse AI throughout your business.</p>
          <p><a href="https://cloud.ibm.com/catalog/services/machine-learning">Watson Machine Learning</a>: Deploy, manage and integrate machine learning models into your applications and services in as little as one click.</p>
      </div>
   </div>
   <div class="section">
   <p style="font-size:20px">Pre-requisites</p>
    <div class="content-">
    <p>IBM Cloud Account -  Do not have an IBM Cloud Account?<a href="https://cloud.ibm.com/registration"> click here</a> to create one for free.</p>
    </div>
   </div>
    <div class="section">
   <p style="font-size:20px">Instructions</p>
   </div>
   <div class="timeline">
   <div style="margin-top:0;"class="container right">
            <div class="content">
                <p>To begin, we'll need to open a terminal</p>
                <a class="button is-dark is-medium" title="Open Terminal" href="didact://?commandId=terminal-for-nodejs-container:new">Open Terminal</a><br>
            </div>
        </div>
      <div class="container right" style="margin-top:0px;padding-top:0px;">
         <div class="content">
            <p>You will need the application's source code. Click `Get the code` to clone the code to your playground session.</p>
            <a class="button is-dark is-medium" title="Get the Code" href="didact://?commandId=extension.sendToTerminal&text=nodejs%20terminal%7Cclone-repo%7Cnodejs%20terminal|git%20clone%20https://github.com/SuyashGupte/loan-chat-bot.git%20${CHE_PROJECTS_ROOT}/cp4d-smart-virtual-assistant">Get the Code</a>
         </div>
      </div>
      <div class="container right">
        <div class="content">
          <p>Create and Configure IBM Services</p>
          <p>You need to be logged in to your IBM Cloud account in the Developer Playground to create and configure services. Select location as "7. eu-gb".</p>
          <a class="button is-dark is-medium" title="Login to IBM Cloud" href="didact://?commandId=extension.sendToTerminal&text=nodejs%20terminal%7Cibm-login%7Cnodejs%20terminal|ibmcloud%20config%20--check-version=false%20%26%26%20ibmcloud%20login%20-r%20eu-gb%20%26%26%20ibmcloud%20target%20--cf%20%26%26%20ibmcloud%20target%20-g%20Default">Login to IBM Cloud</a>
        </div>
      </div>
      <div class="container right">
        <div class="content">
          <p>Create these services with just a click of button.</p>
          <a class="button is-dark is-medium" title="Create IBM Watson Services" href="didact://?commandId=extension.sendToTerminal&text=nodejs%20terminal%7Ccreate-services%7Cnodejs%20terminal|cd%20${CHE_PROJECTS_ROOT}/cp4d-smart-virtual-assistant%20%26%26%20chmod%20%2Bx%20.%2Fscripts%2Fcreate-ibm-services.sh%20%26%26%20.%2Fscripts%2Fcreate-ibm-services.sh">Create IBM Watson Services</a>
        </div>
      </div>
      <div class="container right">
        <div class="content">
          <p>Go to <a href="https://dataplatform.cloud.ibm.com/">IBM CloudPak for data</a> and login with your IBM id. </p> Once you login follow the below steps to create a new project.
        </div>
      </div>
      <div class="container right">
        <div class="content">
        <details>
         <summary>Create a New Project</summary>
         <p>Step 1 : Download the project zip file.</p>
          <a class="button is-dark is-medium" href="https://github.com/SuyashGupte/Loan-Chat-Bot/raw/main/crop-recommendation.zip">Download</a>
          <p>Step 2 : Click on "Create a Project".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_1.1_new_project_1.png" width = "750" height= "750">
          <p>Step 3 : Click on "Create a project from sample or file".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/project_new_1.png" width = "750" height= "750">
         <p>Step 4 : Upload the zip file that was just downloaded, give your project a name and click on "Create" button.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/project_new_2.png" width = "750" height= "750">
          <p>Step 5 : After the project is created, click on "View new project".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/project_new_3.png" width = "750" height= "750">
        </details>
        </div>
      </div>
      <div class="container right">
        <div class="content">
          <details>
         <summary>Promote Model and Create a Deployment Space</summary>
          <p>Step 1 : Click on the assets tab.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/project_new_4.png" width = "750" height= "750">
          <p>Step 2 : Click on the (⋮) on right hand side of the Model and Click on "Promote" button.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/project_new_5.png" width = "750" height= "750">
          <p>Step 3 : Click on the "Create a new deployment space".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_6.3_deployment_space_3.png" width = "750" height= "750">
          <p>Step 4 : Select your machine learning service instance.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_6.4_deployment_space_4.png" width = "750" height= "750">
          <p>Step 5 : Give your deployment space a name and click on "Create" button.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_6.5_deployment_space_5.png" width = "750" height= "750">
          <p>Step 6 : Check the "Go to the model in the space after promotoing it" checkbox then click on "Promote" button.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/project_new_6.png" width = "750" height= "750">
          </details>
        </div>
      </div>
      <div class="container right">
        <div class="content">
          <details>
         <summary>Deploy Model and Get URL</summary>
          <p>Step 1 : Once the model is successfully promoted, you will see a green notification box, click on “deployment space” in the notification. Alternatively, you can also find your deployment spaces when you click on the hamburger sign on the top left most side on your screen.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_7.1_deploy_1.png" width = "750" height= "750">
          <p>Step 2 : Click on the deploymentspace you created and click on "New deployment" button.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_7.2_deploy_2.png" width = "750" height= "750">
          <p>Step 3 : Select "Online", give your deployment a name and click on "Create" button.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_7.3_deploy_3.png" width = "750" height= "750">
          <p>Step 4 : Click on the deployment you just created.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_8.1_get_link_1.png" width = "750" height= "750">
          <p>Step 5 : Copy the Model endpoint URL.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_8.2_get_link_2.png" width = "750" height= "750">
          <p>Step 6 : Paste the URL in the follwing script file.</p>
          <a class="button is-dark is-medium" href="didact://?commandId=extension.openFile&text=loan%7Capi-key%7C${CHE_PROJECTS_ROOT}/cp4d-smart-virtual-assistant/scripts/add_model_url.sh">Open file</a>
          <p>Step 7 : Run the script to update the code file.</p>
          <a class="button is-dark is-medium" title="Update Model URL" href="didact://?commandId=extension.sendToTerminal&text=nodejs%20terminal%7Ccreate-services%7Cnodejs%20terminal|cd%20${CHE_PROJECTS_ROOT}/cp4d-smart-virtual-assistant%20%26%26%20chmod%20%2Bx%20.%2Fscripts%2Fadd_model_url.sh%20%26%26%20.%2Fscripts%2Fadd_model_url.sh">Update Model URL</a>
          <p>Step 8 : (Optional) To test your model, click on the “Test” tab. You can select a row from the data set and enter the data in the fields. Enter the values from the dataset, and then click on the “ Add to Predict” button at the bottom and then on "Predict".</p>
          </details>
        </div>
      </div>
      <div class="container right">
        <div class="content">
          <details>
         <summary>Configure Cloud Functions</summary>
           <p>Step 1 : Create an Action in cloud functions with code.py function and web action enabled.</p>
           <a class="button is-dark is-medium" title="Create Action" href="didact://?commandId=extension.sendToTerminal&text=nodejs%20terminal%7Ccreate-action%7Cnodejs%20terminal|ibmcloud%20fn%20action%20create%20ml%20code.py%20--kind%20python:3.7%20--web%20true">Create Action</a>
           <p>Step 2: Generate an API Key in your IBM account by clicking this button.</p>
           <a class="button is-dark is-medium" title="Generate API key" href="didact://?commandId=extension.sendToTerminal&text=nodejs%20terminal%7Cgenerate-api-token%7Cnodejs%20terminal|cd%20${CHE_PROJECTS_ROOT}/cp4d-smart-virtual-assistant;ibmcloud%20iam%20api-key-create%20ApiKey-SVA%20-d%20'this is API key for Smart Virtual Assitant'%20--file%20${CHE_PROJECTS_ROOT}/cp4d-smart-virtual-assistant/key_file">Generate API key</a><br> 
           <p>Step 3 : Run the script to add api_key parameter in your Action.</p>
           <a class="button is-dark is-medium" title="Create Parameter" href="didact://?commandId=extension.sendToTerminal&text=nodejs%20terminal%7Ccreate-services%7Cnodejs%20terminal|cd%20${CHE_PROJECTS_ROOT}/cp4d-smart-virtual-assistant%20%26%26%20chmod%20%2Bx%20.%2Fscripts%2Fadd_parameter.sh%20%26%26%20.%2Fscripts%2Fadd_parameter.sh">Add Paramter</a>
           <p>Step 4 : Run the script to update Dialog skill file with the webhook URL that was just created.</p>
           <a class="button is-dark is-medium" title="Update" href="didact://?commandId=extension.sendToTerminal&text=nodejs%20terminal%7Ccreate-services%7Cnodejs%20terminal|cd%20${CHE_PROJECTS_ROOT}/cp4d-smart-virtual-assistant%20%26%26%20chmod%20%2Bx%20.%2Fscripts%2Fupdate_dialog.sh%20%26%26%20.%2Fscripts%2Fupdate_dialog.sh">Update Dialog Skill</a>
          </details>
        </div>
      </div>
      <div class="container right">
        <div class="content">
          <details>
         <summary>Integrate the Machine Learning Model with Watson Assistant</summary>
          <p>Step 1 : Go to <a href="cloud.ibm.com">your IBM Cloud Account</a>. From the "Resources" tab on the left, select "Services and software" and click on your Watson Assistant service.Click on "Launch Watson Assistant" button.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_12.1_launch_wa_1.png" width = "750" height= "750">
          <p>Step 2 : Click on "Create assistant".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_12.2_create_assistant_1.png" width = "750" height= "750">
          <p>Step 3 : Give your assistant a name and click on "Create assistant".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_12.3_create_assistant_2.png" width = "750" height= "750">
          <p>Step 4 : Once your Assistant is created, click on "add an action or dialog skill".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_12.4_add_dialog_1.png" width = "750" height= "750">
          <p>Step 5 : Load the Dialog Skill.</p>
          <a class="button is-dark is-medium" href="didact://?commandId=extension.openFile&text=loan%7Cload-skill%7C${CHE_PROJECTS_ROOT}/cp4d-smart-virtual-assistant/Dialog-Skill.json">Load Skill</a>
          <p>Step 6 : Download the Dialog Skill.</p>
          <a class="button is-dark is-medium"title="Launch the Application" href="didact://?commandId=file.download">Download</a>
          <p>Step 7 : Upload the skill you just downloaded. When you see that the skill file has been uploaded, click on "Upload" Button.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_12.5_create_dialog_2.png" width = "750" height= "750">
          <p>Step 8 : Once the skill is created, click on (⋮) on top right and Click on "Assitant Settings".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/project_new_8.png" width = "750" height= "750">
          <p>Step 11 : Copy the Assitant_ID.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/project_new_9.png" width = "750" height= "750">
          <p>Step 12 : Paste it in env file.</p>
          <a class="button is-dark is-medium" href="didact://?commandId=extension.openFile&text=loan%7Cload-skill%7C${CHE_PROJECTS_ROOT}/cp4d-smart-virtual-assistant/.env">Open file</a>
          </details>
        </div>
      </div>
      <div class="container right">
        <div class="content">
          <details>
         <summary>Configure the application</summary>
           <p>Step 1 : Once the skill is created, click on (⋮) on top right and Click on "Assitant Settings".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/project_new_8.png" width = "750" height= "750">
          <p>Step 2 : Copy the Assistant ID, Assistant URL and API key in env .file.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/project_new_10.png" width = "750" height= "750">
          <p>Step 3 : Paste it in env file.</p>
          <a class="button is-dark is-medium" href="didact://?commandId=extension.openFile&text=loan%7Cload-skill%7C${CHE_PROJECTS_ROOT}/cp4d-smart-virtual-assistant/.env">Open file</a>
          </details>
        </div>
      </div>
      <div class="container right">
         <div class="content">
            <p>You've successfully cloned the code, so click `Build the application` to start the build process.
            </p>
            <a class="button is-dark is-medium" title="Build the Application" href="didact://?commandId=extension.sendToTerminal&text=nodejs%20terminal%7Cbuild%7Cnodejs%20terminal|cd%20${CHE_PROJECTS_ROOT}/cp4d-smart-virtual-assistant%20%26%26%20npm%20install">Build the Application</a>
         </div>
      </div>
      <div class="container right">
         <div class="content">
            <p>You're all set to get started! </p>
            <a class="button is-dark is-medium" title="Launch the Application" href="didact://?commandId=extension.sendToTerminal&text=nodejs%20terminal%7Cstart%7Cnodejs%20terminal|cd%20${CHE_PROJECTS_ROOT}/cp4d-smart-virtual-assistant%20%26%26%20npm%20start">Launch the Application</a>
         </div>
      </div>
   </div>
   <div class="footer">
      <div class="content" style="padding:30px;padding-left:60px;padding-bottom:0px;">
         <p>If you'd like to make changes and explore the application, make sure to stop it first!</p>
         <a class="button is-dark is-medium" title="Stop Application" href="didact://?commandId=vscode.didact.sendNamedTerminalCtrlC&text=nodejs%20terminal">Stop Application</a>
         <p class="afterbutton">The stage is yours!</p>
         <a class="button is-dark is-medium" title="Explore the Code" href="didact://?commandId=extension.openFile&text=loan%7Copen-file%7C${CHE_PROJECTS_ROOT}/cp4d-smart-virtual-assistant/public/index.html">Explore the Code</a>
         <p class="afterbutton ">To view the changes you've made, re-launch the application</p>
         <a class="button is-dark is-medium" title="Launch the Application" href="didact://?commandId=extension.sendToTerminal&text=nodejs%20launch%7Cbuild%7Cnodejs%20terminal|cd%20${CHE_PROJECTS_ROOT}/cp4d-smart-virtual-assistant%20%26%26%20npm%20start">Re-Launch the Application</a>
         <p style="margin-top:10px;"> Completed the code pattern? Click on
          <bold>Clean up</bold> to delete the IBM Cloud services that were created.
        </p>
        <a class="button is-dark is-medium" title="Delete services from IBM Cloud" href="didact://?commandId=extension.sendToTerminal&text=nodejs%20terminal%7Cdelete-services%7Cnodejs%20terminal|cd%20${CHE_PROJECTS_ROOT}/cp4d-smart-virtual-assistant%20%26%26%20chmod%20%2Bx%20.%2Fscripts%2Fdelete_services.sh%20%26%26%20.%2Fscripts%2Fdelete_services.sh">Clean up</a>
        <p style="margin-top:10px;">You can also manage the services in
          <a href="https://cloud.ibm.com/resources">IBM Cloud Dashboard</a>.
        </p>
      </div>
      <div class="image-div">
         <p class="image-content">Want to explore this project more?
            <span style="font-size:15px;margin-top:0px;display:block;">Head over to the <a href="https://github.com/Anam-Mahmood/Unlock-the-Power-of-Machine-Learning-in-Virtual-Assistants-to-automate-Loan-Applications" target="_blank">Github Repository</a></span>
         </p>
         <div class="image-btn">
            <a class="image-link" href="didact://?commandId=extension.openURL&text=anomaly%7Cview-product-details%7Chttps://www.ibm.com/products
               " target="_blank">
               View Product Details 
               <span>
                  <svg style="position: absolute; right: 10px;" fill="#ffffff" focusable="false" preserveAspectRatio="xMidYMid meet" xmlns="http://www.w3.org/2000/  svg" width="25" height="25" viewBox="0 0 32 32" aria-hidden="true">
                     <path d="M18 6L16.6 7.4 24.1 15 3 15 3 17 24.1 17 16.6 24.6 18 26 28 16z"></path>
                     <title>Arrow right</title>
                  </svg>
               </span>
            </a>
            <a class="image-link" href="didact://?commandId=extension.openURL&text=anomaly%7Cget-trial-subscription%7Chttps://www.ibm.com/account/reg/us-en/signup?formid=urx-51009" target="_blank">
               Get Trial Subcription 
               <span>
                  <svg style="position: absolute; right: 10px;" fill="#ffffff" focusable="false" preserveAspectRatio="xMidYMid meet" xmlns="http://www.w3.org/2000/  svg" width="25" height="25" viewBox="0 0 32 32" aria-hidden="true">
                     <path d="M18 6L16.6 7.4 24.1 15 3 15 3 17 24.1 17 16.6 24.6 18 26 28 16z"></path>
                     <title>Arrow right</title>
                  </svg>
               </span>
            </a>
            <a class="image-link no-hover"></a>
         </div>
      </div>
   </div>
   <br><br>
</body>
</html>