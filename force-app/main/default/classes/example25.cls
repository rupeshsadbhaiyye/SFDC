public class example25 {
    public static void test(){
        //Write an SOQL Query, to fetch the Top 5 Highest Annual Revenue Lead Records.
        //create the list of lead object
        list<lead> lst=[select name,status,AnnualRevenue from lead Order by annualrevenue desc limit 50];
        //apply enhance for loop
        for (lead ld:lst){
            system.debug('the record are '+ld);
        }
    }

}