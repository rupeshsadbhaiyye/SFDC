public class email5 {
    public static void phase1(){
        //insert a single record inside the position object and send a email notification for creating the record
        //create the object of position__c class
        position__c ps=new position__c();
        //assign the values
        ps.Name='Rupesh Sadbhaiyya';
        ps.Maximum_Budget__c=7411;
        ps.Number_of_vacancies__c=4;
        ps.country__c='India';
        ps.Milestone_date__c=date.parse('12/27/1997');
        ps.HR_Email_ID__c='rupeshsadbhaiyyasfdc@gmail.com';
        //insert the record
        insert ps;
        //get the record id and check
        if(ps.Id!=null){
            system.debug('the record is inserted '+ps.Id);
            phase2(ps);
        }
    }
    public static void phase2(position__c po){
        //create the object of namespace messaging.singleemailmessage class
        messaging.SingleEmailMessage email=new messaging.SingleEmailMessage();
        
        //set to person email address
        string[] toaddress=new string[]{'rupeshsadbhaiyyasfdc@gmail.com'};
            email.setToAddresses(toaddress);
        //set cc person email address
        string[] ccaddress=new string[]{'kalpeshsadbhaiyya@yahoo.co.in'};
            email.setCcAddresses(ccaddress);
        //set bcc person email address
        string[] bccaddress=new string[]{'sadbhaiyyarupesh1947@gmail.com'};
            email.setBccAddresses(bccaddress);
        
        //set the sender display name
        string sender='Shree Gas And Domestic Appliance..!!';
        email.setSenderDisplayName(sender);
        
        //set the reply to person email address
        string reply='sadbhaiyyarupesh1947@gmail.com';
        email.setReplyTo(reply);
        
        //set subject
        string subject='Your refill is Booked';
        email.setSubject(subject);
        
        //set email body
        string containt='your refill is booked. Your cylinder is delivered shortly..';
        email.setPlainTextBody(containt);
        
        //set the emailfileattachment
        list<messaging.EmailFileAttachment> lst=new list<messaging.EmailFileAttachment>();
        messaging.EmailFileAttachment attach=new messaging.EmailFileAttachment();
        //assign the values
        attach.setContentType('application/pdf');
        attach.setFileName('sfdcorg.pdf');
        attach.body =blob.toPdf(containt);
        lst.add(attach);
        email.setFileAttachments(lst);
        
        //send email
        messaging.sendEmail(new messaging.SingleEmailMessage[]{email});
        
    }

}