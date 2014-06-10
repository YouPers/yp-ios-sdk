#import <Foundation/Foundation.h>
#import "YPEmailObject.h"
#import "YPOrganization.h"


@interface YPOrganizationsApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPOrganizationsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 avatar image upload, AccessLevel: al_orgadmin
 
 */
-(NSNumber*) avatarImagePostWithCompletionBlock:(void (^)(NSError* error))completionBlock;

/**

 creates an organization, AccessLevel: al_user
 creates an organization and assigns the authenticated user as administrator
 @param body organization object
 */
-(NSNumber*) postOrganizationWithCompletionBlock:(YPOrganization*) body 
        completionHandler: (void (^)(YPOrganization* output, NSError* error))completionBlock;

/**

 updates an organization, AccessLevel: al_orgadmin
 updates an organization
 @param body organization object
 */
-(NSNumber*) putOrganizationWithCompletionBlock:(YPOrganization*) body 
        completionHandler: (void (^)(YPOrganization* output, NSError* error))completionBlock;

/**

 find organization by id, AccessLevel: al_user
 returns a organization based on id
 @param _id ID of the organization to be fetched
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getOrganizationByIdWithCompletionBlock:(NSString*) _id 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        completionHandler: (void (^)(YPOrganization* output, NSError* error))completionBlock;

/**

 returns all organizations for the authenticated user, AccessLevel: al_user
 returns all organizations for the authenticated user
 @param sort sorts the results by the specified properties, add &quot;:-1&quot; to reverse sort: e.g. sort=&quot;created:-1&quot;
 @param limit limit the amount of returned objects, default is 100, max is 1000
 @param filter filters the results by adding a where clause, to see  the supported language and format see 
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getOrganizationsWithCompletionBlock:(NSString*) sort 
        limit:(NSNumber*) limit 
        filter:(NSString*) filter 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 deletes an organization, AccessLevel: al_systemadmin
 deletes the organization with the passed id
 @param _id ID of the organization to be deleted
 */
-(NSNumber*) deleteOrganizationWithCompletionBlock:(NSString*) _id 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Request an invitation for to become organization admin to be sent by the backend to the supplied email address(es), AccessLevel: al_orgadmin
 Posts a request for an invitation for one or more email-addresses
 @param body object with one property: 'email', an email address, or an array of adresses, or a separated String of emails (by ';, ')
 */
-(NSNumber*) postOrganizationAdminInviteWithCompletionBlock:(YPEmailObject*) body 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 With this endpoint a non-privileged user can assign himself to become organization admin when he has an invitation token., AccessLevel: al_user
 Posts a request to add the current user as orgadmin for the organization: special endpoint that can be called without al_orgadmin but needs a token instead for auth
 @param token the authtoken the user has gotten with his invitation email
 */
-(NSNumber*) assignOrganizationAdminWithCompletionBlock:(NSString*) token 
        completionHandler: (void (^)(NSError* error))completionBlock;

@end
