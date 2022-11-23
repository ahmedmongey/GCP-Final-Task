# GCP-Final-Task
#App part 
    App Requirement :
   - GNU/Linux
   - python >= 3.7
   - pip >= 9.0
   - redis >= 5.0
   - redis-py
   - tornado
#You can install them by using:
pip install -r requirements.txt

#you can find app hello.py file and start it by using :
export $(cat .env | xargs) && python hello.py


#terraform part :
    terraform requirement :
    -GCP Account
    -Terraform Installed
    
#Terraform Commponents:
    1- vpc 'one VPC'
    2- subnets 'Two subnet' 
        one subnet for managment
        one subnet for restricted
    3- managment VM
        VM contain gcloud and kubectl to deploy kubernetes
    4- firewall
        allow connect by IAP only
    5- GKE 'one cluster which is private' 
    6- service account 'One service account'
    
 #You can init them by using:
    terraform init
    
 #You can run them by using:
    terraform apply
    
    
#Docker Part
images deployed on GKE  came from Artifacts registry

 #You can build it by using:
    docker build . -t gcr.io/project_ID/Image_name
    
 #You can push it by using:
    docker push  gcr.io/project_ID/Image_name
    
    
 #Deployment part:
    run your Deployment file and your service in yml format to host this app
    
 #You can run them by using:
    kubectl apply -f deploymentfile_name 
    
