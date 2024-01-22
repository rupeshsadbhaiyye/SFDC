public class Practemailmessage_class {
    /*Write an apex program, to Create a Lead Record inside the object. 
       And Send the Email Notification to the Lead Person's Email Id with the Lead Details and Add the Attachment to the Email.*/
    public static void test(){
        lead ld=new lead();
        ld.Email='sadbhaiyyarupesh1947@gmail.com';
        ld.FirstName='Rupesh Email';
        ld.LastName='Tasting';
        if(ld.Id!=null){
            insert ld;
            //call the messaging class
        }
    }
    public static void test(lead ldrecord){
        messaging.SingleEmailMessage email=new messaging.SingleEmailMessage();
        string[] toaddress=new string[]{ldrecord.Email};
          email.setToAddresses(toaddress);
        string[] ccaddress=new string[]{ldrecord.email,'rupeshsadbhaiyyesfdc@gmail.com'};
            email.setCcAddresses(ccaddress);
    }

}