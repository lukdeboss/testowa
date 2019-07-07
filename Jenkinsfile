
// uproszczona wersja gdzie tworzy
// ma pytac przy zmianie
// oraz zatrzymuje sie przed kasowaniem
pipeline {
    agent { label 'glowne' }
    parameters {
        choice(
            choices: ['create' , 'destroy'],
            description: 'tworzenie lub kasowanie infrastruktury',
            name: 'CACTION')
    }
    environment {
        // zmienne glowne dla wszystkich stages
        zmienna2 = 'jakas zmienna'
    }
    stages {
        stage('materials') {
            // zmienne tylko dla danego stage
            environment {
               zmienna3 = 'jasdfasdf'
            } 
            steps {
                sh '/bin/ciag-tf-klucze'
                echo 'sciaganie repos'
                sh 'mv aws-tf-my4 00-aws-tf-my4.tf'
                sh 'ls -al'
            }
        }

        stage('terraform init') {
            steps {
                // move it to separate stage with when statement
                sh "terraform init"
            }
        }
        stage('terraform plan') {
            steps {
                sh "cat 00-aws-tf-my4.tf"
                // move it to separate stage with when statement
                // sh "terraform init"
                sh "terraform plan"
            }
        }

        stage('Deploy approval') {
            steps {
               input "czy nie ma jakichs zmian przypadkowych?"
            }
        }

        stage('terraform apply') {
            when {
               expression { params.CACTION == 'create' }
            }
            steps {
                sh "terraform apply --auto-approve"
                // to pokazuje outputs ktore i tak sa automatycznie pokazywane
                // sh "terraform output"
            }
        }



        stage('terraform plan destroy') {
            steps {
                sh "terraform plan --destroy"
            }
        }


        stage('Deploy destroy approval') {
            steps {
               input "czy na pewno skasowac?"
            }
        }

        stage('terraform destroy') {
            steps {
                sh "terraform destroy --auto-approve"
                // to pokazuje outputs ktore i tak sa automatycznie pokazywane
                // sh "terraform output"
            }
        }
    }
}


