# Exercícios Apex

1. Escreva uma trigger que, para toda criação de contato, deverá gerar uma conta caso este não possua conta associada. (Utilizar Nome e Email do contato para a nova conta)

2. Escreva uma trigger para o objeto Conta que ao inserir um registro, caso o endereço de cobrança estiver preenchido, deverá preeencher o endereço de entrega com os mesmos valores.
    - Ao atualizar o registro, se os campos de endereço de cobrança forem alterados, deverá atualizar os campos do endereço de entrega.

3. Crie um campo no objeto Conta:
    - Nome: Total de oportunidades
    - Tipo: Numérico(16,2)

    Escreva uma trigger no objeto conta em que, quando um registro for atualizado, deverá preencher no campo 'Total de oportunidades' a soma do campo 'Amount' de todas as oportunidades relacionada à conta.

4. Escreva uma batch que deverá obter todos os registros de oportunidade e:
    - Se o campo Amount > 2000: Deverá atualizar o StageName inicial da oportunidade
    - Se o campo Account Name estiver vazio: Atualizar o StageName para "Closed Lost"
    - Se o campo Close Date for anterior à data atual e o StageName não for "Closed Won" ou "Closed Lost", marcar o campo "Private"

## Exercícios LWC

1. Crie um LWC e uma classe controller para o mesmo:
    - O controller deverá ter um método que retorna o StageName da oportunidade e o nome e código de todos os produtos relacionados.
    - No LWC: Obtenha o id do registro atual
    - Utilize o connectedCallback para chamar a função criada no controller
    - Exiba no HTML o StageName como em uma tag 'p';
    - Exiba o nome e código dos produtos relacionados em uma lista.
