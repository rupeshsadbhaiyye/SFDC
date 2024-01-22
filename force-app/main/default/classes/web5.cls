@restresource(urlmapping='/caseresource/*')
global class web5 {
    @httpget()
    global static case test(){
        map<string,string> input=restcontext.request.params;
        case cs=[select origin,status,casenumber from case where casenumber=:input.get('cnumber')];
        return cs;
    }

}