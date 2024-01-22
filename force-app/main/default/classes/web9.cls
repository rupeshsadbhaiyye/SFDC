@restresource(urlmapping='/Hiring_manager__cresource/*')
global class web9 {
      @httpget()
    global static list<hiring_manager__c> test(){
        list<hiring_manager__c> lst=[select name,location__c from hiring_manager__c];
        return lst;
    }
}