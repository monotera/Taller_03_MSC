pipeline {
    agent any
    stages {
        stage('build') {
            steps{
                sh 'pylint --disable=W1202 --output-format=parseable --reports=no module > pylint.log || echo "pylint exited with $?"'
                sh 'cat render/pylint.log'
          
                    [$class                     : 'WarningsPublisher',
                    parserConfigurations       : [[
                                                        parserName: 'PYLint',
                                                        pattern   : 'pylint.log'
                                                ]],
                    unstableTotalAll           : '0',
                    usePreviousBuildAsReference: true]
            }
        }

        stage('deploy') {
            steps {
                sh 'cp -r . /deploy'
            }
        }
    }
}
