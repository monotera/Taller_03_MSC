pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'python3 -m pylint --output-format=parseable --fail-under=0 . --msg-template="{path}:{line}: [{msg_id}({symbol}), {obj}] {msg}" | tee pylint.log || echo "pylint exited with $?"'
            }
        }
        stage('deploy') {
            steps {
                sh 'cp -r . /deploy'
            }
        }
    }
}
