trigger Practaccounttriger on Account (before update) {
   // Create a Trigger on Account Object, to Prevent the Update of an Active Account.
    if (trigger.isbefore && trigger.isupdate) {
        for (Account acc : trigger.new) {
            if (acc.Active__c == 'Yes') {
                acc.Active__c.addError('आप एक सक्रिय खाता को अपडेट नहीं कर सकते');
            }
        }
    }
}