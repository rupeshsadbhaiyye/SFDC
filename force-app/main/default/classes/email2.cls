public class email2 {
    public static void phase1()
    {
        //insert single record insdie the lead object
        //create the object of that lead class
        lead ld=new lead();
        
        //assign the values
        ld.LastName='Email Programming 123';
        ld.Company='CGI11';
        ld.Status='Open- Not Contacted';
        ld.email='rupeshsadbhaiyyasfdc@gmail.com';
        
        //insert the record
        insert ld;
        
        //check the id is inserted or not
        if(ld.Id!=null)
        {
            system.debug('record inserted successfully='+ld.Id);
            //method communicate
            phase2(ld);
        }
    }
    public static void phase2(lead l)
    {
        if(l.Id!=null)
        {
            //email programming
            Messaging.SingleEmailMessage email=new Messaging.SingleEmailMessage();
            
            //to person email id
            string[] toaddress=new string[]{'rupeshsadbhaiyyasfdc@gmail.com'};
            email.setToAddresses(toaddress);
            
            //cc person mail id
            string[] ccaddress=new string[]{'rupeshsadbhaiyyasfdc@gmail.com'};
            email.setCcAddresses(ccaddress);
            
            //bcc person mail id
            string[] bccaddress=new string[]{'rupeshsadbhaiyyasfdc@gmail.com'};
            email.setBccAddresses(bccaddress);
            
            //set sender display name
            email.setSenderDisplayName('SFDC Admin & Developer');
            
            //set reply to
            email.setreplyto('sfdc@gmail.com');
            
			//set subject
			string subject='SFDC Course Description';
			email.setSubject(subject);

			//body enter
			string content='SFDC Course Include 5 Modules Admin , Devleopment , Integeration , Lightning , LWC';
			email.setPlainTextBody(content);
            
            //create the list
            list<messaging.EmailFileAttachment> lst=new list<messaging.EmailFileAttachment>();
                        
            //prepare the attachment
            Messaging.EmailFileAttachment attach=new messaging.EmailFileAttachment();
            //file specification
            attach.setContentType('Application/pdf');
            attach.setFileName('SFDC Intro.pdf');
            attach.body=blob.toPdf(content);
            
            //add the variable inside rhe list
            lst.add(attach);
            
            //show the attach file 
            email.setFileAttachments(lst);
            
            
            //to send the email
             Messaging.sendEmail(new Messaging.SingleEmailMessage[]{email});
            
            
            
            
        }
}
}