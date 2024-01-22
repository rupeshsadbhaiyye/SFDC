public class PostionRollUpSummerTriggerHandller {
    Public Static Void Afterinserthandler(List<Position__c> Newposlist){
        set<ID> hringmangerIDs=new Set<ID>();
        for(Position__c Pos: Newposlist){
            if(String.isnotblank(Pos.Hiring_manager_lookup__c)){
                hringmangerIDs.add(Pos.Hiring_manager_lookup__c);
            }
        }
        PostionRollUpSummerTriggerService.Servicetest(hringmangerIDs);
    }
    Public Static Void AfterUpdatehandler(List<Position__c> Newposlist,Map<ID,Position__c> oldmap){
        set<ID> hringmangerIDs=new Set<ID>();
        for(Position__c Pos: Newposlist){
            if(String.isnotblank(Pos.Hiring_manager_lookup__c) && oldmap.get(pos.Id).Active__c!=pos.Active__c){
                hringmangerIDs.add(Pos.Hiring_manager_lookup__c);
            }
            else if(oldmap.get(Pos.id).Hiring_manager_lookup__c !=pos.Hiring_manager_lookup__c){
                hringmangerIDs.add(oldmap.get(Pos.id).Hiring_manager_lookup__c);
                hringmangerIDs.add(Pos.Hiring_manager_lookup__c);
            }
        }
        PostionRollUpSummerTriggerService.Servicetest(hringmangerIDs);
    }
    Public Static Void AfterDeletehandler(List<Position__c> Oldposlist){
        set<ID> hringmangerIDs=new Set<ID>();
        for(Position__c Pos: Oldposlist){
            if(String.isnotblank(Pos.Hiring_manager_lookup__c)){
                hringmangerIDs.add(Pos.Hiring_manager_lookup__c);
            }
        }
        PostionRollUpSummerTriggerService.Servicetest(hringmangerIDs);
    }
    Public Static Void AfterUnDeletehandler(List<Position__c> Newposlist){
        set<ID> hringmangerIDs=new Set<ID>();
        for(Position__c Pos: Newposlist){
            if(String.isnotblank(Pos.Hiring_manager_lookup__c)){
                hringmangerIDs.add(Pos.Hiring_manager_lookup__c);
            }
        }
        PostionRollUpSummerTriggerService.Servicetest(hringmangerIDs);
    }
    
}