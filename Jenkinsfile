pipeline {
    agent  { docker { image 'python:3.5.1' } }
    stages {
        stage('build') {
            sh 'python3 -m pylint --output-format=parseable --fail-under=<threshold value> module --msg-template="{path}:{line}: [{msg_id}({symbol}), {obj}] {msg}" | tee pylint.log || echo "pylint exited with $?"'
        }
        stage('deploy') {
            steps {
                sh 'cp -r . /deploy'
            }
        }
    }
}
