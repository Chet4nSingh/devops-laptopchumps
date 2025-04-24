pipeline {
    agent any

    stages {
        stage('Docker Cleanup') {
            steps {
                bat '''
                docker stop lc-container || echo Container not running
                docker rm lc-container || echo No container to remove
                docker rmi -f lc-image || echo No image to remove
                '''
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t lc-image .'
            }
        }

        stage('Run Container') {
            steps {
                bat 'docker run -d -p 3000:80 --name lc-container lc-image'
            }
        }
        
    }
}
