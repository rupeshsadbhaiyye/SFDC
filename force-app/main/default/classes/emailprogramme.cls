public class emailprogramme {
    public static void phase1(){
        //create the record inside the account object and send an email akert
        //create the object of account class
        contact con=new contact();
        //assign the values
        con.LastName ='kanji mehta';    
        con.Phone ='541236977';
        con.Fax ='422';
        con.Email ='rupeshsadbhaiyyasfdc@gmail.com';
        //insert the record
        insert con;
        //check the record is inserted or not
        if(con.id!=null){
            system.debug('the record is inserted '+con.Id);
            phase2(con);
                    }
    }
    public static void phase2(contact co){
        if(co.id!=null){
            //create the object of messaging.singleemailmessage class
            messaging.SingleEmailMessage email=new messaging.SingleEmailMessage();
            
            //set to person email id
            string[] toaddress=new string[]{'rupeshsadbhaiyyasfdc@gmail.com'};
                email.setToAddresses(toaddress);
            //set cc person email id
            string[] ccaddress=new string[]{'rupeshsadbhaiyyasfdc@gmail.com'};
                email.setCcAddresses(ccaddress);
            //set bcc person email id
            string[] bccaddress=new string[]{'rupeshsadbhaiyyasfdc@gmail.com'};
                email.setBccAddresses(bccaddress);
            
            //set sender display name
            string send='Shree Gas and Domestic Appliance';
            email.setSenderDisplayName(send);
            
            //set reply to address
            string to='rupeshsadbhaiyyasfdc@gmail.com';
            email.setReplyTo(to);
            
            //set the subject
            string subject='We are hiring new agents';
            email.setSubject(subject);
            
            //set email body
            string containt='you are successfully applied for the new job ...now you are eligible';
            email.setPlainTextBody(containt);
            
            //set the emailfileattachment
            list<messaging.EmailFileAttachment> lst=new list<messaging.EmailFileAttachment>();
            //certe the obhject of class
            messaging.EmailFileAttachment attach=new messaging.EmailFileAttachment();
            //assign the values
            attach.setContentType('application/pdf');
            attach.setFileName('file:///C:/Users/Vidhi%20Yadav/Downloads/Admin%20Material.pdf');
            attach.body=blob.toPdf(containt);
            //add the variable inside the list
            lst.add(attach);
            
            email.setFileAttachments(lst);
            
            messaging.sendEmail(new messaging.SingleEmailMessage[]{email});
           
            
            
        }
        
    }

}