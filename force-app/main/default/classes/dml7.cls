public class dml7 {
    public static void test(){
        //insert the record inside the account object
        //step1:create the list of the contact object
        list<contact> lst=new list<contact>();
        //apply the for loop
        for(integer counter =1;counter<=10;counter++){
            //create the object of contact class
            contact con=new contact();
            //assign the values
            con.LastName ='yadav';
            con.FirstName ='Radha';
            con.Fax ='456';
            
            //add the variable inside the lst
            lst.add(con);
        }
        if(!lst.isempty()){
            insert lst;
            for(integer counter1=1;counter1<=10;counter1++){
                system.debug('the record inserted=');
            }
        }
    }

}