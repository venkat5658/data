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
                sh 'sudo docker build --no-cache -t public.ecr.aws/b9y2y3b4/new:demo .'
                sh 'docker push  public.ecr.aws/b9y2y3b4/new:demo'
               
            }
        }
      
        stage('deployment'){ 
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
