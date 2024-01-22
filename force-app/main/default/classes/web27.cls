@restresource(urlmapping='/hiringresource2/*')
global class web27 {
    @httpget()
    global static list<hiring_manager__c> test(){
        list<hiring_manager__c> lst=[select name,location__c from hiring_manager__c order by name];
        return lst;
    }

}