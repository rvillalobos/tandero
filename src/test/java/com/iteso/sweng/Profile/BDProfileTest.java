package com.iteso.sweng.Profile;

/**
 * Created by Daniel on 12/10/14.
 */

import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.assertEquals;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;


import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

public class BDProfileTest {

    public Connection conexion;
    public String userDb;
    public String passDb;

    @Before
    public void setUp(){
        userDb = "root";
        passDb = "";
    }

    @Test
    public void UsuarioNoExiste() throws SQLException, ClassNotFoundException {
        BDProfile mockProfile = mock(BDProfile.class);
        mockProfile.conectar();
        when(mockProfile.getContact("example@example.com")).thenReturn(null);
        mockProfile.desconectar();

    }

}
