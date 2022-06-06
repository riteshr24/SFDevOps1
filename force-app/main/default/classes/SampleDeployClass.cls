@isTest
public class SampleDeployClass {

    public static testmethod void t2() {
        helloMethod();

        Account acc = new Account(Name= 'fred8864434354gerge');
        insert acc; // hit the trigger

        // Check that the trigger properly set the phone field:
        Account retAcc = [select id, phone from Account where id=:acc.id][0];
        System.assertEquals(getPhone(), retAcc.phone);
    }

    public static String getPhone() {
        return 'SamplePhone######668786';
    }
    
    public static void helloMethod() {
        System.debug('Hello World 1237979835345979879');
    }
}
