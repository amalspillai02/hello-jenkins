pipeline {
    agent {
        docker { image 'node:22.14.0-alpine3.21' }
    }

    environment {
        DOCKER_BUILDKIT = 1
    }

    stages {
        stage('Install') {
            steps {
                sh 'npm install'
            }
        }

        stage('Build') {
            steps {
                sh 'npm run start'
            }
        }

        stage('Test') {
            steps {
                sh 'npm test'
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker build -t hello-jenkins-app .'
                sh 'docker run -d -p 3000:3000 --name hello-jenkins hello-jenkins-app || true'
            }
        }
    }

    post {
        always {
            junit 'jest-junit.xml'
        }
    }
}

