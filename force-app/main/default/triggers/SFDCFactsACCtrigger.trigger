trigger SFDCFactsACCtrigger on Account (before insert,After insert,before update,after update) {
    Switch On Trigger.OperationType{
        When After_Insert{
            AccountTriggerHandller.Afterinserthandller(Trigger.New);
        }
        When Before_Update{
            AccountTriggerHandller.BeforeUpdatehandller(Trigger.New, Trigger.OldMap);
        }
    }
}