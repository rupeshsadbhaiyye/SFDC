public class ApexDMLController {
    public static void test(){
        Account acc=new account();
        acc.Name='Wingnut films';
        acc.Rating='Warm';
        insert acc;
        if(acc.id!=null){
            system.debug('the record inserted succesfully '+acc.id);
            opportunity opp=new opportunity();
            opp.Name='Lord of rings';
            opp.StageName='Qualification';
            opp.CloseDate=system.today();
            opp.AccountId=acc.Id;
            insert opp;
            if(opp.Id!=null){
                system.debug('opportunity record inserted successfully '+opp.Id);
            }
        }
        
    }
    public static void test1(){
        list<account> acc=[select id,name,rating from account where name='Wingnut films'];
        for(account a:acc){
            a.Name='New Line cinema';
            a.Phone='8308184842';
        }
        if(!acc.isempty()){
            update acc;
            system.debug('the Account record updated successfully');
            list<opportunity> lst=[select id,name,StageName from opportunity where name='Lord of rings'];
            for(opportunity opp:lst){
                opp.StageName='Closed-Won';
            }
            update lst;
            if(!lst.isempty()){
                system.debug('the opportunity record updated successfully');
            }
        }
    }
    public static void test2(){
        list<opportunity> lst=[select id,name,StageName from opportunity where name='Lord of rings'];
        If(!lst.isempty()){
            delete lst;
            system.debug('the opportunity record deleted succesfully');
        }
        
    }
    public static void test3(){
        list<opportunity> lst=[select id,name,StageName,isdeleted from opportunity where isdeleted=true All rows];
        If(!lst.isempty()){
            undelete lst;
            system.debug('the opportunity record undeleted succesfully');
        }
        
    }

}