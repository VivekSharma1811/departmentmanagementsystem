package com.javatpoint.mypack;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class attendencedao {
	public static int register(attendence a) {
	int i=0; 
	
	 Configuration cfg=new Configuration();

     cfg.configure("attendence.cgf.xml");
	  
	SessionFactory factory = cfg.buildSessionFactory();
	Session session = factory.openSession();  
	Transaction t = session.beginTransaction();   
	  
	i=(Integer)session.save(a);    
	  
	t.commit();    
	session.close();    
	    
	return i;    
	   
	 }    
	}



