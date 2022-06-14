public class InvocableMethodExample {
    
    @InvocableMethod(label='Retorna o objeto informado' description='Recebe um objeto e o retorna sem modficações')
    public static List<Output> execute(List<Input> inputs){
        List<Output> saida = new List<Output>();
        
        for(Input input : inputs){
            List<String> valores = input.objetos;
            String retorno = valores.get(0);

            Output output = new Output();
            output.objeto = '$' + retorno + '$';
    
            saida.add(output);
        }

        return saida;
    }


    public class Input {
        @InvocableVariable(label='Objetos para entrada' description='Armazena os objetos de entrada')
        public List<String> objetos;
    }
    
    public class Output {
        @InvocableVariable(label='Objetos para saída' description='Armazena os objetos de saída')
        public String objeto;
    }
}
