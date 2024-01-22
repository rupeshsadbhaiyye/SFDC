public class Class8 {
public list<lead> lst{get;set;}
public Class8(){
lst=new list<lead>();
lst=[select Name,company,phone,Status from lead];
}
}