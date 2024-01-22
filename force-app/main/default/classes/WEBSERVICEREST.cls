@restresource(urlmapping='/new_extract/*')
global class WEBSERVICEREST {
    @httpget
    //Create a RestFul WebService to Get the Case Details based on the Supplied Case Number at runtime.
    global static case test(){
        map<string,string> mp=restcontext.request.params;
        case cs=[select id,casenumber,status,subject from case where casenumber=:mp.get('cnumber')];
        return cs;
    }

}