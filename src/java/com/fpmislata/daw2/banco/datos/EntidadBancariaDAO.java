package com.fpmislata.daw2.banco.datos;

import com.fpmislata.daw2.banco.negocio.EntidadBancaria;
import com.fpmislata.daw2.banco.negocio.TipoEntidadBancaria;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.InitialContext;
import javax.naming.NamingException;

public interface EntidadBancariaDAO {

    public EntidadBancaria read(int idEntidadBancaria) throws SQLException, NamingException;

    public void insert(EntidadBancaria entidadBancaria) throws SQLException, NamingException;

    public void update(EntidadBancaria entidadBancaria) throws SQLException, NamingException;

    public void delete(int idEntidadBancaria) throws SQLException, NamingException;

    public List<EntidadBancaria> findAll() throws SQLException, NamingException;

    public List<EntidadBancaria> findByCodigo(String codigo) throws SQLException, NamingException;
    
    public List<EntidadBancaria> findByNombre(String nombre) throws SQLException, NamingException;

     }
