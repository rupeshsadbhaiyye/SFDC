public class email1 {
    //insert a single record inside the hiring manager object and send a email notification for the case registration..
    public static void phase1(){
        //create the object of hiring_manager__c class
        hiring_manager__c hr=new hiring_manager__c();
        //assign the valies
        hr.Name='Narendra Modi';
        hr.Contact_Number__c ='7412589630';
        hr.Email_Id__c ='rupeshsadbhaiyyasfdc@gmail.com';
        // insert the record
        insert hr;
        //get the record id
        if(hr.Id!=null){
            system.debug('the hr id is '+hr.Id);
            phase2(hr);
        }
    }
    public static void phase2(hiring_manager__c hm){
        //email programming
        //create the object of message.singleemailmessage class
        messaging.SingleEmailMessage email=new messaging.SingleEmailMessage();
        
        //set the to person email idre
        string[] toaddress=new string[]{'rupeshsadbhaiyyasfdc@gmail.com'};
            email.setToAddresses(toaddress);
        //set the cc person email id
        string[] ccaddress=new string[]{'rupeshsadbhaiyyasfdc@gmail.com'};
            email.setCcAddresses(ccaddress);
        //set the bcc person email id
        string[] bccaddress=new string[]{'rupeshsadbhaiyyasfdc@gmail.com'};
            email.setBccAddresses(bccaddress);
        
        //set the sende name display
        email.setSenderDisplayName('SHREE INDANE GAS AGENCY');
        //set reply to email id
        email.setReplyTo('sadbhiyyarupeshsfdc@gmail.com');
        //set the subject for the email
        string subject='Your Cylinder Is Booked';
        email.setSubject(subject);
        //set the email body
        string containt='you refill is book with consumer no.123456789';
        email.setPlainTextBody(containt);
        //set emailfileattachment
        //create the list of messaging.emailfileattachment object
        list<messaging.EmailFileAttachment> lst=new list<messaging.EmailFileAttachment>();
        
        //create the object of messaging.emailfileattachment class
        messaging.emailfileattachment attach=new messaging.emailfileattachment();
        //assign the values
        attach.setContentType('Application/pdf');
        attach.setFileName('shreegas.pdf');
        attach.body=blob.toPdf(containt);
        
        //add the vairible inside the list
        lst.add(attach);
        email.setFileAttachments(lst);
        
        //send email
        messaging.sendEmail(new messaging.SingleEmailMessage[]{email});
        
        
    }

}