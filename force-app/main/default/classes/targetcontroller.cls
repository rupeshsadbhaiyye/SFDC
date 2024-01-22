public class targetcontroller {
public pagereference tragetpage(){
pagereference pgref=new pagereference('/apex/sourcepage');
pgref.setredirect(true);
return pgref;
}
}