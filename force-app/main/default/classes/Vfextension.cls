public class Vfextension {
   account acc;
    public Vfextension(ApexPages.StandardController controller) {
       acc = (account)controller.GetRecord(); 
    }
    public void checkduplicate(){
    integer recordcount=[select count() from account where name=:acc.name ];
    if(recordcount>0){
    apexpages.addmessage(new apexpages.message(apexpages.severity.error,'please insert new record'));
    }
    else{
    Insert acc;
    apexpages.addmessage(new apexpages.message(apexpages.severity.CONFIRM,'record inserted succesfully'));
    }
    }
    public pagereference gototarget(){
    pagereference pgref=new pagereference('/apex/vfpage37');
    pgref.setredirect(true);
    return pgref;
    }

}