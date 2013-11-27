/**
*
* @description Class contains methods for composing standard SFDC objects.
*
* @author Andrew Chiz Muzychuk
* @date 11/26/2013
*
*/
public with sharing class TestHelper {



	static String SYSTEM_ADMINISTRATOR = 'System Administrator';

	/**
	*
	* @description Method creates minimal User object without inserting it.
	* Email is the same as userName, CommunityNickname - alias.
	*
	* @param userName 
	* @param lastName
	* @param alias
	*
	* @author Andrew Chiz Muzychuk
	* @date 11/26/2013
	*
	* @usage TestHelper.createUserObject(userName, lastName, alias)
	*
	*/
	public static User createNewUser(
		String userName, 
		String lastName, 
		String alias
	) {
		
		Profile pSystemAdministrator = [
			SELECT Id 
			FROM Profile 
			WHERE name LIKE :SYSTEM_ADMINISTRATOR
		];
				
		User newUser = new User(
			Username = userName, 
			LastName = lastName, 
			Email = userName, 
			Alias = alias, 
			CommunityNickname = alias, 
			TimeZoneSidKey = 'GMT', 
			LocaleSidKey = 'en_US', 
			EmailEncodingKey = 'ISO-8859-1', 
			ProfileId = pSystemAdministrator.Id, 
			LanguageLocaleKey = 'en_US'
		);
		
		return newUser;
	}



}