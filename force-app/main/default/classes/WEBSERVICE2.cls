@restresource(urlmapping='/Newweb/*')
global class WEBSERVICE2 {
    @httpget
    //Create a RestFul 
    //WebService to expose all the Hiring Manager Records, which are associated with "Bangalore Location".
    global static list<hiring_manager__c> test(){
        list<hiring_manager__c> lst=[select id,name,location__c from hiring_manager__c where location__c='Bangalore'];
        return lst;
    }

}