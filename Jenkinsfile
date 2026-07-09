pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t saidali-web .'
            }
        }

       stage('Deploy') {
          steps {
             sh 'docker stop saidali-web || true'
             sh 'docker rm saidali-web || true'
             sh 'docker build -t saidali-web .'
             sh 'docker run -d --name saidali-web -p 80:80n saidali-web'
    }
}
    }
}
