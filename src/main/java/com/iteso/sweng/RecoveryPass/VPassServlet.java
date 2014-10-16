package com.iteso.sweng.RecoveryPass;

import com.iteso.sweng.Profile.BDProfile;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;


/**
 * Created by Daniel on 13/10/14.
 */
public class VPassServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession respuesta = request.getSession(true);
            String npass = request.getParameter("npass");
            String cpass = request.getParameter("cpass");
            String email = respuesta.getAttribute("sessionVCode").toString();
            BDProfile a = new BDProfile();

            respuesta.setAttribute("error", "");

            //Si E-mail vacio
            if (npass.isEmpty() || cpass.isEmpty()) {
                respuesta.setAttribute("error", "You need to put the new password.");

            } else {
                //No hay campos vacios, se comparan las cadenas
                if (!npass.equals(cpass)) {
                    respuesta.setAttribute("error", "The passwords don't match.");

                } else {
                    //Las constraseñas si coinciden
                    try {
                        a.conectar();

                        a.changePass(email, npass);
                        respuesta.setAttribute("ok2", "DONE: The password has been changed.");
                        respuesta.setAttribute("sessionVCode2", "V");
                        a.desconectar();

                    } catch (Exception e) {}
                }
            }

            response.setContentType("text/html");
            RequestDispatcher rd=request.getRequestDispatcher("RecoveryPass/vpass.jsp");
            rd.forward(request, response);

        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
