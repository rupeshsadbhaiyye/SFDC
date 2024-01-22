public class example4 {
    public static void test(){
        //create 4 record inside the accont object
        //create the list of the account object
        list<account> lst=new list<account>();
        //apply simple for loop
        for(integer counter=1;counter<=4;counter++){
            //create the object of account class
            account acc=new account();
            //assign the value
            acc.Name ='happy singh';
            //add the elemnt in the list
            lst.add(acc);
            
        }
        if(!lst.isEmpty()){
            insert lst;
        }
    }

}