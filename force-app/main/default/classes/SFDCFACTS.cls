public class SFDCFACTS {
    public String test(integer day){
        string theday;
        switch on day{
            when 0{
                theday='Sunday';
                system.debug('today is '+theday);
            }
            when 1{
                theday='Monday';
                system.debug('today is '+theday);
            }
            when 2{
                theday='tuesday';
                system.debug('today is '+theday);
            }
            when 3{
                theday='wednesday';
                system.debug('today is '+theday);
            }
            when 4{
                theday='Thursday';
                system.debug('today is '+theday);
            }
            when 5{
                theday='Friday';
                system.debug('today is '+theday);
            }
            when 6{
                theday='Saturday';
                system.debug('today is '+theday);
            }
            when else{
                theday='Invalid number';
                system.debug('today is '+theday);
            }
        }
        return theday;
    }

}