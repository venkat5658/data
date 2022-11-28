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
                
                sh 'sudo docker build -t public.ecr.aws/b9y2y3b4/new:ubuntu .'
                sh 'docker login -u venkat5658 -p venkat5658@ '
                sh 'aws ecr-public get-login-password --region ap-south-1 | docker login --username AWS --password-stdin public.ecr.aws/b9y2y3b4 public.ecr.aws/b9y2y3b4/new:ubuntu'
                sh 'sudo docker push public.ecr.aws/b9y2y3b4/new:ubuntu '
               
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
