@restresource(urlmapping='/hiringrecord/*')
global class webhir {
    @HTTPGET()
    global static list<hiring_manager__c> test(){
        map<string,string> fetch=restcontext.request.params;
        list<hiring_manager__c> lst=[select name,location__c from hiring_manager__c 
                                     where location__c=:fetch.get('locationname')];
        return lst;
    }
}