public class queueableclass implements queueable{
    public void execute(QueueableContext qc){
        list<account> lst=[select id,name from account where createDdate=Today];
        delete lst;
    }

}