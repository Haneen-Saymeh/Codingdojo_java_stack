public class TestBankAccount{
    public static void main(String [] args){

        /* ============ Testing functionality for account no.1 ============= */
        BankAccount account1 = new BankAccount();
        System.out.println(BankAccount.numberOfAccounts);

        account1.depositeMoney(200.5);
        System.out.println(account1.getCheckingBalance());
        account1.withdrowMoney(100);
        System.out.println(account1.getCheckingBalance());
        account1.displayBalance();

         /* ============ Testing functionality for account no.2 ============= */
        BankAccount account2 = new BankAccount();
        System.out.println(BankAccount.numberOfAccounts);

        account2.depositeMoney(300.99);
        System.out.println(account2.getCheckingBalance());
        account2.withdrowMoney(200);
        System.out.println(account2.getCheckingBalance());
        account2.displayBalance();

        /* ============ Testing functionality for account no.3 ============= */
        BankAccount account3 = new BankAccount();
        System.out.println(BankAccount.numberOfAccounts);

        account3.depositeMoney(50);
        System.out.println(account3.getCheckingBalance());
        account2.withdrowMoney(100);
        System.out.println(account3.getCheckingBalance());
        account3.displayBalance();

    }
}