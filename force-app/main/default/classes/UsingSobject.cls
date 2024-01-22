public class UsingSobject {
    public static void test(){
        //create a instance of the 
        sobject acc=(sobject) type.forname('Account').newinstance();
        acc.put('name','Account record with sobject');
        acc.put('Phone','12345678963');
        acc.put('Rating','Hot');
        insert acc;
        if(acc.id!=null){
            system.debug('account record inserted succesfully with sobject'+acc.id);
            sobject opp=(sobject) type.forname('opportunity').newinstance();
            opp.put('Name','Opportunity record with sobj');
            opp.put('StageName','Qualification');
            opp.put('CloseDate',system.today());
            opp.put('accountid',acc.id);
            insert opp;
            if(opp.id!=null){
                system.debug('the opportunity record using sobject inserted'+opp.id);
            }
            
        }
    }
    public static void test1(){
        sobject accquery=database.query('select id,name,phone from account where name=\'Account record with sobject\'');
        if(accquery!=null){
            accquery.put('Name','Lord of Rings');
            accquery.put('Phone','120310312');
            update accquery;
            system.debug('account record updated successfully');
            sobject oppquery=database.query('select id,name from opportunity where name=\'Opportunity record with sobj\'');
            if(oppquery!=null){
                oppquery.put('Name','Wignet films');
                update oppquery;
                system.debug('the opportunity record inserted successfully');
            }
        }
    }

}