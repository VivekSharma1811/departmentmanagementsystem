package com.javatpoint.mypack;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class feedbackdao {
	public static int register(feedback u){    
		 int i=0; 
		 StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("feedback.cfg.xml").build();  
		 Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();
		 SessionFactory factory = meta.getSessionFactoryBuilder().build();  
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();   
		
		i=(Integer)session.save(u);    
		  
		t.commit();   
		session.close();    
		    
		return i;    
		   
		 }    

}


