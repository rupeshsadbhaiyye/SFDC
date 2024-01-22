trigger SFDCFactsTrigger on Lead (before insert,After insert ,before update,after update) {
    Switch on Trigger.OperationType{
        When Before_Insert{
            LeadTriggerHandller.BeforeInsertHandller(Trigger.new);
        }
        When After_Insert{
            LeadTriggerHandller.AfterInsertHandller(Trigger.new);
        }
        When Before_Update{
            LeadTriggerHandller.BeforeUpdatetHandller(Trigger.new, Trigger.oldMap);
        }
    }
}