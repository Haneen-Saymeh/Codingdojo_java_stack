public class BankAccount{
    private double checkingBalance;
    private double savingBalance;
    public static int numberOfAccounts = 0;
    public static int totalOfMoney = 0;


public BankAccount(){
    numberOfAccounts++;
}

public double getCheckingBalance(){
    return this.checkingBalance;

}

public double getSavingBalance(){
    return this.savingBalance;
}

public void depositeMoney(double money){
    
    this.checkingBalance= this.checkingBalance+money;
    this.savingBalance= this.savingBalance+money;

}

public void withdrowMoney(double amount){
    if (this.checkingBalance>= amount && this.savingBalance>=amount){
    this.checkingBalance= this.checkingBalance-amount;
    this.savingBalance= this.savingBalance-amount;
    }
    else{
        System.out.println("Account Balance is not enought to complete the procedure.");
    }
}

public void displayBalance(){
    System.out.println("Amount of money in Saving balance: " + this.getSavingBalance());
    System.out.println("Amount of money in Checking balance: " + this.getCheckingBalance());
}

}