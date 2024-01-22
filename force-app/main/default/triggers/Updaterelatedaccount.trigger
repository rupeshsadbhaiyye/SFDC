trigger Updaterelatedaccount on Project__c (After Update) 
{
	
    List<Id> accountIds = new List<Id>();
    
    
    for (Project__c project : Trigger.new) {
        
        if (project.Status__c == 'Completed' && Trigger.oldMap.get(project.Id).Status__c != 'Completed') {
            
            accountIds.add(project.Account__c);
        }
        
    }
    
    
    List<Account> accountsToUpdate = [SELECT Id, Rating FROM Account WHERE Id IN :accountIds];
    for (Account account : accountsToUpdate) {
        account.Rating = 'Hot'; 
    }
    
    
    update accountsToUpdate;
}