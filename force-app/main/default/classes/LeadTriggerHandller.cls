public class LeadTriggerHandller {
    Public static void BeforeInsertHandller(List<Lead> ldrecord){
        for(Lead ld:ldrecord){
            if(string.isblank(ld.LeadSource) ){
                ld.LeadSource.adderror('status field can not be blank');
            }
            if(string.isblank(ld.Industry)){
                ld.Industry='Banking';
            }  
        }
    }
    Public static void AfterInsertHandller(List<Lead> ldrecord){
        List<Task> lst=new List<Task>();
            for(Lead ld : ldrecord){
                Task ts=new Task();
                ts.Subject='Testing record for the new trigger';
                ts.WhoId=ld.id;
                lst.add(ts);
            }
            insert lst;
    }
    Public static void BeforeUpdatetHandller(List<Lead> ldrecord,Map<id,Lead> mapofoldrecords){
        for(Lead ld :ldrecord){
                if(string.isblank(ld.LeadSource) ){
                    ld.LeadSource.adderror('status field can not be blank');
                }
                if((ld.Status =='Closed - Not Converted' || ld.Status =='Closed - Converted') && mapofoldrecords.get(ld.Id).status=='Open - Not Contacted' ){
                    ld.Status.adderror('you can not close the open lead directly');
                }
            }
    }
    
}