pipeline {
    agent any

    stages {
        stage('build docker file') {
            steps {
                sh 'sudo docker build . -t venkat5658/myproject:latest'
               
            }
        }
      stage('docker hub push')
      {
       steps
        {
          sh 'sudo docker login -u venkat5658 -p venkat5658@'
          sh 'sudo docker push  venkat5658/myproject:latest'
        }
      } 
        stage('kube deploy')
      {
       steps
        {
          sh 'sudo kubectl apply -f edu-dep.yaml'
          sh 'sudo kubectl apply -f dep-svc.yaml'
          sh 'sudo kubectl apply -f dep-ingress.yaml'
          sh 'sudo kubectl rollout restart deployment/httpd-deployment'
           
        }
      } 
    }
}
