global class newclassforbatch implements database.batchable<sobject>{
global database.querylocator start(database.batchablecontext bc){
string query='select lastname from contact';
return database.getquerylocator(query);

}
global void execute(database.batchablecontext bc ,list<contact> lst){
list<contact> lstcon=new list<contact>();
for(contact con:lst){
contact co=new contact();
co.phone='7852369147';
lstcon.add(co);
}
if(!lstcon.isempty()){
update lstcon;
}
} 
global void finish(database.batchablecontext bc){
asyncapexjob job=[select id,status from asyncapexjob where id=:bc.getJobId()];
system.debug('the status of the batch is '+job.status);


}
}