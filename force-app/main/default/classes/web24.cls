@restresource(urlmapping='/newresource/*')
global class web24 {
    @httpput()
    global static string test(string cstatus,string cpriority,string cnumber){
        case cs=[select casenumber,status,priority from case where casenumber=:cnumber];
        if(cs.id!=null){
            cs.Status=cstatus;
            cs.Priority=cpriority;
            update cs;
            return 'record updated sucessfully';

        }
        else{
            return 'record can not be updated';
        }
    }

}