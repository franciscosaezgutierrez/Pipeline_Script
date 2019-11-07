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
                    }
                    
                }
                stage('deploy') {
                    agent {
                        label "deploy"
                    }
                    steps {
			    	sleep 10
				echo "deploy on Parallel"
			}
                }
		stage('quality') {
                    agent {
                        label "quality"
                    }
                    steps {
			    	sleep 10
				echo "quality on Parallel"
			}
                }
            }
        }
    }
}
