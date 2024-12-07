pipeline {
    agent any
    stages {
        stage ('BUILD') {
            steps{
                echo "this is my first jenkins pipeline.it is not build"
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