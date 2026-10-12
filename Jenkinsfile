
pipeline {
    agent any

    triggers {
        githubPush()
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Run Script') {
            steps {
                sh 'chmod +x build.sh'
                sh './build.sh'
            }
        }
    }

    post {
        always {
            emailext(
                to: 'YOUR_EMAIL@gmail.com',
                subject: "Jenkins Build: ${JOB_NAME} #${BUILD_NUMBER} - ${currentBuild.currentResult}",
                body: """Hello,

Jenkins build has completed.

Job: ${JOB_NAME}
Build Number: ${BUILD_NUMBER}
Status: ${currentBuild.currentResult}

Build URL: ${BUILD_URL}

The complete console output is attached to this email.

Regards,
Jenkins CI
""",
                attachLog: true
            )
        }
    }
}

