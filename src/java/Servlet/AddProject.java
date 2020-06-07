/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Dao.Datacontroller;
import Model.Project;
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
        name = "AddProject",
        urlPatterns = { "/AddProject"},
        loadOnStartup = 1
)

@MultipartConfig(fileSizeThreshold=1024*1024*2, 
maxFileSize=1024*1024*10, 
maxRequestSize=1024*1024*50)
public class AddProject extends HttpServlet {

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

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
       
       String idtmp = request.getParameter("project_period");
       int project_period = Integer.parseInt(idtmp);
       String rtmp = request.getParameter("rID");
       int rID = Integer.parseInt(rtmp);
       String project_name = request.getParameter("project_name");
     
       String plocation = request.getParameter("plocation");
       
       try{
   
            Part filePart = request.getPart("document");
            
            String photo="";
            String path="C:\\xampp\\htdocs\\assets\\doc";
            
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
                Project project = new Project(0,project_name,project_period,plocation,fileName,rID);
                Datacontroller dc = new Datacontroller();
                dc.addProject(project);
                
                response.sendRedirect("/FormWisV2/AllProjectList");
 
            }catch(IOException e){
                //add fish data without image upload
                Project project = new Project(0,project_name,project_period,plocation,fileName,rID);
                Datacontroller dc = new Datacontroller();
                dc.addProject(project);
                
                response.sendRedirect("/FormWisV2/AllProjectList"); 
            }
            
        }catch(IOException | ServletException e){
             System.out.print(e);
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
