public class NEwlistoflead {
public list<lead> lst{get;set;}
public NEwlistoflead (){
lst=new list<lead>();
lst=[select name,phone,fax from lead];

}
}