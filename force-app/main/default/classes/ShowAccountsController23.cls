public class ShowAccountsController23 {
Public List<Account> lstAccounts{get;set;}
    
    Public void GetAllAccounts()
    {
        lstAccounts = new List<Account>();
        
        lstAccounts = [Select id, name,phone,fax from Account];
    }
}