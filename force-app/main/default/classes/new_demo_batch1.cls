global class new_demo_batch1 implements database.Batchable<sobject>{
    global database.QueryLocator start(database.BatchableContext bc){
        string query='select name,phone,rating from account';
        return database.getQueryLocator(query);
    }
    global void execute(database.BatchableContext bc,list<account> lst){
        for(account acc:lst){
            acc.phone='111100000';
        }
        update lst;
    }
    global void finish(database.BatchableContext bc){
        asyncapexjob newjob=[select id,status from asyncapexjob where id=:bc.getjobid()];
        system.debug('the status of the job is '+newjob.Status);
    }

}