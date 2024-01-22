public class fecthaccount {
    public static void test(){
        list<college__c> lst=new list<college__c>();
        lst=[select name,(select name from faculties__r) from college__c];
        system.debug('the record details are '+lst);
        for(college__c cgg:[select name,(select name from faculties__r) from college__c]){
            system.debug('the faculty details are '+cgg.faculties__r);
            for(faculty__c fac:cgg.faculties__r){
                
            }
        }
    }

}