@isTest
public class SampleDeployClass {

    public static testmethod void t1() {
        helloMethod();

        Account acc = new Account(Name= 'fred5aster12only');
        insert acc; // hit the trigger

        // Check that the trigger properly set the phone fieldsss:
        Account retAcc = [select id, phone from Account where id=:acc.id][0];
        System.assertEquals(getPhone(), retAcc.phone);
    }

    public static String getPhone() {
        return 'SamplePhone#';
    }
    
    public static void helloMethod() {
        System.debug('Hello World 123790');
    }
}
