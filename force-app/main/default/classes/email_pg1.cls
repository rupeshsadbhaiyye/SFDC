public class email_pg1 {
    public static void phase1(){
        //insert the a singlr inside the contact object
        //create the object of contact class
        contact con=new contact();
        //assign the vales
        con.LastName ='Shriram city ';
        con.Email ='sadbhaiyyarupesh1947@gmail.com';
        //insert the recrd
        insert con;
        //check and get the record id
        if(con.id!=null){
            system.debug('the record inserted sucessfully '+con.Id);
            //Communucate the two phases
            phase2(con);
        }
    }
    public static void phase2(contact ct){
        //email programming
        //step1: add the namespace and create the object of singlemessage class
        messaging.SingleEmailMessage email=new messaging.SingleEmailMessage();
        
        //to addresee
        //step2: create the string toaddress class
        string[] toaddress=new string[]{'sadbhaiyyarupesh1947@gmail.com'};
        email.setToAddresses(toaddress);
        
        //step3: create the string of ccaddress class
        string[] ccaddress=new string[]{'sadbhaiyyarupesh1947@gmail.com'};
        email.setCcAddresses(ccaddress);
        
        //step4: create the string of bccadress class
        string[] bccaddress=new string[]{'sadbhaiyyarupesh1947@gmail.com'};
        email.setBccAddresses(bccaddress);
        
        //step5: set sender display name
        email.setSenderDisplayName('Bahubali');
        
        //step6: set reply email add
        email.setReplyTo('sadbhaiyyarupeshsfdc@gmail.com');
        
        //step7: set the subject 
        string subject='congratulations your case has been submited sucessfully!!!.....';
        email.setSubject(subject);
        
        //step8: set the body
        string containt='The case has been registered...!!';
        email.setPlainTextBody(containt);
        
        //Step9: set the emailfileattachment
        //first create the list for the attachment
        list<messaging.EmailFileAttachment> lst=new list<messaging.EmailFileAttachment>();
        //create the object of messaging.emailfileattachment class
        messaging.EmailFileAttachment attach=new messaging.EmailFileAttachment();
        //attch the file
        attach.setContentType('application/pdf');
        attach.setFileName('sfdc file.pdf');
        attach.body=blob.toPdf(containt);
        
        //add the vairible inside the list
        lst.add(attach);
        
        email.setFileAttachments(lst);
        
        //send email
        messaging.sendEmail(new messaging.SingleEmailMessage[]{email});
        
        
        
    }

}