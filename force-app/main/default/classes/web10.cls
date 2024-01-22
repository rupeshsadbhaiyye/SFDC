@restresource(urlmapping='/csresource/*')
global class web10 {
    @httpget()
    global static case test(){
        map<string,string> input=restcontext.request.params;
        case cs=[select status,origin,casenumber from case where casenumber=:input.get('cnumber')];
        return cs;

    }

}