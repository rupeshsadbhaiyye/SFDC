public class dml14 {
    public static void test(){
        //create the list of lead object
        list<lead> lst1=new list<lead>();
        //create the list of lead object and add the query
        //phase1: update operation
        // create the list of lead object and fetch the record 
        list<lead> lst=[select lastname,company,status from lead where status=:'Open - Not Contacted'];
        //apply enhance for loop
        for(lead ld:lst){
            ld.Company='Student';
            lst1.add(ld);
        }
        //phase2: insert operation
        //create the list of lead object on the top line
        //create the object of lead class
        lead ld=new lead();
        //assign the values
        ld.LastName='Sfdc training';
        ld.Status ='Working - Contacted';
        ld.Company ='Agriculture';
        //insert 
        lst1.add(ld);
        //condtion for upsert
        if(!lst1.isempty()){
            upsert lst1;
        }
    }

}