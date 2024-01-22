public class MessagingHelper {
	Public static void SendBatchJobStatusAlert(AsyncApexJob jobInfo, string jobName)
    {
        if(jobInfo.Id != null)
        {
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
            
            	string[] toAddress = new string[]{jobInfo.CreatedBy.Email, 'rishidahaney@gmail.com'};
            	email.setToAddresses(toAddress);
            
            	email.setSenderDisplayName('DELL Weekly BatchJob Status Alert.');
            
            	email.setReplyTo('support@dell.com');
            
            	string emailSubject = 'Alert : Weekly Batch Job - '+ jobName + ' (' + jobInfo.Id + ') Status Alert.';
            	email.setSubject(emailSubject);
            
            	string emailContent = 'Dear Customer Support, <br/><br/>'+
                    					'We are pleased to inform you, that the Weekly Batch Job - '+ jobName+ ' has been Processed Successfully. <br/><br/>'+
                    					'Here are the Details of the Batch Job....: <br/><br/>'+
                    					'Batch Job ID is.....: '+ jobInfo.Id+
                    					'<br/> Batch Job Name is....: '+ jobName+
                    					'<br/> Batch Job Status is...: '+ jobInfo.Status+
                    					'<br/> Total Number of Batches .....: '+ jobInfo.TotalJobItems+
                    					'<br/> Number of Batched Processed....: '+ jobInfo.JobItemsProcessed+
                    					'<br/> Number of Batches Failed.......: '+ jobInfo.NumberOfErrors+
                    					'<br/><br/> Please Contact on the below address, if any queries. <br/><br/>'+
                    					'***This is a System-Generated Email. Please Do Not Reply. <br/><br/>'+
                    					'Thanks & Regards, <br/> Customer Support, <br/> DELL Inc.';
            	email.setHtmlBody(emailContent);
            
            Messaging.sendEmail(new Messaging.SingleEmailMessage[]{email});
        }
    }
}