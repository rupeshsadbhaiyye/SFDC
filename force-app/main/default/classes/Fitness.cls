public class Fitness {
    /*//create a class with name 'Fitness' which have couple of methods to calculate human fitness
first method: // calculate BMI which accepts necessary parameter and return the value of BMI.
BMI formula = Body WT in kg / (Body hight in mtr)2

Pace calculator : // create a method with name Calculatepace which accepts neccesary parameter and return KM/hr
formula distance(KM)/time(min) which return the KM/min value */
    
    public static Decimal CalculateBmi(decimal Weight,decimal hight){
        if(hight <= 0 || Weight < 0){
            return -1;
        }
        decimal BMIValue = Weight/(hight*hight);
        system.debug('the BMI of the trainer is : '+BMIValue);
        return BMIValue;
    }
    public static decimal CalculatePace(decimal distance,decimal walktimeinmin){
        if(distance < 0 || walktimeinmin <= 0){
            return -1;
        }
       decimal walktimeinhr = walktimeinmin/60;
        decimal Pace = distance/walktimeinhr;
        system.debug('the pace of tthe runner is : '+Pace);
        return Pace;
    }

}