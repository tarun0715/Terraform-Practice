pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Checking out Terraform project...'
            }
        }

        stage('Terraform Format Check') {
            steps {
                echo 'Checking Terraform formatting...'
                sh 'terraform fmt -check'
            }
        }

        stage('Terraform Init') {
            steps {
                echo 'Initializing Terraform...'
                sh 'terraform init -input=false --reconfigure'
            }
        }

        stage('Terraform Validate') {
            steps {
                echo 'Validating Terraform configuration...'
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                echo 'Creating Terraform plan...'
                sh 'terraform plan -input=false'
            }
        }
    }

    post {
        success {
            echo 'Terraform CI pipeline completed successfully!'
        }

        failure {
            echo 'Terraform CI pipeline failed!'
        }
    }
}
