@isTest
public with sharing class TestHelper_Test {



	@isTest(SeeAllData=false)
    static void createNewUserTest() {
        
        String userName = 'andrii.muzychuk@gmail.com';
        String lastName = 'Muzychuk';
        String alias = 'Chiz';
        
		User u1 = TestHelper.createNewUser(userName, lastName, alias);

		System.assert(userName.equals(u1.Username));
		System.assert(userName.equals(u1.Email));
		System.assert(lastName.equals(u1.LastName));
		System.assert(alias.equals(u1.Alias));

    }
    
    
    
}