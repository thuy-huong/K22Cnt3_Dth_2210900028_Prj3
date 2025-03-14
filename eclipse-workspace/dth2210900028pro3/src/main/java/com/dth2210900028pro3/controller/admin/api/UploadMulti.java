package com.dth2210900028pro3.controller.admin.api;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/uploadmulti")
@MultipartConfig
public class UploadMulti extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        
        try {
            String name = request.getParameter("name");
            Part part = request.getPart("image");
            String realPath = request.getServletContext().getRealPath("/uploads");
            String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();

            // Ensure the uploads directory exists
            if (!Files.exists(Paths.get(realPath))) {
                Files.createDirectory(Paths.get(realPath));
            }

            part.write(realPath + "/" + filename);
            PrintWriter out = response.getWriter();
            out.print("<h2>" + name + "</h2>");
            out.print("<img src='uploads/" + filename + "'/>");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().print("<h2>File upload failed: " + e.getMessage() + "</h2>");
        }
    }
}