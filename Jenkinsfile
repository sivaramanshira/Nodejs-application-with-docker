pipeline {
  environment {
    PATH = "$PATH:/usr/local/bin/"
  }
  agent any 
    stages {
      stage ('checkout'){
        steps {
          git branch: 'master', url: 'https://github.com/mamtapandey1910/Nodejs-application-with-docker.git'
        }
      }
      stage ('build'){
        steps {
          sh '/usr/local/bin/docker build -t mynodeapp:latest .'
        }
      }
      stage ('image security scan'){
        steps {
           sh 'echo "Hello image"'
        }
      }
      stage ('deploy'){
        steps {
           sh 'docker run -it -d -p 8001:9005 mynodeapp:latest'
        }
      }
      stage ('validate'){
        steps {
          sh 'curl http://127.0.0.1:8080/note/'
        }
      }
      
    }
  }
