public class Pagination {
public ApexPages.StandardSetController setController
{get
        {
            if(setController == Null)
            {
                setController = new ApexPages.StandardSetController(Database.getQueryLocator([Select id, name, rating, industry, annualrevenue, phone, fax, active__C, type,customerpriority__C from Account Order by name]));                               
            } 
            return setController;                    
        }
        set;
    }
     Public List<Account> getAccounts()
    {
        setController.SetPageSize(5);
        return (List<Account>) setController.GetRecords();
    }
}