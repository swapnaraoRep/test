package com.HRMS.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.HRMS.Model.EmployeeVO;
import com.HRMS.dao.LoginDao;

@Service
public class LoginServiceImpl implements LoginService {


	
	@Autowired
	LoginDao loginDao;
	
	public void setLoginDao(LoginDao loginDao) {
		this.loginDao = loginDao;
	}

	@Override
	@Transactional
	public EmployeeVO validateUser(String uname, String password) {
		// TODO Auto-generated method stub
		System.out.println("serviceImpl:::"+uname+""+password);
		EmployeeVO employee=loginDao.validateUser(uname, password);
		return employee;
	}

	

}
