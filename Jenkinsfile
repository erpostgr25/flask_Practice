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
            when {
                branch 'main'
            }
            steps {
		sh '''
			echo "MONGO_URI=mongodb+srv://ershashi09_db_user:M3dO9l7JkOttJeu6@travel-memory-cluster.qm5fqgo.mongodb.net/students" > .env

			echo "Starting deployment..."
			# Stop any already running instance
			pkill -f "python3 app.py" 2>/dev/null

			# Start the application in background
			nohup python3 ${PWD}/app.py > app.log 2>&1 &

			echo "Application deployed to staging environment!"
        	   '''
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

