package com.iteso.sweng.Profile;

/**
 * Created by Daniel on 10/11/14.
 */

import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;


@RunWith(MockitoJUnitRunner.class)
public class CancelEditProfileServletTest  {

    private CancelEditProfileServlet servlet = new CancelEditProfileServlet();

    @Mock private HttpServletRequest request;
    @Mock private HttpServletResponse response;
    @Mock private HttpSession session;
    @Mock private RequestDispatcher rd;


    @Before
    public void setUp() throws ServletException, IOException {
        when(request.getSession(true)).thenReturn(session); //Requerido before
        when(request.getRequestDispatcher("Profile/editprofile.jsp")).thenReturn(rd); //Requerido para continuar
    }

    @Test
    public void CancelOk() throws ServletException, IOException, SQLException, ClassNotFoundException {
        /* perform action */
        servlet.processRequest(request, response); //Puede ser get o do

        /*Verify*/
        verify(session).setAttribute("error", "hola");
        verify(session).setAttribute("ok", null);
        verify(session).setAttribute("ok2", null);

    }
}