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
          sh 'docker build -t mynodeappdev:latest --target=dev .'
        }
      }
      stage ('deploy'){
        steps {
           sh 'docker run -it -d -p 8001:9006 mynodeappdev:latest'
        }
      }
      stage ('validate'){
        steps {
          sh 'sleep 20'
          sh 'curl http://127.0.0.1:8001/note/'
          sh 'echo "url respondin"'
        }
      }
      
    }
  }
