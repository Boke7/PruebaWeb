
package com.fpmislata.daw2.banco.datos;

import java.sql.Connection;
import java.sql.SQLException;


public interface ConnectionFactory {
    
    public Connection getConnection() throws SQLException;
  
}
