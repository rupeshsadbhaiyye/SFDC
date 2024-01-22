public class Hirirngmanager_related_position {
    public static void test(){
       /*Write an apex program, to Insert a Hiring Manager Record and a Related Position
		Record inside the Object*/
        //create object of hiring manager class
        Hiring_manager__c hr=new Hiring_manager__c();
        //assign the values
        hr.Name='Sham Yadav ';
        hr.Contact_Number__c ='74125896';
        hr.Email_Id__c ='ser@gmail.com';
        //insert the record 
        insert hr;
        //get the record id 
        if(hr.Id!=null){
            system.debug('the hr id is '+hr.Id);
            //crate the object of postion class
            position__c ps=new position__c();
            //assign the values
            ps.Name ='kalpana';
            ps.country__c ='INDIA';
            ps.Number_of_vacancies__c =45;
            ps.Milestone_date__c =date.parse('12/27/1997');
            ps.Maximum_Budget__c =456;
            ps.HR_Email_ID__c ='sad@gmail.com';
            ps.Hiring_manager_lookup__c =hr.Id;
            //insert the record
            insert ps;
            //get the record id
            if(ps.Id!=null){
                system.debug('the ps id is '+ps.Id);
            }
        }
    }

}