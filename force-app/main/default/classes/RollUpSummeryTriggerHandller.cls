public class RollUpSummeryTriggerHandller {
    Public static void AfterInserthandller(List<Contact> NewContacts){
        Set<ID> accountids=new Set<ID>();
        for(Contact Con : NewContacts){
            if(string.isnotblank(Con.AccountId)){
                accountids.add(Con.AccountId);
            }
        }
        RollUpSummeryTriggerService.ActiveContact(accountids);
    }
    Public static void AfterUpdatehandller(List<Contact> NewContacts,Map<ID,Contact> Mapofoldrecords){
        Set<ID> accountids=new Set<ID>();
        for(Contact Con : NewContacts){
            if(string.isnotblank(Con.AccountId) && Mapofoldrecords.get(con.id).Active__c != con.Active__c){
                accountids.add(Con.AccountId);
            }
            else if(Mapofoldrecords.get(con.id).AccountID != Con.AccountId){
                accountids.add(Con.AccountId);
                accountids.add(Mapofoldrecords.get(con.id).Accountid);
            }
        }
        RollUpSummeryTriggerService.ActiveContact(accountids);
    }
    Public Static Void AfterDeleteHandller(List<Contact> OldCon){
        Set<ID> accountids=new Set<ID>();
        for(Contact Con : OldCon){
            if(string.isnotblank(Con.AccountId)){
                accountids.add(Con.AccountId);
            }
        }
        RollUpSummeryTriggerService.ActiveContact(accountids);
    }
    Public Static Void AfterUnDelete(List<contact> NewContacts){
        Set<ID> accountids=new Set<ID>();
        for(Contact Con : NewContacts){
            if(string.isnotblank(Con.AccountId)){
                accountids.add(Con.AccountId);
            }
        }
        RollUpSummeryTriggerService.ActiveContact(accountids);
    }
    
}