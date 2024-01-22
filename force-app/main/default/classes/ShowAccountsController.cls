public class ShowAccountsController {
 Public List<Account> lstAccounts{get;set;}
    
    Public void GetAllAccounts()
    {
        lstAccounts = new List<Account>();
        
        lstAccounts = [Select id, name, rating, industry, annualrevenue, phone, fax,createddate,
                                                    customerpriority__C, active__C, type, ownership
                                                            from Account
                                                                    Order by createddate desc];
    }
}