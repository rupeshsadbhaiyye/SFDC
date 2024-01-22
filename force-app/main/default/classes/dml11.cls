public class dml11 {
    public static void test(){
        /*update the compony into bankig in lead object and insert a single record*/
        //create the list of lead object
        list<lead> lst1=new list<lead>();
        //phase1: update operation
        //create the list of lead object and pass the query
        list<lead> lst=[select lastname,company,status from lead where status='Open - Not Contacted'];
        //apply the enhance for loop
        for(lead ld:lst){
            ld.company ='Banking';
            lst1.add(ld);
        }
        //phase2: insert operation
        //create the list of lead object on top line
        //create the object of lead class
        lead ld=new lead();
        //assign the values
        ld.LastName ='Ram Kumar';
        ld.Company ='Agriculture';
        ld.Status ='Open - Not Contacted';
        //insert teh record
        lst1.add(ld);
        //condtion for upsert operation
        if(!lst1.isempty()){
            upsert lst1;
        }
    }

}