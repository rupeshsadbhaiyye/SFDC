public class email_programming {
    public static void phase1(){
        //create a single record inside the lead object
        //create the objet of the lead class
        lead ld=new lead();
        //assign the values
        ld.LastName ='Salman Khan';
        ld.Status ='Working - Contacted';
        ld.Company ='Agriculture';
        ld.Email ='sadbhaiyyarupesh1947@gmail.com';
        //insert the record
        insert ld;
        //check the record and id
        if(ld.Id!=null){
            system.debug('the record inserted ='+ld.Id);
            //communicate two phase
            phase2(ld);
        }
    }
    public static void phase2(lead l){
        if(l.Id!=null){
            //email programming
            //step1: use the namespace messaging and create the object of singleemailmessage class
            messaging.SingleEmailMessage email=new messaging.SingleEmailMessage();
            //step2: create the string for add to person emialid
            //to address
            string[] toaddress=new string[]{'sadbhaiyyarupesh1947@gmail.com'};
            email.setToAddresses(toaddress);
            
            //to ccaddress
            string[] ccaddress=new string[]{'sadbhaiyyarupesh1947@gmail.com'};
            email.setCcAddresses(ccaddress);
            
            //to bccaddress
            string[] bccaddress=new string[]{'sadbhaiyyarupesh1947@gmail.com'};
             email.setBccAddresses(bccaddress);
            
            //step3: set sender display name
            email.setSenderDisplayName('SFDC Email Programming');
            
            //step4: set reply to method
            email.setReplyTo('rupeshsadbhaiyyasfdc@gmail.com');
            
            //step5: set subject
            string subject='SFDC Email Programming Mail';
            email.setSubject(subject);
            
            //step6: body enter
            string content='Congratulation you send email sucessfully';
            email.setPlainTextBody(content);
            
            //step7: send file attachment
            //create the list attchment collection
            list<messaging.EmailFileAttachment> lst=new list<messaging.EmailFileAttachment>();
            messaging.EmailFileAttachment attach=new messaging.EmailFileAttachment();
            
            attach.setContentType('Application/pdf');
            attach.setFileName('sfdc intro.pdf');
            attach.body=blob.toPdf(content);
            
            //add collection to the list
            lst.add(attach);
            
            email.setFileAttachments(lst);
            
            //step8: send email
            messaging.sendEmail(new messaging.SingleEmailMessage[]{email});
            
            
            
            
        }
    }
}