public class Dml1 {
    public static void test(){
        //insert 50 records inside the hr
        //step1: create the list of hiring_manager_c object
        list<hiring_manager__c> lst=new list<hiring_manager__c>();
        //apply for loop
        for(integer counter=1;counter<=50;counter++){
            //step2: create the object of hr class
            hiring_manager__c hr=new hiring_manager__c();
            //asssign the values
            hr.Name ='Ramesh Kumar';
            hr.Contact_Number__c ='741258963';
            hr.Email_Id__c ='esdag@gmail.com';
            
           //step3: add the variable inside the list
           lst.add(hr);
        }
        if(!lst.isempty()){
            insert lst;
        }
    }

}