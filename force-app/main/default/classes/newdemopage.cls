public class newdemopage {
public pagereference gototarget(){
pagereference pgref=new pagereference ('/apex/newvfpage3');
pgref.setredirect(true);
return pgref;
}
}