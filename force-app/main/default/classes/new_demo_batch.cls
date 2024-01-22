global class new_demo_batch implements database.Batchable<sobject> {
    global database.QueryLocator start(database.BatchableContext bc){
        string query='select name from account ';
        return database.getQueryLocator(query);

    }
    global void execute(database.BatchableContext bc,list<account> lst){
        for(account acc:lst){
            acc.rating='Hot';
        }
        update lst;
    }
    global void finish(database.BatchableContext bc){
        asyncapexjob job=[select id,status from asyncapexjob where id=:bc.getJobId()];
        system.debug('the status of the job is '+job.Status);
        
    }

}