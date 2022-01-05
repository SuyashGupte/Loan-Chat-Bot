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
  .no-hover:hover
  {
    background-color: #0062FF !important;
  }
}
</style>
</head>
<body>
  <div class="apptitle"> 
    Loan Smart Assistant
  </div>
  <div class="header">
      <div class="right-content">
         <div>
          Within a bank’s loan department, a customer’s application undergoes a lot of scrutiny before a decision of approval or rejection is made. The evaluation process can take a while, which opens the possibility of the bank losing a potential customer. To reduce the decision-making time and to increase the accuracy of the decisions being made, we can now use machine learning solutions. This allows customer representative to make predictions about a loan application quickly.
        </div>
        <div>
          Now a days businesses also use chatbots to increase productivity and provide a better customer experience. This demo aims to automate the banking experience for customers regarding loan applications using Watson Studio machine learning, Cloud function.
        </div>
     </div>
   </div>
   <div class="timeline">
      <div class="container right" style="margin-top:0px;padding-top:0px;">
         <div class="content">
            <p>To begin, you will need the application's source code. Click `Get the code` to clone the code to your playground session.</p>
            <a class="button is-dark is-medium" title="Get the Code" href="didact://?commandId=vscode.didact.sendNamedTerminalAString&text=loan$$git%20clone%20https://github.com/SuyashGupte/loan-chat-bot.git%20${CHE_PROJECTS_ROOT}/loan">Get the Code</a>
         </div>
      </div>
      <div class="container right">
        <div class="content">
          <p>Create and Configure IBM Services</p>
          <p>You need to be logged in to your IBM Cloud account in the Developer Playground to create and configure services.</p>
          <a class="button is-dark is-medium" title="Login to IBM Cloud" href="didact://?commandId=vscode.didact.sendNamedTerminalAString&text=loan$$ibmcloud%20login%20%26%26%20ibmcloud%20target%20--cf%20%26%26%20ibmcloud%20target%20-g%20Default">Login to IBM Cloud</a>
          <p style="margin-top:10px;">Do not have an IBM Cloud Account?<a href="https://cloud.ibm.com/registration">click here</a> to create one for free.</p>
        </div>
      </div>
      <div class="container right">
        <div class="content">
          <p>This sample application uses the following IBM Services:</p>
          <p><a href="https://cloud.ibm.com/catalog/services/watson-assistant">Watson Assistant</a>: Watson Assistant lets you build conversational interfaces into any application, device, or channel.</p>
          <p><a href="https://cloud.ibm.com/catalog/services/watson-studio">Watson Studio</a>: Develop sophisticated machine learning models using Notebooks and code-free tools to infuse AI throughout your business.</p>
        </div>
      </div>
      <div class="container right">
        <div class="content">
          <p>Create these services with just a click of button.</p>
          <a class="button is-dark is-medium" title="Create IBM Watson Services" href="didact://?commandId=vscode.didact.sendNamedTerminalAString&text=loan$$cd%20${CHE_PROJECTS_ROOT}/loan%20%26%26%20chmod%20%2Bx%20.%2Fcreate-ibm-services.sh%20%26%26%20.%2Fcreate-ibm-services.sh">Create IBM Watson Services</a>
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
          <p>Step 1 : Click on "Create a Project".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_1.1_new_project_1.png" width = "750" height= "750">
          <p>Step 2 : Click on "Create an empty project".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_1.2_new_project_2.png" width = "750" height= "750">
          <p>Step 3 : On the new project page, give your project a name and click the "Create" button at the bottom right of the page to create your project.</p>
        </details>
        </div>
      </div>
      <div class="container right">
        <div class="content">
          <details>
         <summary>Add Data to the Project</summary>
          <p>Step 1 : Load the dataset.</p>
          <a class="button is-dark is-medium" href="didact://?commandId=extension.openFile&text=loan%7Cexplore-code%7C${CHE_PROJECTS_ROOT}/test/data.csv">Load Dataset</a>
          <p>Step 2 : Download the dataset.</p>
          <a class="button is-dark is-medium"title="Launch the Application" href="didact://?commandId=file.download">Download</a>
          <p>Step 3 : Click on the "Add to project" button on the top right corner.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_2.1_add_data_1.png" width = "750" height= "750">
          <p>Step 4 : From the pop-up window select "Data".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_2.2_add_data_2.png" width = "750" height= "750">
          <p>Step 5 : In the column, on the right, click on "browse". Navigate to the folder where you downloaded the data set to and select "german_credit.csv".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_2.3_add_data_3.png" width = "750" height= "750">
          <p>Step 6 : You can find the dataset in the "Assets" tab.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_2.4_add_data_4.png" width = "750" height= "750">
          </details>
        </div>
      </div>
      <div class="container right">
        <div class="content">
          <details>
         <summary>Create AutoAI experiment</summary>
          <p>Step 1 : Click on the "Add to project" button on the top right corner.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_3.1_add_auto_ai_1.png" width = "750" height= "750">
          <p>Step 2 : From the pop-up window select "AutoAI experiment".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_3.2_add_auto_ai_2.png" width = "750" height= "750">
          <p>Step 3 : On the New AutoAI Experiment page, give a name to your project. Next, you need to add a Watson Machine Learning instance. On the right side of the screen, click on "Associate a Machine Learning service instance".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_3.3_add_ml_service_1.png" width = "750" height= "750">
          <p>Step 4 : On the Associate service page, check the box with your machine learning service instance. Next, click on "Associate service" on the right corner.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_3.4_add_ml_service_2.png" width = "750" height= "750">
          <p>Step 5 : Click on "Create" on the bottom right part of your screen to create your first AutoAI experiment!</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_3.5_create_auto_ai_1.png" width = "750" height= "750">
          </details>
        </div>
      </div>
      <div class="container right">
        <div class="content">
          <details>
         <summary>Add Data to AutoAI experiment</summary>
          <p>Step 1 : After you create your experiment, you are taken to a page to add a data source to your project. Click on "Select from project".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_4.1_add_data_to_ai_1.png" width = "750" height= "750">
          <p>Step 2 : Add the `german_credit.csv` file. Click on Select asset to confirm your data source.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_4.2_add_data_to_ai_2.png" width = "750" height= "750">
          <p>Step 3 : Click on the "No" button.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_4.3_configure_data_details_1.png" width = "750" height= "750">
          <p>Step 4 : Select "Risk" as prediction column.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_4.4_configure_data_details_2.png" width = "750" height= "750">
          <p>Step 5 : Click on "Run experiment" on the bottom right part of your screen.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_4.5_configure_data_details_3.png" width = "750" height= "750">
          </details>
        </div>
      </div>
      <div class="container right">
        <div class="content">
          <details>
         <summary>Training and Saving the model</summary>
          <p>Step 1 : After you start the experiment, the model starts training. It may take 2-3mins to complete the training.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_5.1_model_training_1.png" width = "750" height= "750">
          <p>Step 2 : Now the AutoAI has successfully generated eight different models. In our case, you see the accuracy value is 0.785, from Pipeline 8. Click on "Pipeline 8".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_5.2_save_model_1.png" width = "750" height= "750">
          <p>Step 3 : Save it as a "Model" and name your model as you want. Click on "Create"</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_5.3_save_model_2.png" width = "750" height= "750">
          </details>
        </div>
      </div>
      <div class="container right">
        <div class="content">
          <details>
         <summary>Promote Model and Create a Deployment Space</summary>
          <p>Step 1 : Once the model is successfully saved, click on the "View in project" in the green notification on the right side of the screen. Alternatively, you can also find your model saved in the "Assets" tab under "Models".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_6.1_deployment_space_1.png" width = "750" height= "750">
          <p>Step 2 : Click on "Promote to deployment space" button on the top right corner of your screen. Alternatively, if you’re doing it from the Assets tab, then under the “Models” section, click on the 3 dots on the right side of your screen and click “promote”.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_6.2_deployment_space_2.png" width = "750" height= "750">
          <p>Step 3 : Click on the "Create a new deployment space".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_6.3_deployment_space_3.png" width = "750" height= "750">
          <p>Step 4 : Select your machine learning service instance.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_6.4_deployment_space_4.png" width = "750" height= "750">
          <p>Step 5 : Give your deployment space a name and click on "Create" button.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_6.5_deployment_space_5.png" width = "750" height= "750">
          <p>Step 6 : Click on "Promote" button.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_6.6_deployment_space_6.png" width = "750" height= "750">
          </details>
        </div>
      </div>
      <div class="container right">
        <div class="content">
          <details>
         <summary>Deploy Model and Get URL</summary>
          <p>Step 1 : Once the model is successfully promoted, you will see a green notification box, click on “deployment space” in the notification. Alternatively, you can also find your deployment spaces when you click on the hamburger sign on the top left most side on your screen.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_6.1_deployment_space_1.png" width = "750" height= "750">
          <p>Step 2 : Click on "New deployment" button.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_7.2_deploy_2.png" width = "750" height= "750">
          <p>Step 3 : Select "Online", give your deployment a name and click on "Create" button.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_7.3_deploy_3.png" width = "750" height= "750">
          <p>Step 4 : Click on the deployment you just created.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_8.1_get_link_1.png" width = "750" height= "750">
          <p>Step 5 : Copy the endpoint URL of your model and save it as we will need it later.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_8.2_get_link_2.png" width = "750" height= "750">
          <p>Step 6 : To test your model, click on the “Test” tab. You can select a row from the data set and enter the data in the fields. Enter the values from the dataset, and then click on the “ Add to Predict” button at the bottom and then on "Predict".</p>
          </details>
        </div>
      </div>
      <div class="container right">
        <div class="content">
          <details>
         <summary>Generate API Key</summary>
          <p>Click the below button to generate api key through IBM cloud CLI commands.</p><br>
          <a class="button is-dark is-medium" title="Generate API key" href="didact://?commandId=extension.sendToTerminal&text=LoanAgent%7Cgenerate-api-token%7CLoanAgent|cd%20${CHE_PROJECTS_ROOT}/cpd-intelligent-loan-agent-app;ibmcloud%20iam%20api-key-create%20ApiKey-loanAgent%20-d%20'this is API key for loanAgent'%20--file%20${CHE_PROJECTS_ROOT}/cpd-intelligent-loan-agent-app/key_file">Generate API key</a><br> 
          </details>
        </div>
      </div>
      <div class="container right">
        <div class="content">
          <details>
         <summary>IBM Cloud Functions</summary>
          <p>Step 1 : Within your IBM Cloud account, click on the top search bar to search for cloud services and offerings. Type in “Functions” and then click on Functions under “Catalog Results”.</p>
          <p>Step 2 : Click on "Current namespace" and "Create Namespace".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_10.1_cloud_function_create_namespace_1.png" width = "750" height= "750">
          <p>Step 3 : Give your namespace a name and click on "Create" button.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_10.2_cloud_functions_create_namespace_2.png" width = "750" height= "750">
          <p>Step 4 : Click on "Actions" tab.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_10.3_cf_actions_1.png" width = "750" height= "750">
          <p>Step 5 : Click on "Create".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_10.4_cf_actions_2.png" width = "750" height= "750">
          <p>Step 6 : Give the action a name, choose the “Default package, and a runtime of your choice, in our case we are using "Python 3.7" and click on "Create".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_10.5_cf_actions_3.png" width = "750" height= "750">
          </details>
        </div>
      </div>
      <div class="container right">
        <div class="content">
          <details>
         <summary>Configure Actions</summary>
          <p>Step 1 : Once the action is created you will need to add an API KEY under the "Parameters" tab that we created. Click on "Add Parameter".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_11.1_add_paramter_1.png" width = "750" height= "750">
          <p>Step 2 : Add your API key and Click on "Save".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_11.2_add_parameter_2.png" width = "750" height= "750">
          <p>Step 3 : Under the "Code" tab, paste the below code.</p>
          <a class="button is-dark is-medium" title="Build the Application" href="didact://?commandId=vscode.didact.copyFileTextToClipboardCommand&extFilePath=projects/loan/code.txt">Copy</a>
          <p>Step 4 : In the below line, replace the link with your machine learning deployment link. Click on "Save".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_11.3_add_code_1.png" width = "750" height= "750">
          <p>Step 5 : Lastly under the "Endpoints" tab, check the "Enable as web action" and copy the public URL.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_11.4_enable_web_action_1.png" width = "750" height= "750">
          </details>
        </div>
      </div>
      <div class="container right">
        <div class="content">
          <details>
         <summary>Integrate the Machine Learning Model with Watson Assistant</summary>
          <p>Step 1 : From the "Resources" tab on the left, select "Seevices and software" and click on your Watson Assistant service. Then click on "Launch Watson Assistant" button.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_12.1_launch_wa_1.png" width = "750" height= "750">
          <p>Step 2 : Click on "Create assistant".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_12.2_create_assistant_1.png" width = "750" height= "750">
          <p>Step 3 : Give your assistant a name and click on "Create assistant".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_12.3_create_assistant_2.png" width = "750" height= "750">
          <p>Step 4 : Once your Assistant is created, click on "add an action or dialog skill".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_12.4_add_dialog_1.png" width = "750" height= "750">
          <p>Step 5 : Load the Dialog Skill.</p>
          <a class="button is-dark is-medium" href="didact://?commandId=extension.openFile&text=loan%7Cexplore-code%7C${CHE_PROJECTS_ROOT}/test/Dialog-Skill-Demo.json">Load Skill</a>
          <p>Step 6 : Download the Dialog Skill.</p>
          <a class="button is-dark is-medium"title="Launch the Application" href="didact://?commandId=file.download">Download</a>
          <p>Step 7 : Upload the skill you just downloaded. When you see that the skill file has been uploaded, click on "Upload" Button.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_12.5_create_dialog_2.png" width = "750" height= "750">
          </details>
        </div>
      </div>
      <div class="container right">
        <div class="content">
          <details>
         <summary>Integarte Web Chat</summary>
          <p>Step 1 : Once the skill is created, click on "Integrate web chat".</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_13.1_integrate_web_chat_1.png" width = "750" height= "750">
          <p>Step 2 : Give your Integration a name and click on "Create" button.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_13.2_integrate_web_chat_2.png" width = "750" height= "750">
          <p>Step 3 : Turn off the "Home screen" switch.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_13.3_integrate_web_chat_3.png" width = "750" height= "750">
          <p>Step 4 : Click on "Embed" tab and copy the integration_id and service_instance_id in the HTML file.</p>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_13.3_integrate_web_chat_3.png" width = "750" height= "750">
          <p>Step 5 : Lastly under the "Endpoints" tab, check the "Enable as web action" and copy the public URL.</p>
          <a class="button is-dark is-medium" title="Explore the Code" href="didact://?commandId=extension.openFile&text=anomal%7Cexplore-code%7C${CHE_PROJECTS_ROOT}/loan/loan.html">Open HTML file</a>
          <img src = "https://raw.githubusercontent.com/SuyashGupte/Loan-Chat-Bot/main/Smart%20Loan%20Assistant%20Images/section_13.4_integrate_web_chat_4.png" width = "750" height= "750">
          </details>
        </div>
      </div>
      <div class="container right">
         <div class="content">
            <p>You've successfully cloned the code, so click `Build the application` to start the build process.
            </p>
            <a class="button is-dark is-medium" title="Build the Application" href="didact://?commandId=vscode.didact.sendNamedTerminalAString&text=anomaly$$cd%20${CHE_PROJECTS_ROOT}/loan%20%26%26%20npm%20install">Build the Application</a>
         </div>
      </div>
      <div class="container right">
         <div class="content">
            <p>You're all set to get started! </p>
            <a class="button is-dark is-medium" title="Launch the Application" href="didact://?commandId=vscode.didact.sendNamedTerminalAString&text=anomaly$$cd%20${CHE_PROJECTS_ROOT}/loan%20%26%26%20npm%20start">Launch the Application</a>
         </div>
      </div>
   </div>
   <div class="footer">
      <div class="content" style="padding:30px;padding-left:60px;padding-bottom:0px;">
         <p>If you'd like to make changes and explore the application, make sure to stop it first!</p>
         <a class="button is-dark is-medium" title="Stop Application" href="didact://?commandId=vscode.didact.sendNamedTerminalCtrlC&text=anomaly">Stop Application</a>
         <p class="afterbutton">The stage is yours!</p>
         <a class="button is-dark is-medium" title="Explore the Code" href="didact://?commandId=extension.openFile&text=anomal%7Cexplore-code%7C${CHE_PROJECTS_ROOT}/loan/serer.js">Explore the Code</a>
         <p class="afterbutton ">To view the changes you've made, re-launch the application</p>
         <a class="button is-dark is-medium" title="Launch the Application" href="didact://?commandId=vscode.didact.sendNamedTerminalAString&text=anomaly$$cd%20${CHE_PROJECTS_ROOT}/loan%20%26%26%20npm%20start">Re-Launch the Application</a>
         <p style="margin-top:10px;"> Completed the code pattern? Click on
          <bold>Clean up</bold> to delete the IBM Cloud services that were created.
        </p>
        <a class="button is-dark is-medium" title="Delete services from IBM Cloud" href="didact://?commandId=extension.sendToTerminal&text=LoanAgent%7Cget-code%7CLoanAgent|chmod%20%2Bx%20.%2Fdeleteservice.sh%20%26%26%20.%2Fdeleteservice.sh">Clean up</a>
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