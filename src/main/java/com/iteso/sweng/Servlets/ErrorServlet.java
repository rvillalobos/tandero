package com.iteso.sweng.Servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Alejandro on 15/10/2014.
 */
public class ErrorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");/*Open Error page for user */
        RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
        rd.forward(request,response);

    }
}