global class Newdemobatchclass implements database.Batchable<sobject>{
    global database.QueryLocator start(database.BatchableContext bc){
        string query=' select lastname from lead';
        return database.getQueryLocator(query);
    }
    global void execute(database.BatchableContext bc,list<lead> lst){
        for(lead ld:lst){
            ld.Status='Open - Not Contacted';
        }
        update lst;
    }
    global void finish(database.BatchableContext bc){
        asyncapexjob job=[select id,status from asyncapexjob where id=:bc.getJobId()];
        system.debug('the job status is '+job.Status);
    }

}