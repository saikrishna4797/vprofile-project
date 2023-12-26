pipeline {
    agent any

    stages {
        
        stage('checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/saikrishna4797/vprofile-project.git'
            }
        }
          
        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image
                    sh 'docker build -t vprofile .'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Run Docker container
                    sh 'docker run -dit -p 8080:80 --name vprofile-nginx-container vprofile'
                }
            }
        }
    }
}

