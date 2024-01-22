public class emailprograameonlead {
    public static void phase1(){
        lead ld=new lead();
        ld.lastName='New Programme';
        ld.Status='Working - Contacted';
        ld.Phone='111111111';
        ld.Company='Agriculture';
        ld.Email='rupeshsadbhaiyyasfdc@gmail.com';
        insert ld;
        if(ld.Id!=null){
            system.debug('the recodr inserted succed'+ld.Id);
            phase2(ld);
        }
    }
    public static void phase2(lead l){
        messaging.SingleEmailMessage email=new messaging.SingleEmailMessage();
        //set to address
        string[] toaddress=new string[]{'sadbhaiyyarupesh1947@gmail.com'};
            email.setToAddresses(toaddress);
        string[] ccad=new string[]{'rupeshsadbhaiyyasfdc@gmail.com'};
            email.setCcAddresses(ccad);
        string[] bcc=new string[]{'sadbhaiyyarupesh1947@gmail.com'};
            email.setBccAddresses(bcc);
        email.setSenderDisplayName('SHREEGAS AND DOMESTIC APPLIANCE RUPESH YADAV');
        email.setReplyTo('sadbhaiyyarupesh1947@gmail.com');
        string sub='congratulations you are pass !!!>>>....';
        email.setSubject(sub);
        string containt='You are pass in the examination you are no qualified for the next round??1!';
        email.setPlainTextBody(containt);
        list<messaging.EmailFileAttachment> lst=new list<messaging.EmailFileAttachment>();
        messaging.EmailFileAttachment attach=new messaging.EmailFileAttachment();
        attach.setContentType('Appliaction/pdf');
        attach.setFileName('sfdc.pdf');
        attach.body=blob.toPdf(Containt);
        lst.add(attach);
        email.setFileAttachments(lst);
        messaging.sendEmail(new messaging.SingleEmailMessage[]{email});
        
    }

}