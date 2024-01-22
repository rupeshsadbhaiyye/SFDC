public class dml10 {
    public static void test(){
        /*:Write an apex program to change case priority is High for all new cases and 
create new case record inside an object.*/
        //create the list of case object
        list<case> lst1=new list<case>();
        //phase1: update operation
        //create the list of case object and fetch the cases of status new
        list<case> lst=[select status,priority,origin from case where status=:'New'];
        //apply enhance for loop
        for(case cs:lst){
            cs.priority='Low';
            lst1.add(cs);
        }
        
        //phase:2 insert operation
        //step1:create the list of case object to insert single record on top line
        //step2: cerate the object of case class
        case cs=new case();
        //assign the values
        cs.Status ='New';
        cs.Priority='Heigh';
        cs.Origin ='Phone';
        cs.Description ='Test the upsert operation';
        
        //insert the record
        lst1.add(cs);
        //condition
        if(!lst.isempty()){
            upsert lst1;
        }
        

        
    }

}