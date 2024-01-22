public class sourcecontroller1 {
public pagereference sourcepage(){
pagereference pgref=new pagereference('/apex/tagrgetpage');
pgref.setredirect(true);
return pgref;
}
}