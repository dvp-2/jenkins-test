pipeline {
    agent any  // Run on any available agent

    stages {
        stage('Checkout') {
            steps {
                echo 'Cloning the repo...'
                checkout scm  // Checks out source code from GitHub/GitLab etc.
            }
        }

        stage('Build') {
            steps {
                echo 'Building the project...'
                // Example: compile Java code or run npm build
                sh 'echo Build simulated'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                // Run unit tests here
                sh 'echo Test simulated'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying application...'
                // Deploy to staging or production
                sh 'echo Deploy simulated'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully.'
        }
        failure {
            echo 'Pipeline failed. Please check logs.'
        }
        always {
            echo 'Cleaning up workspace...'
            cleanWs()  // Cleans workspace after build
        }
    }
}
