public class Gotosource {
public PageReference gotosourcepage(){
PageReference pgref=new PageReference('/apex/vfpage33');
pgref.setredirect(true);
return pgref;
}
}