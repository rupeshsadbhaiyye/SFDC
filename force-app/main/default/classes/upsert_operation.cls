public class upsert_operation {
    public static void test(){
        //update all the lead record whoes status is open-not contacted then phone is 111111111
        //for insert operation
        list<lead> lst1=new list<lead>();
        //for update operation
        list<lead> lst=[select Name,phone,status from lead where status =:'Open - Not Contacted'];
        if(!lst.isEmpty()){
            for(lead ld:lst){
                ld.phone='1111111111';
                lst1.add(ld);
            }
            lead l=new lead();
            l.lastName='Banking Customer Lead';
            l.Status='Open - Not Contacted';
            l.Phone='741252369';
            l.Company='Banking';
            lst1.add(l);
            if(!lst1.isempty()){
                upsert lst1;
            }
        }
    }

}