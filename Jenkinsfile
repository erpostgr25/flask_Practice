pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Test') {
            steps {
                sh 'pytest -v'
            }
        }

        stage('Deploy') {
            steps {
		sh 'bash deploy.sh'
            }
        }
    }

    post {
        success {
            mail to: 'er.shashi09@gmail.com',
                 subject: 'Build Successful',
                 body: 'The Jenkins build has passed successfully.'
        }

        failure {
            mail to: 'er.shashi09@gmail.com',
                 subject: 'Build Failed',
                 body: 'The Jenkins build has failed. Please check logs.'
        }
    }
}

