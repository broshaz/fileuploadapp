Sample JSP web application vulnerable to file upload. Useful for PoCs.

It can be used to demonstrate the effects of an application vulnerability (such as file upload) to the deployed Instrumentation Agent.
Note that the same effects can also be achieved with other types of vulnerabilities such as type confusion, OGNL Injection, XML, JSON and Java deserialization, etc.

# Build

mvn clean package

# Set up

1) Download Contrast-rO0 agent
2) Run Tomcat (or any other app server) with the agent and a sample agent configuration file

Example system properties for the Contrast-rO0 agent:
-javaagent:/var/agent/contrast-rO0.jar -DrO0.reporting=true -DrO0.blacklist=true -DrO0.lists=/var/agent/blacklist-default

# Access

http://localhost:8080/SampleFileUploadApp/

# Exploit

Upload each payload and access them from the browser.
     
# Legal Disclaimer

This project is made for educational, instructional and ethical testing purposes only.
Do not use it in a production environment.
Usage for attacking targets without prior mutual consent is illegal.
It is the end user's responsibility to obey all applicable local, state and federal laws.

# Future work

1) Add support for more Instrumentation Agents.
2) Add more test cases to demonstrate the same effects with other vulnerabilities such as the ones mentioned in this README file.
