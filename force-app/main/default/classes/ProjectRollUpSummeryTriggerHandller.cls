public class ProjectRollUpSummeryTriggerHandller {
    Public static void AfteInsertHandller(List<Project__c> NewProjectlist){
        set<ID> accountids=new set<ID>();
        For(Project__c Pr: NewProjectlist){
            if(String.isnotblank(pr.Account__c)){
                accountids.add(pr.Account__c);
            }
        }
        ProjectRollUpSummeryTriggerService.Triggerservice(accountids);
    }
    Public static void AfteUpdatetHandller(List<Project__c> NewProjectlist,Map<ID,Project__c> Mapofoldproject){
        set<ID> accountids=new set<ID>();
        For(Project__c Pr: NewProjectlist){
            /*if(String.isnotblank(pr.Account__c)){
accountids.add(pr.Account__c);
}else*/ if(Mapofoldproject.get(pr.Id).Account__c != pr.Account__c && string.isnotblank(pr.Account__c)){
    accountids.add(Mapofoldproject.get(pr.Id).Account__c);
    accountids.add(pr.Account__c);
} 
        }
        ProjectRollUpSummeryTriggerService.Triggerservice(accountids);
    }
    Public static void AfteDeleteHandller(List<Project__c> NewProjectlist){
        set<ID> accountids=new set<ID>();
        For(Project__c Pr: NewProjectlist){
            if(String.isnotblank(pr.Account__c)){
                accountids.add(pr.Account__c);
            }
        }
        ProjectRollUpSummeryTriggerService.Triggerservice(accountids);
    }
    Public static void AfteUnDeleteHandller(List<Project__c> NewProjectlist){
        set<ID> accountids=new set<ID>();
        For(Project__c Pr: NewProjectlist){
            if(String.isnotblank(pr.Account__c)){
                accountids.add(pr.Account__c);
            }
        }
        ProjectRollUpSummeryTriggerService.Triggerservice(accountids);
    }
}