public class dml16 {
    public static void test(){
        //create the list of case object
        list<case> lst1=new list<case>();
        //create the list of the case object and add query
        list<Case> lst=[select status,origin from case where status='New'];
        //apply enhance for loop
        for(case cs:lst){
            cs.origin='Web';
            lst1.add(cs);
        }
        //create the list of case object on top line
        //create the object of case class
        case cs=new case();
        //assign the values
        cs.Status ='New';
        cs.Origin ='Phone';
        cs.Priority ='Heigh';
        //insert
        lst1.add(cs);
        //condition for upsert
        if(!lst1.isempty()){
            upsert lst1;
        }
    }

}