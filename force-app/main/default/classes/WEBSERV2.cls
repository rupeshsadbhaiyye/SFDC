@restresource(urlmapping='/RED/*')
global class WEBSERV2 {
    @HttpGet()
	Global static List<Account> GetAccountsByIndustry()
    {
        Map<String,String> inputParams = RestContext.request.Params;
        
        List<Account> lstAccounts = [Select id, name, rating, industry, annualrevenue,
                                    phone, fax, type, customerPriority__C, active__C
                                    		from Account
                                    		Where industry =: inputParams.Get('indName')];
        
        return lstAccounts;
    }

}