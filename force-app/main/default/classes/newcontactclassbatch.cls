global class newcontactclassbatch implements database.Batchable<sobject>{
    global database.querylocator start(database.batchablecontext bc){
        string query='select id,name from contact';
        return database.getQueryLocator(query);
    }
    global void execute(database.batchablecontext bc,list<contact> lst){
        for(contact con:lst){
            con.phone='8308184842';
            
        }
        update lst;
    }
    global void finish(database.BatchableContext bc){
        asyncapexjob job=[select id,status from asyncapexjob where id=:bc.getJobId()];
        system.debug('the status of the job is '+job.Status);
    }

}