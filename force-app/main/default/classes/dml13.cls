public class dml13 {
    public static void test(){
        //create the list of opportunity object
        list<Opportunity> lst1=new list<Opportunity>();
        //create the list of opportunty object and add the query
        list<Opportunity> lst=[select name,LeadSource,StageName from Opportunity where StageName='Prospecting'];
        //apply enahance for loop
        for(opportunity opp:lst){
            opp.leadsource='Phone Inquiry';
            lst1.add(opp);
        }
        //insert the record
        //create the list of opportunity object on the top line
        //cerate the object of opportunty class
        Opportunity opp=new Opportunity();
        //assign the values
        opp.Name ='Ramesh Kumar';
        opp.LeadSource='Web';
        opp.StageName ='Qualification';
        opp.CloseDate=date.parse('12/27/2007');
        //insert
        lst1.add(opp);
        if(!lst1.isempty()){
            upsert lst1;
        }
        
    }

}