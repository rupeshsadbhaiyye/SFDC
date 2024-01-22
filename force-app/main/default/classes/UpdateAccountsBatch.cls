Global class UpdateAccountsBatch implements Database.Batchable<SObject>
{
	Global Database.QueryLocator Start(Database.BatchableContext bContext)
    {
        string accountsQuery = 'Select id, name, rating, industry, annualrevenue, active__C from Account';
        return Database.getQueryLocator(accountsQuery);
    }
    
    Global void Execute(Database.BatchableContext bContext, List<SObject> recordsToProcess)
    {
        if(! recordsToProcess.isEmpty())
        {
            List<Account> accountRecordsToUpdate = new List<Account>();
            
            for(SObject obj : recordsToProcess)
            {
                // TypeCase the SObject Type into Account Type.
              	Account acc = (Account) obj;  
                
                // Assign the New Values..
                	acc.Rating = 'Hot';		
                	acc.Industry = 'Banking';
                	acc.AnnualRevenue = 4500000;
                	acc.Active__c = 'Yes';
                
                // Add the record to Collection..
                accountRecordsToUpdate.Add(acc);
            }
            
            // Update the Changes back to the Database..
            if(! accountRecordsToUpdate.isEmpty())
            {
                Update accountRecordsToUpdate;
            }
        }
    }
    
    Global void Finish(Database.BatchableContext bContext)
    {
        System.debug('Batch Job ID is....: '+ bContext.getJobId());
        
        // Get the Status of the Batch Job through Programming..
        AsyncApexJob jobDetails = [Select id, status, totalJobItems, jobItemsProcessed,
                                  					NumberOfErrors, CreatedBy.Email
                                  							from AsyncApexJob
                                  									Where id =: bContext.getJobId()];
       
       // Call the Method to Send the Email Alert.. 
       MessagingHelper.SendBatchJobStatusAlert(jobDetails, 'UpdateAccountsBatch');
    }
}