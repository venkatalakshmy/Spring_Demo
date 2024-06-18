package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.beans.Emp;

public class EmpDao {
	
	JdbcTemplate template;    
    
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}    
	public int save(Emp p){    
	    String sql="insert into book_inv.employeedata(name,email,type,gender,performanceScore) values('"+p.getName()+"','"+p.getEmail()+"','"+p.getType()+"','"+p.getGender()+"',"+p.getPerformanceScore()+")";    
	    return template.update(sql);    
	}    
	public int update(Emp p){    
	    String sql="update book_inv.employeedata set name='"+p.getName()+"', email='"+p.getEmail()+"',type='"+p.getType()+"',gender='"+p.getGender()+"',performanceScore="+p.getPerformanceScore()+" where id="+p.getId()+"";    
	    return template.update(sql);    
	}    
	public int delete(int id){    
	    String sql="delete from book_inv.employeedata where id="+id+"";    
	    return template.update(sql);    
	}    
	public Emp getEmpById(int id){    
	    String sql="select * from book_inv.employeedata where id=?";    
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Emp>(Emp.class));    
	}    
	public List<Emp> getEmployees(){    
	    return template.query("select * from book_inv.employeedata",new RowMapper<Emp>(){    
	        public Emp mapRow(ResultSet rs, int row) throws SQLException {    
	            Emp e=new Emp();    
	            e.setId(rs.getInt(1));    
	            e.setName(rs.getString(2));    
	            e.setEmail(rs.getString(3));    
	            e.setType(rs.getString(4));
	            e.setGender(rs.getString(5));
	            e.setPerformanceScore(rs.getFloat(6));
	            return e;    
	        }    
	    });    
	} 
}
