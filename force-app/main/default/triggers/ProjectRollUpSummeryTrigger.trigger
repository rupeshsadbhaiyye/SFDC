trigger ProjectRollUpSummeryTrigger on Project__c (before insert,after insert,before update,after update,before delete,after delete,after undelete) {
    //When any project is created or update or deleted or undeleted 
    //which is associated with account the then the count of Project_Count__c in account should get updated.
    Switch On Trigger.OperationType{
        When AFter_Insert{
            ProjectRollUpSummeryTriggerHandller.AfteInsertHandller(Trigger.New);
        }
        When After_Update{
            ProjectRollUpSummeryTriggerHandller.AfteUpdatetHandller(Trigger.New, Trigger.OldMap);
        }
        When After_Delete{
            ProjectRollUpSummeryTriggerHandller.AfteDeleteHandller(Trigger.old);
        }
        When After_UnDelete{
            ProjectRollUpSummeryTriggerHandller.AfteUnDeleteHandller(Trigger.new);
        }
    }
}