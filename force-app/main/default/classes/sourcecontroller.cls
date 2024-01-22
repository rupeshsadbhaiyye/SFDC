public class sourcecontroller {
public PageReference gototarget(){
PageReference pgref=new PageReference('/apex/vfpage34');
pgref.setredirect(true);
return pgref;
}
}