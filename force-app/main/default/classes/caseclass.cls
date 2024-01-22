public class caseclass {
    public static void zp(){
        // Write an apex program, to Insert a Case Record inside the Object
        case cs=new case();
        //assign the value
        cs.Status ='Working';
        cs.Origin ='Web';
        cs.Priority ='Heigh';
        //insert the record
        insert cs;
        //get the record id
        if(cs.Id!=null){
            system.debug('the record id is '+cs.Id);
        }
    }

}