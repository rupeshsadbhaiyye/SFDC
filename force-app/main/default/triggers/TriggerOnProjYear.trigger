trigger TriggerOnProjYear on Project__c (before insert,before update) {
    If(trigger.isbefore && (trigger.isinsert || trigger.isupdate)){
        for(Project__c PR : Trigger.new){
            if(PR.Year__c==Null)
            PR.Year__c.adderror('Bhai Dnyandeep Value daal de please');
        }
}

}