pipeline {
    agent any

    tools {
        maven 'Maven 3.x'
    }

    stages {
        stage('Checkout') {
            steps {
                git credentialsId: 'github-creds', url: 'https://github.com/shadow846/cloudops-maven.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
    stage('Docker Build') {
	steps{
	    script{
		docker.build("shadow846/cloudops-maven:latest")
	    }
        }
     }
  }
}
