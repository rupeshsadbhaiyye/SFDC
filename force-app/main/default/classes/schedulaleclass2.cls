public class schedulaleclass2 implements Schedulable{
    public void execute(SchedulableContext sc){
        list<opportunity> lst1=[select id,stagename from opportunity where stagename='Closed Won'];
        for(opportunity opp:lst1){
            opp.stagename='Closed Won';
        }
        update lst1;
    }

}