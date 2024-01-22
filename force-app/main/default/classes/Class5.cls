public class Class5 {
public string result{get;set;}
public void test(){
contact con=new contact();
con.lastname='VFpage1';
con.phone='741258963';
con.fax='741';
insert con;
if(con.id!=null){
result='Record inserted '+con.id;
}
}
}