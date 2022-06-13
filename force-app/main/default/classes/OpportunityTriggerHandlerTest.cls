@IsTest
public class OpportunityTriggerHandlerTest {

    @IsTest
    static void createTask(){
        // Arrange
        Opportunity op = new Opportunity();
        op.Name = 'teste';
        op.CloseDate = Date.today().addDays(1);
        op.Amount = 1200;
        op.StageName = 'Prospecting';
        Opportunity op2 = new Opportunity();
        op2.Name = 'teste2';
        op2.CloseDate = Date.today().addDays(1);
        op2.Amount = 900;
        op2.StageName = 'Needs Analisys';
        List<Opportunity> opps = new List<Opportunity>();
        opps.add(op);
        opps.add(op2);
        // Act
        Test.startTest();
        insert opps;
        Test.stopTest();
        // Assert
        Set<Id> oppIds = new Set<Id>();
        for(Opportunity opp : opps){
            oppIds.add(opp.Id);
        }
        List<Task> tasks = [SELECT Id, WhatId, Subject FROM Task WHERE WhatId IN :oppIds];
        System.assertEquals(false, tasks.isEmpty(), 'Não foram criadas as tarefas');
    }
    
    @IsTest
    static void resetStatus(){
        // Arrange
        Opportunity op = new Opportunity();
        op.Name = 'teste';
        op.CloseDate = Date.today().addDays(1);
        op.Amount = 1200;
        op.StageName = 'Needs Analisys';
        insert op;
        // Act
        Test.startTest();
        op.Amount = 1230;
        op.CloseDate = Date.today().addMonths(1);
        update op;
        Test.stopTest();
        // Assert
        Opportunity result = [SELECT Id, StageName, Amount FROM Opportunity WHERE Id = :op.Id];
        System.assertEquals('Prospecting', result.StageName, 'O estágio da oportunidade não foi alterado para o esperado.');
    }
}