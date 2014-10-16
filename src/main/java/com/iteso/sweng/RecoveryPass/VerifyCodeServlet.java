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
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by Daniel on 13/10/14.
 */
public class VerifyCodeServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession respuesta = request.getSession(true);
            String email = request.getParameter("Remail");
            String code = request.getParameter("code");
            Pattern p = Pattern.compile("^([0-9a-zA-Z]([_.w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-w]*[0-9a-zA-Z].)+([a-zA-Z]{2,9}.)+[a-zA-Z]{2,3})$");
            Matcher m = p.matcher(email);
            BDProfile a = new BDProfile();

            respuesta.setAttribute("error", "");

            //Si E-mail vacio
            out.println(email);
            if (email.isEmpty() || code.isEmpty()) {
                respuesta.setAttribute("error", "You need to put your E-mail & the Code.");

            } else {
                //No hay campos vacios, veo que la direccion de email sea válida
                if (!m.find()) {
                    respuesta.setAttribute("error", "The E-mail not is valid.");

                } else {
                    //La direccion de email si es valida
                    try {
                        a.conectar();
                        if (a.ifExistAccount(email)) {
                            //La cuenta existe
                            //Se verifica si existe codigo generado
                            if (a.ifExistCode(email)) {
                                //Se verifica que el codigo es correcto
                                if (a.ifCodeIsCorrect(code, email)) {

                                    respuesta.setAttribute("sessionVCode", email);
                                } else
                                    respuesta.setAttribute("error", "The code is wrong.");

                            } else
                                respuesta.setAttribute("error", "The account doesn't have a code.");

                        } else
                            respuesta.setAttribute("error", "The account doesn't exist.");


                        a.desconectar();

                    } catch (Exception e) {}
                }
            }

            response.setContentType("text/html");
            RequestDispatcher rd=request.getRequestDispatcher("RecoveryPass/verifycode.jsp");
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
