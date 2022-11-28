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
                sh 'sudo withCredentials([string(credentialsId: '17cd116f-162d-4904-b306-b0039dbe0e41', variable: 'ecr-docker')])'
                sh 'sudo docker build -t 010762572680.dkr.ecr.ap-south-1.amazonaws.com/test .'
                sh 'sudo docker push 010762572680.dkr.ecr.ap-south-1.amazonaws.com/test '
               
            }
        }
      
        stage('kubectl deploy'){ 
       steps
        {
          sh 'sudo kubectl apply -f httpd-dep.yaml'
          sh 'sudo kubectl get nodes '
          sh 'sudo kubectl get ns'
          sh 'sudo kubectl get svc'
          sh 'sudo kubectl rollout restart deployment/httpd-deployment'
           
        }
      } 
    }
}
