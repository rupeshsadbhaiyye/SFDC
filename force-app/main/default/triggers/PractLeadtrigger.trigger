trigger PractLeadtrigger on Lead (before insert,before update) {
    //Create a Trigger on the Lead Object, to make sure the Lead Phone, Fax and Email should be Mandatory.
    if(Trigger.isbefore &&(trigger.isinsert || trigger.isupdate)){
        for(lead ld:trigger.new){
            if(ld.Phone=='' || ld.phone==Null){
                ld.phone.adderror('please add the phone');
            }
            else if(ld.Fax=='' || ld.Fax==Null){
                ld.fax.adderror('please add fax');
            }
            else if(ld.Email=='' || ld.Email==Null){
                ld.email.adderror('Please add the email');
            }
        }
    }

}