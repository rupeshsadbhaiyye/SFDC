trigger PractHRtrigger on Hiring_Manager__c (before insert, Before Update) 
    {
        //Create a Trigger on Hiring Manager Object, to Avoid the Duplicate HR Records based on the Hiring Manager Name and Email Id Combination.
        set<string> s=new set<string>();
        for(Hiring_Manager__c hr:trigger.new){
            s.add(hr.Name);
            s.add(hr.Email_Id__c);
        }
        list<Hiring_Manager__c> lst=[select id,name,Email_Id__c from Hiring_Manager__c where name=:s OR Email_Id__c=:s];
        set<string> duplicate=new set<string>();
        for(Hiring_Manager__c hr1:lst){
            duplicate.add(hr1.Name);
            duplicate.add(hr1.Email_Id__c);
        }
        for(Hiring_Manager__c hr2:trigger.new){
            if(hr2.Name!=Null || hr2.Email_Id__c!=null){
                if(duplicate.contains(hr2.Name)){
                    hr2.Name.adderror('आप एक डुप्लिकेट रिकॉर्ड नहीं डाल सकते');
                }
                if(duplicate.contains(hr2.Email_Id__c)){
                    hr2.Email_Id__c.adderror('आप एक डुप्लिकेट ईमेल पता डाल नहीं सकते');
                }
            }
        }
    }