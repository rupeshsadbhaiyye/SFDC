@restresource(urlmapping='/hrresource/*')
global class web18 {
    @httppost()
    global static string test(string hname,string hlocation,string hcontact,string hemail){
        hiring_manager__c hr=new hiring_manager__c();
        hr.Name=hname;
        hr.Location__c=hlocation;
        hr.Contact_Number__c=hcontact;
        hr.Email_Id__c=hemail;
        insert hr;
        if(hr.id!=null){
            return 'record inserted succesfully';
        }
        else{
            return 'record not inserted';
        }
    }

}