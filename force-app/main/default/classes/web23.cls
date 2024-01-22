@restresource(urlmapping='/creditresorce/*')
global class web23 {
    @httppost()
    global static string test(){
        string input=restcontext.request.requestbody.tostring();
        list<Credit_Card__c> lst=(list<credit_card__c>)System.JSON.deserialize(input, list<credit_card__c>.class);
        if(!lst.isEmpty()){
            insert lst;
            return 'Record inserted succesfully';
        }
        else{
            return 'record can not be inserted';
        }
    }

}