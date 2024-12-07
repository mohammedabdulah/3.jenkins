pipeline {
    agent any
    environment {
        new_name = "pakodi"
    }
    options {
        timeout (time:1 , unit:'SECONDS') 
        disableConcurrentBuilds()
    }
    parameters {
        string(name:'PERSON',defaultValue:'Junnu', description: 'what was the girls name')
        choice(name:'CHOICE', choices:['apply', 'destroy'], description: 'what do you want ? apply or destroy')
    }
    stages {
        stage ('BUILD') {
            steps{
                echo "this is my first jenkins pipeline.it is ${env.new_name}"
            }
        }
        stage ('run') {
            steps {
                echo "choice : ${params.CHOICE}"
            }
        }
    }
    post {
        always {
            echo "this runs always no matter what"
        }
        success {
            echo "your pipeline is succcess"
        }
        failure {
            echo "your pipeline failed"
        }
    }
}