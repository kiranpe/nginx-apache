pipeline{
    agent any
    
    stages {
       stage ('Build the docker') {
                   steps ('commad') {
                        sh "docker build -t nginx-apache ."
                   }
       }
       stage ('Run the image') {
                   steps ('command') {
                        sh "docker run --name nginx-apache -p 8090:80 -d -it nginx-apache"
                   }
       }
   }
}
