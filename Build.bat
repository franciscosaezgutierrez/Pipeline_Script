echo "Building the Project : %date% : %time%"
SET JAVA_HOME="C:\Program Files\Java\jdk1.8.0_77"
SET JAVA_JRE="C:\Program Files\Java\jre1.8.0_77"
git clone git://github.com/franciscosaezgutierrez/Spring3MVC.git C:\SpringMVC
cd C:\SpringMVC
C:\apache-maven-3.6.0\bin\mvn package
