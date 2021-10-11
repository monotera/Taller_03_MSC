pipeline {
    agent any
    stages {
        stage('lint') {
            steps {
                sh "pylint *.py"
                sh "pylint ./projects *.py"
                sh "pylint ./blog *.py"
                sh "pylint ./personal_portfolio *.py"
            }
        }
        stage('deploy') {
            steps {
                sh 'cp -r ./blog /deploy'
                sh 'cp -r ./personal_portfolio /deploy'
                sh 'cp -r ./projects /deploy'
                sh 'cp -r ./projects /deploy'
                sh 'cp ./db.sqlite3 /deploy'
                sh 'cp ./manage.py /deploy'                
            }
        }
               
    }
}
