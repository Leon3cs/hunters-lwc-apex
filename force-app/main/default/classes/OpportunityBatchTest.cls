@IsTest
public class OpportunityBatchTest {
	@IsTest
    static void executarBatch(){
        List<Opportunity> opps = new List<Opportunity>();
        for(Integer i=0;i<35;i++){
            Opportunity op = new Opportunity();
            op.Name = 'op '+i;
            op.StageName = 'Prospecting';
            op.CloseDate = Date.today().addDays(i);
            opps.add(op);
        }
        insert opps;
        
        Test.startTest();
        OpportunityBatch batch = new OpportunityBatch();
        Database.executeBatch(batch);
        Test.stopTest();
        
        List<Opportunity> results = [SELECT Id, StageName FROM Opportunity WHERE StageName = 'Needs Analysis'];
        System.assertEquals(35, results.size(), 'Não atualizou todos os registros');
    }
}