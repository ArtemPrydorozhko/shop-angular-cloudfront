
pipeline {
    agent {
        docker { image 'node:alpine' }
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/ArtemPrydorozhko/shop-angular-cloudfront'
            }
        }
        stage('Install') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') { 
            steps {
                sh 'quality-check.sh' 
            }
        }
        stage('Build') { 
            steps {
                sh 'build-client.sh' 
            }
        }
        // stage('Deploy') {}
    }
}
