trigger forDnyan on TCS_SHELL_OUTLOOK__c (After insert) {
    list<ApplicationDetail__c> lst=new list<ApplicationDetail__c>();
    for(TCS_SHELL_OUTLOOK__c tcs:trigger.new){
        ApplicationDetail__c ap=new ApplicationDetail__c();
        ap.ApplicationName_Lookup__c=tcs.id;
        ap.BAO_Name__c='Soumya';
        ap.Name='Dnyandeep ko gya issue';
        lst.add(ap);
        
    }
    if(!lst.isEmpty()){
        insert lst;
    }

}