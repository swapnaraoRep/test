package com.HRMS.dao;

import java.util.List;

import com.HRMS.Model.EmployeeVO;

public interface LoginDao {
	
	public EmployeeVO validateUser(String uname,String password);
	
}
