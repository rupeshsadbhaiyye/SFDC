@restresource(urlmapping='/postresource/*')
global class web {
    @httppost()
    global static string test(string cname,string clocation,string cnumber,string cemail){
        hiring_manager__c hr=new hiring_manager__c();
        hr.Name=cname;
        hr.Location__c=clocation;
        hr.Contact_Number__c=cnumber;
        hr.Email_Id__c=cemail;
        if(hr.id!=null){
             insert hr;
            return 'record inserted succesfully'+hr.id;
        }
        else{
            return 'record not inserted';
        }
    }

}