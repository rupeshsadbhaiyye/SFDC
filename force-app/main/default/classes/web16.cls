@restresource(urlmapping='/getresource/*')
global class web16 {
    @httpdelete()
    global static string test(){
        list<contact> lst=[select name,phone,fax from contact where name=:'kanji mehta'];
        if(!lst.isEmpty()){
            delete lst;
            return 'record deleted sucessfully';
        }
        else{
            return 'record can not be deleted';
        }
    }

}