@istest
public class FitnessTest {
    @istest
    public static void CalculateBmitest(){
        decimal weight=45;
        decimal hight=150;
        decimal result=Fitness.CalculateBmi(Weight, hight);
        system.assertEquals(0.002, result, 'the result is not matched');
        
    }
     @istest
    public static void CalculateBmitest1(){
        decimal weight=45;
        decimal hight=0;
        decimal result=Fitness.CalculateBmi(Weight, hight);
        system.assertEquals(-1, result, 'the result is not matched');
        
    }
    @istest
    public static void CalculatePace(){
        decimal distance=30;
        decimal walktimeinmin=120;
        decimal Pace=Fitness.CalculatePace(distance, walktimeinmin);
        system.assertEquals(15, Pace, 'the result is not matched');
    }
     @istest
    public static void CalculatePace1(){
        decimal distance=30;
        decimal walktimeinmin=0;
        decimal Pace=Fitness.CalculatePace(distance, walktimeinmin);
        system.assertEquals(-1, Pace, 'the result is not matched');
    }

}