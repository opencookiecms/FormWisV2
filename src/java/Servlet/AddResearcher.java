/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Dao.Datacontroller;
import Model.Researcher;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author anaqi
 */
@WebServlet(
        name = "AddResearcher",
        urlPatterns = { "/AddResearcher"},
        loadOnStartup = 1
)

@MultipartConfig(fileSizeThreshold=1024*1024*2, 
maxFileSize=1024*1024*10, 
maxRequestSize=1024*1024*50)
public class AddResearcher extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       String name = request.getParameter("name");
       String institute = request.getParameter("institute");
       String field = request.getParameter("field");
       String email = request.getParameter("email");
       String phoneNo = request.getParameter("phoneNo");
       String username = request.getParameter("username");
       String password = request.getParameter("password");
        try{
   
            Part filePart = request.getPart("profile_pic");
            
            String photo="";
            String path="C:\\xampp\\htdocs\\img\\profile";
            
            File file=new File(path);
            file.mkdir();
            String fileName = getSubmittedFileName(filePart);
            
            OutputStream out = null;
            InputStream filecontent = null;
            
            PrintWriter writer = response.getWriter();
            
            
            try{
                out = new FileOutputStream(new File(path + File.separator + fileName));
                filecontent = filePart.getInputStream();
             
                int read = 0;
                final byte[] bytes = new byte[8192];
                
                while((read = filecontent.read(bytes)) != -1){
                    out.write(bytes, 0, read);
                    photo=path+"/"+fileName;
                  
                    
                }
            
                //add fish data with image upload
                Researcher researcher = new Researcher(0,name,field,institute,email,phoneNo,username,password,fileName);
                Datacontroller dc = new Datacontroller();
                dc.addResearcher(researcher);
                
                response.sendRedirect("/FormWisV2/AllResearcher");
 
            }catch(IOException e){
                //add fish data without image upload
                Researcher researcher = new Researcher(0,name,institute,field,email,phoneNo,username,password,fileName);
                Datacontroller dc = new Datacontroller();
                dc.addResearcher(researcher);
                
                response.sendRedirect("/FormWisV2/AllResearcher"); 
            }
            
        }catch(IOException | ServletException e){
             
        }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    
    private static String getSubmittedFileName(Part part) {
    for (String cd : part.getHeader("content-disposition").split(";")) {
        if (cd.trim().startsWith("filename")) {
            String fileName = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
            return fileName.substring(fileName.lastIndexOf('/') + 1).substring(fileName.lastIndexOf('\\') + 1); // MSIE fix.
        }
    }
    return null;
   }

}
