public class PizzaBill {
    public static integer Sellprice(integer slice){
        integer price;
        if(slice==1){
            price=8;
            
        }
        else if(slice>1 && slice<=3){
            price=7;
        }
        else if(slice>3){
            price=6;
        }
        integer totalpriceofpizza = slice*price;
        system.debug('the price of pizza for customer is '+totalpriceofpizza);
        return totalpriceofpizza;
        
    }

}