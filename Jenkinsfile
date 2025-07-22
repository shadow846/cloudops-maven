pipeline {
    agent any

    tools {
        maven 'Maven 3.x'
    }

    stages {
        stage('Checkout') {
            steps {
                git credentialsId: 'github-creds', url: 'https://github.com/YOUR_USERNAME/cloudops-maven.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
    }
}
