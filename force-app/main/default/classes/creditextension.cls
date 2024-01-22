public class creditextension {
     Credit_Card__c cd;
    public creditextension(ApexPages.StandardController controller) {
     cd=(Credit_Card__c)controller.getrecord();
    }
    public void duplicate(){
    integer recordcount=[select count() from Credit_Card__c where name=:cd.name ];
    if(recordcount>0){
    apexpages.addmessage(new apexpages.message(apexpages.severity.error,'intesrt new recrd'));
    }
    else{
    insert cd;
    apexpages.addmessage(new apexpages.message(apexpages.severity.confirm,'record inserted succesfully'));
    }
    }

}