/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Dao.Datacontroller;
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
        name = "EditProject",
        urlPatterns = {"/EditProject"},
        loadOnStartup = 1
)

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50)
public class EditProject extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            String idtmp = request.getParameter("project_id");
            int project_id = Integer.parseInt(idtmp);

            String idtmps = request.getParameter("project_period");
            int project_period = Integer.parseInt(idtmps);

            String rtmp = request.getParameter("rId");
            int rId = Integer.parseInt(rtmp);

            String project_name = request.getParameter("project_name");

            String plocation = request.getParameter("plocation");
            String tempdoc = request.getParameter("doctemp");
            Part filePart = request.getPart("document");

            String photo = "";
            String path = "C:\\xampp\\htdocs\\assets\\doc";

            File file = new File(path);
            file.mkdir();
            String fileName = getSubmittedFileName(filePart);

            OutputStream out = null;
            InputStream filecontent = null;

            PrintWriter writer = response.getWriter();

            try {
                out = new FileOutputStream(new File(path + File.separator + fileName));
                filecontent = filePart.getInputStream();

                int read = 0;
                final byte[] bytes = new byte[8192];

                while ((read = filecontent.read(bytes)) != -1) {
                    out.write(bytes, 0, read);
                    photo = path + "/" + fileName;

                }

                Datacontroller dc = new Datacontroller();
                dc.projectEdit(project_id, project_name, project_period, plocation, fileName);

                response.sendRedirect("/FormWisV2/AllProjectList");
             
                System.out.print(project_id);
                System.out.print(project_name);
                System.out.print(project_period);
                System.out.print(plocation);
                System.out.print(fileName);
                System.out.print(rId);

            } catch (IOException e) {
                Datacontroller dc = new Datacontroller();
                dc.projectEdit(project_id, project_name, project_period, plocation, tempdoc);

                response.sendRedirect("/FormWisV2/AllProjectList");
                System.out.print(project_id);
                System.out.print(project_name);
                System.out.print(project_period);
                System.out.print(plocation);
                System.out.print(tempdoc);
                System.out.print(rId);
            }

        } catch (IOException | ServletException e) {
            System.out.print("test" + e);
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
