public class Target {
public pagereference source(){
pagereference pgref=new pagereference('/apex/sourcepage1');
pgref.setredirect(true);
return pgref;
}
}