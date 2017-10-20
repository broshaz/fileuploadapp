<html>
<body>
<h2>File Upload App</h2>

    <h1>File Upload Form</h1> 
    <fieldset>
        <legend>Upload File</legend>
        <form action="fileuploadservlet" method="post" enctype="multipart/form-data">
            <label for="fileName">Select File: </label>
            <input id="fileName" type="file" name="fileName" size="30"/><br/>            
            <input type="submit" value="Upload"/>
        </form>
    </fieldset>

</body>
</html>
