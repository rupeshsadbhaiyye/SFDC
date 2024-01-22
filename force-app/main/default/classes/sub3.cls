public class sub3 {
    public static void test(){
        //create 50 record inside the hiring manager object
        //cerate the list of hiring manager object
        list<hiring_manager__c> lst=new list<hiring_manager__c>();
        //apply for loop
        for(integer counter=1; counter<=4;counter++){
            //create the object of hiring_manager__c class
            hiring_manager__c hr=new hiring_manager__c();
            //assign the values
            hr.Name='Shantanu Janbandhu';
            hr.Contact_Number__c='7412589630';
            hr.Email_Id__c='sadbhaiyyarupesh1947@gmail.com';
            hr.Position__c='MANAGER';
            hr.Location__c='Pune';
            
            //add the variable inside the list
            lst.add(hr);
        }
        if(!lst.isempty()){
            insert lst;
        }
    }

}