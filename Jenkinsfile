pipeline {
    agent any
    environment {
        new_name = "pakodi"
    }
    options {
        disableConcurrentBuilds()
    }
    parameters {
        string(name:'PERSON',defaultValue:'Junnu', description: 'what was the girls name')
        choice(name:'CHOICE', choices:['apply', 'destroy'], description: 'what do you want ? apply or destroy')
    }
    stages {
        stage ('init') {
            steps{
                sh """
                cd ec2
                terraform init -reconfigure
                """
            }
        }
        stage ('plan') {
            steps {
                sh """
                cd ec2
                terraform plan
                """
            }
        }
        stage ('apply') {
            when {
                expression {
                params.CHOICE == 'apply'
            }
            }
            input {
                message "should we continue?"
                ok "yes,we should"
            }
            steps {
                sh """
                cd ec2
                terraform apply -auto-approve
                """
            }
        }
        stage ('destroy') {
            when {
                expression {
                params.CHOICE == 'destroy'
            }
            }
            input {
                message "should we continue?"
                ok "yes,we should"
            }
            steps {
                sh """
                cd ec2
                terraform destroy -auto-approve
                """
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