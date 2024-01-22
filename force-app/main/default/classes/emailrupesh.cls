public class emailrupesh {
    public static void phase1(){
       account acc=new account();
        acc.Name='Email Programming';
        acc.Phone='741258963';
        acc.fax='741';
        insert acc;
        if(acc.id!=null){
            system.debug('the record inserted'+acc.Id);
            phase2(acc);
        }
    }
    public static void phase2(account ac){
        messaging.SingleEmailMessage email=new messaging.SingleEmailMessage();
        string[] toaddress=new string[]{'sadbhaiyyarupesh1947@gmail.com'};
            email.setToAddresses(toaddress);
        string[] ccaddress=new string[]{'sadbhaiyyarupesh1947@gmail.com'};
            email.setCcAddresses(ccaddress);
        string[] bccaddress=new string[]{'rupeshsadbhaiyyasfdc@gmail.com'};
            email.setBccAddresses(bccaddress);
        email.setSenderDisplayName('SHREE GAS AND DOMESTIC APPLIANCE');
        email.setReplyTo('rupeshsadbhaiyyasfdc@gmail.com');
        string subjectv='congratulations you are the luccky winner';
        email.setSubject(subjectv);
        string content='Now you are eligible for reddmission';
        email.setPlainTextBody(content);
        
        list<messaging.EmailFileAttachment> lstfile=new list<messaging.EmailFileAttachment>();
        messaging.EmailFileAttachment attach=new messaging.EmailFileAttachment();
        attach.setContentType('Application/pdf');
        attach.setFileName('SFDC Intro.pdf');
        attach.body=blob.toPdf(content);
        lstfile.add(attach);
        email.setFileAttachments(lstfile);
        messaging.sendEmail(new messaging.SingleEmailMessage[]{email});
        
        
        
    }
}