trigger PostionRollUpSummerTrigger on Position__c (After insert,After Update,After Delete,After Undelete) {
    Switch on Trigger.OperationType{
        When After_Insert{
            PostionRollUpSummerTriggerHandller.Afterinserthandler(Trigger.New);
        }
        When After_Update{
            PostionRollUpSummerTriggerHandller.AfterUpdatehandler(Trigger.New, Trigger.OldMap);
        }
        When After_Delete{
            PostionRollUpSummerTriggerHandller.AfterDeletehandler(Trigger.old);
        }
        When After_Undelete{
            PostionRollUpSummerTriggerHandller.AfterUnDeletehandler(Trigger.New);
        }
    }
    
}