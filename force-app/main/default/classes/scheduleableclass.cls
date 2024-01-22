public class scheduleableclass implements schedulable{
    public void execute(SchedulableContext sc){
        list<account> lst=[select id,name from account where createddate=Today];
        delete lst;
    }

}