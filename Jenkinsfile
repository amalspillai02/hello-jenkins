pipeline {
    agent any

    stages {
        stage('Install') {
            steps {
                sh 'npm install'
            }
        }

        stage('Test') {
            steps {
                sh 'npm test'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t hello-jenkins-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 3000:3000 --name hello-jenkins hello-jenkins-app'
                // Ensuring that the app is running, adding a pause for Jenkins to hold and verify the status
                sh 'sleep 5'  // Give Docker some time to start
            }
        }
    }
}

