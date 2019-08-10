FROM tomcat:latest


RUN mkdir -p  /trovix.com/data/customers/cupdemu 

# Add image configuration and scripts
ADD cupd-emulator.properties /trovix.com/data/customers/cupdemu/cupd-emulator.properties
ADD cupd-emulator.war $CATALINA_HOME/webapps/cupd-emulator.war






