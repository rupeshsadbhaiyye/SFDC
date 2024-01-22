public class governer_limits1 {
    public void soql(){
        list<account> lst=[select name,phone from account];
        list<contact> lst1=[select lastname,firstname from contact ];
        for(integer counter=1;counter<=100;counter++){
            list<opportunity> opp=[select id,stagename from opportunity];
        }
    }

}