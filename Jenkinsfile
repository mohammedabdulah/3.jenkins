pipeline {
    agent any
    environment {
        new_name = "pakodi"
    }
    options {
        timeout (time:1 , units:'seconds') 
        disableConcurrentBuilds()
    }
    stages {
        stage ('BUILD') {
            steps{
                echo "this is my first jenkins pipeline.it is ${env.new_name}"
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