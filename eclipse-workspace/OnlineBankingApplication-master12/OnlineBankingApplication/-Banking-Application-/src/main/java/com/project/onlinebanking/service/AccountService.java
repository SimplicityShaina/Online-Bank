package com.project.onlinebanking.service;

import java.util.List;

import com.project.onlinebanking.domain.Account;

public interface AccountService {
	public void save(Account acc);
	public void updateById(long accno);
	public void deleteById(long accno);
	public Account getById(long accno);
	

	public boolean exists(long accno);
	public List<Account> findAllAccount();


	
	

}
