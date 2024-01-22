trigger RollUpSummeryTrigger on Contact (After Insert,After Update,After Delete,After Undelete) {
    Switch on Trigger.OperationType{
        When After_Insert{
            RollUpSummeryTriggerHandller.AfterInserthandller(Trigger.New);
        }
        When After_Update{
            RollUpSummeryTriggerHandller.AfterUpdatehandller(Trigger.New, Trigger.OldMap);
        }
        When After_Delete{
            RollUpSummeryTriggerHandller.AfterDeleteHandller(Trigger.old);
        }
        When After_UnDelete{
            RollUpSummeryTriggerHandller.AfterUnDelete(Trigger.New);
        }
    }
    
}