pipeline {
    agent any

    tools {
        // IMPORTANT: These strings must match the "Name" field in 
        // Manage Jenkins -> Global Tool Configuration
        jdk 'JDK' 
        gradle 'Gradle'
    }

    environment {
        // Helps Selenium find the Chrome binary on Ubuntu
        CHROME_BIN = '/usr/bin/google-chrome'
    }

    stages {
        stage('Cleanup') {
            steps {
                // Cleans the workspace before starting to avoid old build conflicts
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
                // 'clean' ensures we start fresh; 'assemble' compiles the code
                sh 'gradle clean assemble'
            }
        }

        stage('Selenium Tests') {
            steps {
                // Runs your test suite
                // If tests fail, the pipeline will mark as 'Unstable' or 'Failure'
                sh 'gradle test'
            }
        }
    }

    post {
        always {
            // This pulls the XML test results into the Jenkins UI
            junit '**/build/test-results/test/*.xml'
            
            // This lets you download the pretty HTML report from the Jenkins sidebar
            publishHTML([
                allowMissing: false,
                alwaysLinkToLastBuild: true,
                keepAll: true,
                reportDir: 'build/reports/tests/test',
                reportFiles: 'index.html',
                reportName: 'HTML Report',
                reportTitles: 'Selenium Test Results'
            ])
        }
    }
}
