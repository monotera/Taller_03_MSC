pipeline {
    agent any
    stages {
        stage('build') {
            steps{
                sh 'python --version'
            }
        }

        stage('deploy') {
            steps {
                sh 'cp -r . /deploy'
            }
        }
    }
}
