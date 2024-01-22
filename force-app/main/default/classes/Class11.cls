public class Class11 {
public list<lead> lst{get;set;}
public string searchtext{get;set;}
public void test(){
lst=new list<lead>();
if(searchtext!=null && searchtext!=''){
lst=[select Name,phone,fax,email from lead where Name like:searchtext+'%'
                                    or email like:searchtext+'%'];
}
}
}