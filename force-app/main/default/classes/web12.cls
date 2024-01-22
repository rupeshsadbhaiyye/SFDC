@restresource(urlmapping='/lresource/*')
global class web12 {
    @httpget()
    global static list<lead> test(){
        map<string,string> input=restcontext.request.params;
        list<lead> lst=[select name,status,rating from lead where rating=:input.get('crating')];
        return lst;
    }
    

}