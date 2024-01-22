@restresource(urlmapping='/hreresource/*')
global class web22 {
    @httppost()
    global static string test(){
        string input=restcontext.request.requestbody.tostring();
        list<hiring_manager__c> lst=(list<hiring_manager__c>)System.JSON.deserialize(input, list<hiring_manager__c>.class);
        if(!lst.isEmpty()){
            insert lst;
            return 'record inserted succesfully';
        }
        else{
            return 'record can not be inserted';
        }
    }

}