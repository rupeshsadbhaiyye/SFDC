public class dml12 {
    public static void test(){
        //create the 5 records inside the contact object without filling the mandatory feild
        //create the list of account object
        list<account> lst=new list<account>();
        //apply for loop
        for(integer counter=1;counter<=5;counter++){
            //create the object of acccount class
            account acc=new account();
            //assign the values
            acc.Phone ='7412589630';
            acc.Fax='741';
            
            //partial processing
            if(counter!=4){
                acc.Name='Rani Laxmi Bai'+counter;
            }
            
            //add variable inside the list
            lst.add(acc);
        }
        if(!lst.isempty()){
            //insert lst;
            database.insert(lst,false);
        }
    }

}