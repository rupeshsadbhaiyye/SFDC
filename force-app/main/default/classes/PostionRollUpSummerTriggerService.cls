public class PostionRollUpSummerTriggerService {
    Public static void Servicetest(Set<ID> hringmangerIDs){
        Map<ID,Hiring_manager__c> newlist=new Map<ID,Hiring_manager__c>();
        List<AggregateResult> Results=[SELECT  Hiring_manager_lookup__c,Count(ID) Totalcount FROM Position__c
                                       Where Active__c=True AND Hiring_manager_lookup__c IN :hringmangerIDs 
                                       GROUP BY Hiring_manager_lookup__c];
        for(AggregateResult Result : Results){
            String hrid=string.valueof(Result.get('Hiring_manager_lookup__c'));
            Integer totalvalue=Integer.valueof(Result.get('Totalcount'));
            Hiring_manager__c Hr=new Hiring_manager__c();
            hr.Id=hrid;
            hr.Active_Position__c=totalvalue;
            newlist.put(hr.id,hr);
        }
        for(ID hrid : hringmangerIDs){
            if(!newlist.containskey(hrid)){
                Hiring_manager__c hr1=new Hiring_manager__c();
                hr1.Id=hrid;
                hr1.Active_Position__c=0;
                newlist.put(hr1.Id,hr1);
            }
        }
        update newlist.values();
    }
}