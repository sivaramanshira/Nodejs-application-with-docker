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
          sh 'docker build -t mynodeapp:latest .'
        }
      }
      stage ('deploy'){
        steps {
           sh 'docker run -it -d -p 5000:9005 mynodeapp:latest'
        }
      }
      stage ('validate'){
        steps {
          sh 'sleep 20'
          sh 'curl http://34.200.231.245:5000/note/'
          sh 'echo "url respondin"'
        }
      }
      
    }
  }
