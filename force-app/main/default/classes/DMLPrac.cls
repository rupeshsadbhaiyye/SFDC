public class DMLPrac {
    public static void test(){
        //Write an apex program, to insert 50 Hiring Manager Records.
        list<Hiring_manager__c> lst=new list<Hiring_manager__c>();
        for(integer counter=1;counter<=50;counter++){
            Hiring_manager__c hr=new Hiring_manager__c();
            hr.Name='New Bulk Record';
            hr.Contact_Number__c='74124575';
            hr.Email_Id__c='rupeshsadbhaiyyesfdc@gmail.com';
            lst.add(hr);
        }
        if(!lst.isempty()){
            insert lst;
        }
    }
    public static void test1(string hrname){
        /*Write an apex program, to Remove all the HR Records 
        from the Object based on the specified Characters with the HR Name.*/
        hrname +='%';
        list<Hiring_manager__c> lst=[select name from Hiring_manager__c where name Like : hrname];
        if(!lst.isempty()){
            delete lst;
        }
        
    }
    public static void test2(string hrname1){
        /*Write an apex program, to ReStore all the Hiring 
         * Manager Records back to the actual object based on the specified Starting Characters at runtime.*/
        hrname1 +='%';
        list<Hiring_manager__c> lst=[select name,isDeleted from Hiring_manager__c where name like:hrname1 All Rows];
        if(!lst.isempty()){
            undelete lst;
        }
        
    }
    public static void test3(string targetname, string sourcename){
        //Write an apex program, to merge the Multiple Account Records into a Single Account Record.
        account target=[select name from account where name like:targetname+'%'];
        account source=[select name from account where name like:sourcename+'%'];
        
        if(target!=null && source!=null){
            merge target source;
        }
    }
    public static void test4(string statusch){
        /*Write an apex program to change case priority is High for all new cases and 
            create new case record inside an object.*/
        list<case> lst1=new list<case>();
        list<case> lst=[select id,status from case where status like:statusch+'%'];
        for(case cs:lst){
            cs.status='Working';
            lst1.add(cs);
        }
        case c=new case();
        c.Status='New';
        c.Description='new record needs to insert';
        lst1.add(c);
        if(!lst1.isEmpty()){
            upsert lst1;
            system.debug('the record upserted successfully');
        }
        
    }

}