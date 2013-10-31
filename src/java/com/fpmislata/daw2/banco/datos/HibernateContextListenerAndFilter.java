/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fpmislata.daw2.banco.datos;

import com.fpmislata.banco.datos.HibernateUtil;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 *
 * @author alumno
 */
public class HibernateContextListenerAndFilter implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("Hola");
        /*HibernateUtil.buildSessionFactory();*/
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("Adiós");
        /*HibernateUtil.closeSessionFactory();*/
    }

    
}
