public class RollUpSummeryTriggerService {
    Public static void ActiveContact(Set<ID> accountids){
        Map<ID,account> lst=new Map<ID,account>();
        List<AggregateResult> Result=[SELECT AccountId, Count(ID) totalcontact FROM Contact Where Active__c=True AND Accountid IN :accountids GROUP BY AccountId];
        for(AggregateResult Res: Result){
            string accid=string.valueof(Res.get('AccountId'));
            Integer totalcount=Integer.valueof(Res.get('totalcontact'));
            account acc=new account();
            acc.id=accid;
            acc.Active_Contacts__c=totalcount;
            lst.Put(acc.id,acc);
        }
        for(ID accid : accountids){
            if(!lst.Containskey(accid)){
                account acc1=new account();
                acc1.id=accid;
                acc1.Active_Contacts__c=0;
                lst.put(acc1.id,acc1);
            }
        }
        update lst.values();
    }
    
}