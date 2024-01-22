public class sourcepage {
public pagereference gototargets(){
pagereference pgref=new pagereference('/apex/targetpage1');
pgref.setredirect(true);
return pgref;
}
}