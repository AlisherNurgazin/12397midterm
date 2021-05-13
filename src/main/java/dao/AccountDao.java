package dao;

import entity.Account;

public interface AccountDao {
    public void insertAccount(Account acc);
    public Account getAccount(String username, String password);
    public Account getAccount(String username);
    public boolean ifExists(String username);
}
