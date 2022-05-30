@isTest
public class SampleFailingTestClass {

    public static testmethod void failingTest() {
        Account acc = new Account(Name= 'fred501');
        insert acc;

        Account retAccount1 = [select id, phone from Account where id=:acc.id][0];
     //   System.assertEquals('867-5309', retAcc.phone); // Always fails.
    }
}
