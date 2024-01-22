public class DatabaseclassAcc {
    //write the apex program to insert bulk contact records, by allowing the partial processing And track the record results and failure message
    public static void test(){
        list<contact> lst=new list<contact>();
        for(integer i=1;i<=5;i++){
            contact con=new contact();
            con.Phone='741258963';
            con.Fax='741';
            if(i!=4){
                con.LastName='Wanjari'+i;
            }
            lst.add(con);
        }
        if(!lst.isempty()){
            database.saveresult[] sv=database.insert(lst,false);
            for(database.saveresult res:sv){
                if(res.issuccess()){
                    system.debug('the records inserted successfully'+res.getid());
                }
                else{//database.error[] error=res.geterrors();
                    for(database.error err:res.Geterrors()){
                        system.debug('error message is ---'+err.getmessage());
                        system.debug('error status code--'+err.getstatuscode());
                        system.debug('effected fields are--'+err.getfields());
                    }
                }
            }
        }
    }

}