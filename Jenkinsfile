pipeline {
    agent none
    stages {
	
	stage('Non-Parallel Stage') {
	    agent {
                        label "master"
                }
        steps {
                echo 'This stage will be executed first'
                }
        }

	
        stage('Run') {
            parallel {
                stage('build') {
                   agent {
                        label "build"
                    }
                    steps {
			 sleep 10   
			 echo "build on Parallel"   
			 git 'https://github.com/franciscosaezgutierrez/Spring3MVC.git'
                         bat label: '', script: '''set JAVA_JRE=C:\\Program Files\\Java\\jre1.8.0_77 set JAVA_HOME=C:\\Program Files\\Java\\jdk1.8.0_77 mvn clean package'''
			 archiveArtifacts '**/*.war'   
                    }
                    
                }
                stage('deploy') {
                    agent {
                        label "deploy"
                    }
                    steps {
			    	sleep 10
			    	bat 'Deploy.bat'   
				echo "deploy on Parallel"
			}
                }
		stage('quality') {
                    agent {
                        label "quality"
                    }
                    steps {
			    	sleep 10
			    	 bat 'Quality.bat'   
				echo "quality on Parallel"
			}
                }
            }
        }
    }
}
