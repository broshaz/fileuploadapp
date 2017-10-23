<html>
<body>
<h2>Instrumentation Agent Sensitive Data Exposure via File Upload</h2>
<b>Contrast-rO0 Instrumentation Agent Configuration</b>
<hr/>
<br/>
<%
        try {
            Class agent = ClassLoader.getSystemClassLoader()
                    .loadClass("com.contrastsecurity.rO0.RO0Agent");
            java.lang.reflect.Field configField = agent.getField("config");
            Object configObj = configField.get(null);
            out.println(configObj.toString().replaceAll(" ","<br/>&nbsp;"));
        }
        catch(Exception e){
            e.printStackTrace();
            out.println("<h2>No Instrumentation Agent found.</h2>");
        }
%>
</body>
</html>
