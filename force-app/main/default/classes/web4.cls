@restresource(urlmapping='/hiringresource/*')
global class web4 {
    @httpget()
    global static list<hiring_manager__c> test(){
        list<hiring_manager__c> lst=[select name,Email_Id__c,Contact_Number__c,location__c from hiring_manager__c where location__c=:'Pune'];
        return lst;
    }

}