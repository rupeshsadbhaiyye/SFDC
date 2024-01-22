public class ProjectRollUpSummeryTriggerService {
    Public Static Void Triggerservice(Set<ID> accountids){
        Map<ID,Account> Mapofaccount=new Map<ID,Account>();
        List<AggregateResult> Results=[SELECT Account__c,Count(ID) totalcount FROM Project__c Where Account__c IN : accountids GROUP BY Account__c];
        For(AggregateResult Result : Results){
            String accountid=string.valueof(Result.get('Account__c'));
            Integer totalvalue=Integer.valueof(Result.get('totalcount'));
            Account acc=new Account();
            acc.Id=accountid;
            acc.Project_Count__c=totalvalue;
            Mapofaccount.put(acc.Id,acc);
        }
        For(ID accid1 : accountids){
            if(!Mapofaccount.containskey(accid1)){
                account acc1=new account();
                acc1.id=accid1;
                acc1.Project_Count__c=0;
                Mapofaccount.put(acc1.Id,acc1);
            }
        }
        update Mapofaccount.Values();
    }
    
}