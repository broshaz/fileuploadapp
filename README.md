Sample JSP web application vulnerable to file upload. Useful for PoCs.

It can be used to demonstrate the effects of an application vulnerability (such as file upload) to the deployed Instrumentation Agent.

# Build

mvn clean package

# Set up

1) Download Contrast-rO0 agent
2) Run Tomcat (or any other app server) with the agent and a sample agent configuration file


# Access

http://localhost:8080/SampleFileUploadApp/

# Exploit

Upload each payload and access them from the browser.

     
# Legal Disclaimer

This project is made for educational, instructional and ethical testing purposes only.
Do not use it in a production environment.
Usage for attacking targets without prior mutual consent is illegal.
It is the end user's responsibility to obey all applicable local, state and federal laws.
