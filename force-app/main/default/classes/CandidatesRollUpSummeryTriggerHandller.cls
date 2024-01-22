public class CandidatesRollUpSummeryTriggerHandller {
    Public static void Afterinsert(List<Candidate_1__c> lstcan){
        Set<ID> Positionids=new Set<ID>();
        For(Candidate_1__c can: lstcan){
            if(string.isnotblank(can.Position_lookup__c)){
                Positionids.add(can.Position_lookup__c);
            }
        }
        Map<ID,Position__c> listofposition=new Map<ID,Position__c>();
        List<AggregateResult> Results=[Select Position_lookup__c,Count(ID) totalcount From Candidate_1__c where Position_lookup__c IN :Positionids GROUP BY Position_lookup__c];
        For(AggregateResult Result : Results){
            String positionid=string.valueof(Result.get('Position_lookup__c'));
            Integer countofcandidates=Integer.valueof(Result.get('totalcount'));
            Position__c pos=new Position__c();
            pos.Id=positionid;
            pos.Count_OF_Candidates__c=countofcandidates;
            listofposition.put(pos.Id,pos);
        }
        For(ID posid : Positionids){
            if(!listofposition.containskey(posid)){
                Position__c pos1=new Position__c(); 
                pos1.Id=posid;
                pos1.Count_OF_Candidates__c=0;
                listofposition.put(pos1.Id,pos1);
            }
        }
        update listofposition.values();
    }
    public static void AfterUpdate(List<Candidate_1__c> lstcan, Map<ID, Candidate_1__c> Mapodoldrecords) {
        Set<ID> Positionids = new Set<ID>();
        for (Candidate_1__c can : lstcan) {
            // Check if the Position_lookup__c field is not blank and has been changed
            if (String.isNotBlank(can.Position_lookup__c) &&
                (Mapodoldrecords.get(can.Id).Position_lookup__c != can.Position_lookup__c
                 || Mapodoldrecords.get(can.Id).Position_lookup__c == null)) {
                Positionids.add(Mapodoldrecords.get(can.Id).Position_lookup__c);
                Positionids.add(can.Position_lookup__c);
            }
        }

        Map<ID, Position__c> listofposition = new Map<ID, Position__c>();
        List<AggregateResult> Results = [
            SELECT Position_lookup__c, Count(ID) totalcount
            FROM Candidate_1__c
            WHERE Position_lookup__c IN :Positionids
            GROUP BY Position_lookup__c
        ];

        for (AggregateResult Result : Results) {
            String positionid = String.valueOf(Result.get('Position_lookup__c'));
            Integer countofcandidates = Integer.valueOf(Result.get('totalcount'));
            Position__c pos = new Position__c();
            pos.Id = positionid;
            pos.Count_OF_Candidates__c = countofcandidates;
            listofposition.put(pos.Id, pos);
        }

        for (ID posid : Positionids) {
            if (!listofposition.containsKey(posid)) {
                Position__c pos1 = new Position__c();
                pos1.Id = posid;
                pos1.Count_OF_Candidates__c = 0;
                listofposition.put(pos1.Id, pos1);
            }
        }

        update listofposition.values();
    }


    Public static void AfterDelete(List<Candidate_1__c> lstcan){
        Set<ID> Positionids=new Set<ID>();
        For(Candidate_1__c can: lstcan){
            if(string.isnotblank(can.Position_lookup__c)){
                Positionids.add(can.Position_lookup__c);
            }
        }
        Map<ID,Position__c> listofposition=new Map<ID,Position__c>();
        List<AggregateResult> Results=[Select Position_lookup__c,Count(ID) totalcount From Candidate_1__c where Position_lookup__c IN :Positionids GROUP BY Position_lookup__c];
        For(AggregateResult Result : Results){
            String positionid=string.valueof(Result.get('Position_lookup__c'));
            Integer countofcandidates=Integer.valueof(Result.get('totalcount'));
            Position__c pos=new Position__c();
            pos.Id=positionid;
            pos.Count_OF_Candidates__c=countofcandidates;
            listofposition.put(pos.Id,pos);
        }
        For(ID posid : Positionids){
            if(!listofposition.containskey(posid)){
                Position__c pos1=new Position__c(); 
                pos1.Id=posid;
                pos1.Count_OF_Candidates__c=0;
                listofposition.put(pos1.Id,pos1);
            }
        }
        update listofposition.values();
    }
    Public static void AfterUnDelete(List<Candidate_1__c> lstcan){
        Set<ID> Positionids=new Set<ID>();
        For(Candidate_1__c can: lstcan){
            if(string.isnotblank(can.Position_lookup__c)){
                Positionids.add(can.Position_lookup__c);
            }
        }
        Map<ID,Position__c> listofposition=new Map<ID,Position__c>();
        List<AggregateResult> Results=[Select Position_lookup__c,Count(ID) totalcount From Candidate_1__c where Position_lookup__c IN :Positionids GROUP BY Position_lookup__c];
        For(AggregateResult Result : Results){
            String positionid=string.valueof(Result.get('Position_lookup__c'));
            Integer countofcandidates=Integer.valueof(Result.get('totalcount'));
            Position__c pos=new Position__c();
            pos.Id=positionid;
            pos.Count_OF_Candidates__c=countofcandidates;
            listofposition.put(pos.Id,pos);
        }
        For(ID posid : Positionids){
            if(!listofposition.containskey(posid)){
                Position__c pos1=new Position__c(); 
                pos1.Id=posid;
                pos1.Count_OF_Candidates__c=0;
                listofposition.put(pos1.Id,pos1);
            }
        }
        update listofposition.values();
    }
}