Usage:

*** NOTE ***

	In the java class DatabaseConnection.java 
	there are two variables for MySQL that need to be updated before running the application.
	 			USERNAME = "MySQL_username";
	 			PASSWORD = "MySQL_password";
	located at /rateMyClassmate/src/Model/DatabaseConnection.java

*** NOTE ***

build.properties
	- Update sq.user and sql.password to your username and password for the mysql instance running on your workstation

	- Update tomcat.user and tomcat.password to the username and password of the "manager-script" role listed in the tomcat-users.xml file located at $CATALINA_HOME/conf/tomcat-users.xml

	- Update tomcat.url to the localhost url and port number your tomcat instance is running under

	- Update sql.url to the localhost url and port number your mysql instance is running under

	- Update webapps.dir to point to the webapps directory under tomcat located at $CATALINA_HOME/webapps

Running Ant Script

	Deploying Webapp
		- Make sure that your Tomcat instance is running
		- Make sure that your MySQL instance is running
		- Navigate to /rateMyClassmate/ant
		- Run the ant command in the ant directory to deploy application
			- Navigate to http://localhost:${tomcat_port}/rateMyClassmate/
			- Or localhost:${tomcat_port}/manager/rateMyClassmate
	Un-Deploying Webapp
		- Run "ant undeploy" from the ant directory located at /rateMyClassmate/ant

Open “Demo Script”.  This will describe how to recreate the live demo for this application.
