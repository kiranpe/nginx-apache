pipeline{
    environment {
        CNTID = "sh(script:'docker inspect --format={{.Name}} 27c | sed "s/\///g"')"
        /*  CNTID = "nginx_apache" */
    }
    
    agent any
     
    stages {
       stage ('Build the docker') {
                   steps ('commad') {
                        sh "docker build -t nginx-apache ."
                   }
       }
       stage ('Stop the running container') {
                   steps ('command') {
                        sh "docker stop nginx-apache"
                   }
       }
       stage ('remove old containe') {
                   steps ('command') {
                        sh "docker rm nginx-apache"
                   }
       }
       stage ('Run the image') {
                   steps ('command') {
                        sh "docker run --name nginx-apache -p 8090:80 -d -it nginx-apache"
                   }
      }
      stage ('Build Skip') {
                   when {
                    expression {
                        return env.CNTID != 'nginx_apache'
                    }
                  }
                  steps {
                     echo 'Skipping the build'
                  }
     }
   } 
}
