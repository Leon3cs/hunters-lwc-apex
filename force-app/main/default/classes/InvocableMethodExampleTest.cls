@isTest
public class InvocableMethodExampleTest {
    
    @isTest
    static void execute(){
        InvocableMethodExample.Input input = new InvocableMethodExample.Input();

        List<String> textos = new List<String>{'a', 'b', 'c', 'd', 'e'};

        input.objetos = textos;

        Test.startTest();
        List<InvocableMethodExample.Output> result = InvocableMethodExample.execute(new LIst<InvocableMethodExample.Input>{input});

        System.debug(textos.get(0) + '| ' + result.get(0).objeto);
        System.assertNotEquals(textos.get(0), result.get(0).objeto, 'Os retornos foram iguais.');
        Test.stopTest();
    } 
}
