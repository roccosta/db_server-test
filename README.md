
# Auto Practice Website Test Automation

## Setting the environment for tests execution:

 - Download or clone this entire project.
   
 - Java installation – Install the latest version of JDK for your
   machine.
   
 - Ruby installation – Install the latest version of Ruby for your
   machine.
   
 - Set the JAVA path in environment variable JAVA_HOME
   
 - Install Chromedriver in you machine, following this guide:

	http://chromedriver.chromium.org/getting-started

	In Terminal, navigate to the folder where the feature file is situated and install the gem Bundler with the following command:

		gem install bundler
 
	After instalation ends, run the "bundle install" command. This will install all dependencies the project needs to run.

	After the installation ends, type the following command to execute automation:

		cucumber
 
	This command will start the automation in the terminal, and will execute the automation on the browser.
Also a tag is added as an example for excuting a specific scenario.


		cucumber -t @buy_something
