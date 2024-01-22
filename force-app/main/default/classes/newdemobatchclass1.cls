global class newdemobatchclass1 implements database.Batchable<sobject>{
    global database.QueryLocator start(database.BatchableContext bc){
        string query='select name from lead';
        return database.getQueryLocator(query);
    }
    global void execute(database.BatchableContext bc,list<lead> lst){
        for(lead ld:lst){
            ld.status='Open - Not Contacted';
        }
        update lst;
    }
    global void finish(database.BatchableContext bc){
        asyncapexjob job=[select id,status,jobtype from asyncapexjob where id=:bc.getJobId()];
        system.debug('the status of the job is '+job.status);
    }

}