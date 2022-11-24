pipeline {
    agent any

    stages {
         stage ('git clone') {
            steps {
        echo "code is building"
         git 'https://github.com/venkat5658/data.git'
            }
        }
        
        stage('build docker docker image') {
            steps {
                echo "buid docker image"
                sh 'sudo docker build --no-cache -t  010762572680.dkr.ecr.ap-south-1.amazonaws.com/test:demo'
                sh 'sudo docker push 010762572680.dkr.ecr.ap-south-1.amazonaws.com/test:demo .'
               
            }
        }
      
        stage('deployment'){ 
       steps
        {
            echo "deployement"
          sh 'sudo kubectl apply -f httpd-dep.yaml'
          sh 'sudo kubectl get svc '
          sh 'sudo kubectl get nodes'
          sh 'sudo kubectl get ns'
          sh 'sudo kubectl rollout restart deployment/httpd-deployment'
           
        }
      } 
    }
}
