public class SOQLPrac1 {
    public static void test(){
        //Write an apex program, to fetch all the Account Records from the object and represent on the Debug Log File.
        list<account> lst=[select id,name,phone,fax from account];
        
        if(!lst.isempty()){
            system.debug('the size of the list is'+lst.size());
            for(account acc:lst){
            system.debug('the name of the account'+acc.ID);
            system.debug('the name of the account'+acc.name);
            system.debug('the name of the account'+acc.Fax);
            system.debug('the name of the account'+acc.phone);
        }
        }
        
    }
    public static void test1(){
        /* Write an apex program, to fetch all the Case Records from the object
        and store them to a Map Collection and represent the records on the Debug Log File.*/
        //list<case> cslst=[select id,priority,status from case];
        map<id,case> csmap=new map<id,case>([select id,priority,status from case]);
        if(!csmap.isEmpty()){
            system.debug('the size of the map is '+csmap.size());
            for(case cs:csmap.values()){
                system.debug('the case status is '+cs.ID);
                system.debug('the case status is '+cs.status);
                system.debug('the case status is '+cs.priority);
            }
        }
    }
    public static void test2(){
        //Fetch the  data from account object with map collection and static SOQL Queries
        map<id,account> accmap=new map<id,account>([select id,name,phone,fax from account]);
        if(!accmap.isempty()){
            system.debug('the size of the map is '+accmap.size());
            for(account acc:accmap.values()){
                system.debug('the account id is '+acc.id);
                system.debug('the account id is '+acc.name);
                system.debug('the account id is '+acc.phone);
                system.debug('the account id is '+acc.fax);
            }
        }
    }
    public static void test3(string industryname){
        //Write an apex program, to fetch only those Account Records from the object based on the specified Industry Name at runtime.
        list<account> lst1=[select id,name,phone,fax,industry,LastModifiedDate  from account 
                            where industry=:industryname order by LastModifiedDate DESC];
        if(!lst1.isempty()){
            system.debug('the size of the list is '+lst1.size());
            for(account acc:lst1){
                system.debug('the id of the account is '+acc.id);
                system.debug('the name of the account is '+acc.name);
                system.debug('the industry of the account is '+acc.Industry);
                system.debug('the lastmodified date is '+acc.LastModifiedDate);
            }
        }
    }
    public static void test4(){
        //Write an apex program, to fetch all the Account Related to the Energy , Chemicals , Biotechnology Industry Accounts.
        list<account> lst=[select id,name,phone,fax,industry from account where Industry In('Energy','Chemicals','Biotechnology')];
        if(!lst.isempty()){
            system.debug('the size pf the list is '+lst.size());
            for(account acc:lst){
                system.debug('the name of the account is '+acc.Name);
                system.debug('the industry of the account is '+acc.Industry);
            }
        }
    }
    public static void test5(string industryname){
        //dynamic soql query
        //Write an apex program, to fetch all the Hiring Manager Records from the object based on the specified Location Name at runtime.
        string accquery='select id,name,Industry from account where Industry=:industryname';
        list<account> lst=database.query(accquery);
        if(!lst.isempty()){
            system.debug('the size of the list is '+lst.size());
            for(account acc:lst){
                system.debug('the name is '+acc.Name);
                system.debug('the industry is '+acc.Industry);
            }
        }
    }
    public static void test6(string accountname){
        //Write an apex program, to fetch all the Account Records, whose name is starting with the specified characters at runtime.
        accountname+='%';
        list<account> lst=[select id,name,phone,fax from account where name=:accountname];
        if(!lst.isempty()){
            system.debug('the size of list is '+lst.size());
            for(account acc:lst){
                system.debug('ther name of the account is '+acc.name);
            }
        }
    }

}