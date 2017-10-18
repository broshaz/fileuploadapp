package com.waratek;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class FileUploadServlet extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
             throws ServletException, IOException {
         boolean isMultipart = ServletFileUpload.isMultipartContent(request);
  
        response.getOutputStream().println("<html><body>");

         if (isMultipart) {
          // Create a factory for disk-based file items
          FileItemFactory factory = new DiskFileItemFactory();

          // Create a new file upload handler
          ServletFileUpload upload = new ServletFileUpload(factory);
  
             try {
              // Parse the request
              List /* FileItem */ items = upload.parseRequest(request);
                 Iterator iterator = items.iterator();
                 while (iterator.hasNext()) {
                     FileItem item = (FileItem) iterator.next();
                     if (!item.isFormField()) {
                         String fileName = item.getName();  
                         String root = getServletContext().getRealPath("/");
                         File path = new File(root + "/uploads");
                         if (!path.exists()) {
                             boolean status = path.mkdirs();
                         }
  
                         File uploadedFile = new File(path + "/" + fileName);
                         System.out.println("File uploaded. Path="+uploadedFile.getAbsolutePath());
                         item.write(uploadedFile);

                         response.setHeader("Cache-Control", "private, max-age=1");
                         response.setContentType("text/html; charset=UTF-8");
                         response.getOutputStream().println("File uploaded.");
                         response.getOutputStream().println("<br/><br/>Access the file here: <a href=\"uploads/"+fileName+"\">"+fileName+"</a>");
                         response.getOutputStream().flush();

                     }
                 }
             } catch (FileUploadException e) {
                 e.printStackTrace();
             } catch (Exception e) {
                 e.printStackTrace();
             }
         }
         response.getOutputStream().println("</body></html>");
     }

}

