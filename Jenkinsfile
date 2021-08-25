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
            sh 'docker build -t mynodeapprod:latest --target=prod .'
            sh 'docker build -t mynodeappdev:latest --target=dev .'
        }
      }
      stage ('deploy'){
        steps {
           sh 'docker run -it -d -p 8000:9005 -h myhost1 mynodeapprod:latest'
           sh 'docker run -it -d -p 8001:9006 -h myhost2 mynodeappdev:latest'
        }
      }
      stage ('validate'){
        steps {
          sh 'sleep 30'
          sh 'curl http://44.196.47.78:5000/note/'
          sh 'curl http://44.196.47.78:5001/note/'
          sh 'echo "url respondin"'
        }
      }
      
    }
  }
