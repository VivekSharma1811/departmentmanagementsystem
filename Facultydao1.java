package com.javatpoint.mypack;
	import java.sql.ResultSet;    
	import java.sql.SQLException;    
	import java.util.List;    
	import org.springframework.jdbc.core.BeanPropertyRowMapper;    
	import org.springframework.jdbc.core.JdbcTemplate;    
	import org.springframework.jdbc.core.RowMapper;    
	import com.javatpoint.mypack.Faculty;    
	    
	public class Facultydao1 {    
	JdbcTemplate template;    
	    
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}    
	public int save(Faculty p){    
	    String sql="insert into FacultyRegister(name,password,email,gender,phonenumber) values('"+p.getName()+"',"+p.getPassword()+",'"+p.getEmail()+"',"+p.getGender()+",'"+p.getPhonenumber()+"')";
	    return template.update(sql);    
	}    

	public int update(Faculty p){    
	    String sql="update FacultyRegister set name='"+p.getName()+"', passowrd="+p.getPassword()+",email='"+p.getEmail()+"',gender"+p.getGender()+",phonenumber'"+p.getPhonenumber()+"' where id="+p.getId()+"";    
	    return template.update(sql);    
	}    
	public int delete(int id){    
	    String sql="delete from FacultyRegister where id="+id+"";    
	    return template.update(sql);    
	}    
	public Faculty getFacultyById(int id){    
	    String sql="select * from FacultyRegister where id=?";    
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Faculty>(Faculty.class));    
	}    
	public List<Faculty> getFaculties(){    
	    return template.query("select * from FacultyRegister",new RowMapper<Faculty>(){    
	        public Faculty mapRow(ResultSet rs, int row) throws SQLException {    
            Faculty e=new Faculty();    
	            e.setId(rs.getInt(1));    
	            e.setName(rs.getString(2));    
	            e.setPassword(rs.getString(3));    
	            e.setEmail(rs.getString(4));    
	            e.setGender(rs.getString(5));
	            e.setPhonenumber(rs.getString(6));
	            return e;    
	            }    
	    });    
	}    
	}   
