FROM tomcat:latest
#FROM inovatrend/tomcat7-java7


RUN mkdir -p  /trovix.com/data/customers/cupdemu 

# Add image configuration and scripts
ADD cupd-emulator.properties /trovix.com/data/customers/cupdemu/cupd-emulator.properties
ADD cupd-emulator.war $CATALINA_HOME/webapps/cupd-emulator.war
EXPOSE 8080






