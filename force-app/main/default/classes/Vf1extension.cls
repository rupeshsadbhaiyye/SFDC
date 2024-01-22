public class Vf1extension {
    hiring_manager__c hr;
    public Vf1extension(ApexPages.StandardController controller) {
      hr =(hiring_manager__c)controller.getrecord();
    }
    public void duplicate(){
    integer recordcount=[select count() from hiring_manager__c where name=:hr.name];
    if(recordcount>0){
    apexpages.addmessage(new apexpages.message(apexpages.severity.error,'duplicate record found'));
    }
    else{
    insert hr;
    apexpages.addmessage(new apexpages.message(apexpages.severity.confirm,'record inserted sucessfully'));
    }
    }

}