@isTest
private	class TestRestrictContactByName {
	@isTest static void InvalidName() {
		Contact con = new Contact(LastName='INVALIDNAME');
		Test.startTest();
		Database.SaveResult result = Database.insert(con);
		Test.stopTest();
		System.assert(!result.isSuccess());
		System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML', result.getErrors()[0].getMessage());
		System.debug('Test Result: ' + result.getErrors()[0].getMessage());
	}

	@isTest static void ValidName() {
		Contact con = new Contact(LastName='Jones');
		Test.startTest();
		Database.SaveResult result = Database.insert(con);
		Test.stopTest();
		System.assert(result.isSuccess());		
	}	
}