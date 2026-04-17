pipeline {
    agent any

    tools {
        jdk 'JDK'
        gradle 'Gradle'
    }

    environment {
        CHROME_BIN = '/usr/bin/google-chrome'
    }

    stages {
        stage('Cleanup') {
            steps {
                deleteDir()
            }
        }

        stage('Checkout') {
            steps {
                git credentialsId: 'github-token',
                    url: 'https://github.com/cyberBrain18/MyGradleSeleniumApp.git',
                    branch: 'master'
            }
        }

        stage('Build & Compile') {
            steps {
                sh 'gradle clean assemble'
            }
        }

        stage('Selenium Tests') {
            steps {
                sh 'gradle test'
            }
        }
    }

    post {
        always {
            // Keeps test results in Jenkins (VERY IMPORTANT)
            junit '**/build/test-results/test/*.xml'
        }
    }
}
