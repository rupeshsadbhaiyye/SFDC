public class sub_program_insert_operations1 {
    //create the account record inside the object
    public static void test(){
        //step: create the object of account class1
        account acc=new account();
        //step2: assign the values
        acc.Name='Brijesh Yadav';
        acc.Phone='741258963';
        acc.Fax='412';
        //insert the record 
        insert acc;
        //check and get the record id
        if(acc.id!=null){
            system.debug('the record inserted sucessfully '+acc.Id);
        }
       
    }
    public static void test1(){
        //create the contact record inside the contact object
        //step1: create the object contact class
        contact con=new contact();
        //step2: assign the values
        con.LastName ='Maharaj';
        //insert the record
        insert con;
        //check and get the record id
        if(con.Id!=null){
            system.debug('the record inserted sucessfully '+con.Id);
        }
        
    }
    public static void test2(){
        //create the hiring manager record inside the object
        //step1:create the object of hiring manager class
        hiring_manager__c hr=new hiring_manager__c();
        //assign the value
        hr.Name='sham yadav';
        hr.Contact_Number__c ='741258963';
        hr.Email_Id__c ='sde@gmailc.com';
        //insert the record
        insert hr;
        //check and get the record id
        if(hr.Id!=null){
            system.debug('the record inserted sucessfully '+hr.Id);
        }
    }
    public static void test3(){
        //create the list of bank object
        list<bank__c> lst=new list<bank__c>();
        //apply for loop
        for(integer counter=1;counter<=50;counter++){
            //insert 50 record inside the bank object
        //create the object of bank class
        bank__c bk=new bank__c();
        //assign the values
        bk.Name ='Hdfc bank';
        //add the variable inside the list
        lst.add(bk);
        }
        if(!lst.isempty()){
            insert lst;
            
            }
    }

}