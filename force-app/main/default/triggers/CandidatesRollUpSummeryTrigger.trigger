trigger CandidatesRollUpSummeryTrigger on Candidate_1__c (before insert,after insert,before update,after update,before delete,after delete,after undelete) {
    Switch on Trigger.OperationType{
        When After_Insert{
            CandidatesRollUpSummeryTriggerHandller.Afterinsert(Trigger.new);
        }
        When After_Update{
            CandidatesRollUpSummeryTriggerHandller.AfterUpdate(Trigger.new, Trigger.oldmap);
        }
        When After_Delete{
            CandidatesRollUpSummeryTriggerHandller.AfterDelete(Trigger.new);
        }
        When After_Undelete{
            CandidatesRollUpSummeryTriggerHandller.AfterUnDelete(Trigger.new);
        }
    }
}