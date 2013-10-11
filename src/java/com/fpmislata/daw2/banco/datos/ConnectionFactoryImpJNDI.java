package com.fpmislata.daw2.banco.datos;

import javax.sql.DataSource;
import java.sql.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;

public class ConnectionFactoryImpJNDI implements ConnectionFactory {

    DataSource datasource;
    @Override
    public Connection getConnection() throws SQLException {
        try {
            InitialContext initCtx = new InitialContext();;
            Context envCtx = (Context) initCtx.lookup("java:comp/env");
            datasource = (DataSource) envCtx.lookup("jdbc/Banco");
        } catch (NamingException ex) {
            Logger.getLogger(ConnectionFactoryImpJNDI.class.getName()).log(Level.SEVERE, null, ex);
        }
            return datasource.getConnection();
    }
}
