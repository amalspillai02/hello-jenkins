pipeline {
    agent {
        docker { image 'node:22.14.0-alpine3.21' }
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
    }

    post {
        always {
            junit 'jest-junit.xml'
        }
    }
}

