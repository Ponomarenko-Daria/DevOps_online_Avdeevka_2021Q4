## Final project.  
This project test, build and deploy Petclinic application to AWS cloud.  
All configuration set up in code.

## Initial setup and preset

To start working with the project, you need to have a Jenkins server and install terraform (version 1.1.5) and ansible there.  

Next, add credentials to Jenkins:  
1. "github_key" is the key to access your git hub repository;
2. "aws" is your private key to access AWS;  
3. "accesskey" - You get an access key from AWS.  
4. "secretkey" is your secret key from AWS.
5. "Docker" - you are the login and password from DockerHub.

The next thing you need to do is add Elastic IP to AWS.

After this setup, create 2 pipelines in Jenkins and specify the path to this repository (Jenkinsfile and Jenkinsfile2 files)
Add a github webhook to pipeline 1 that automatically starts a job after submitting files to the Petclinic repository. This action is optional.
