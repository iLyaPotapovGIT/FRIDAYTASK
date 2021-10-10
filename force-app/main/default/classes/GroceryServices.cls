public class GroceryServices 
{   
    public List<Transaction__c> filterValidTransactions (List<Transaction__c> transactions)
    {
      List <Transaction__c> transactionsActiveAndClosed = new List <Transaction__c>();
      for(Integer i=0;i<transactions.size();i++) 
        {
            if (transactions[i].Status__c=='active' || transactions[i].Status__c=='closed')
            transactionsActiveAndClosed.add(transactions[i]); 
        }
        return transactionsActiveAndClosed;
    }
    
    public Decimal calculateTotalAmount (List<Line_Item__c> lineItems)
    {
          Decimal totalAmount;
          for(Integer i=0;i<lineItems.size();i++) 
            totalAmount+=lineItems[i].Amount__c;

          return totalAmount;
    }
}
/*
1. Create apex class GroceryServices.
Create method filterValidTransactions which should return Active and Closed transactions
Input parameter: (List<Transaction__c> transactions)
Result: (List<Transaction__c> transactions) - transactions with Active and Closed Status

2. Create method calculateTotalAmount in GroceryServices class which returns total amount for all specified Line Items
Input parameter: (List<Line_Item__c> lineItems)
Result: Integer amount - total amount for all specified Line Items
*/