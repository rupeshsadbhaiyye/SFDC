public class queueableclass2 implements queueable{
    public void execute(QueueableContext qc){
        
        queueableclass newqueue=new queueableclass();
        
        id jobid=system.enqueueJob(newqueue);
        
        list<contact> lstcon=[select id,name from contact where createddate=Today];
        delete lstcon;
    }

}