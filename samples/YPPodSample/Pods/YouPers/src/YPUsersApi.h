#import <Foundation/Foundation.h>
#import "YPUsernameEmail.h"
#import "YPUser.h"


@interface YPUsersApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPUsersApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 validate user, AccessLevel: al_all
 
 @param body check if username is unique
 */
-(NSNumber*) validateUserWithCompletionBlock:(YPUsernameEmail*) body 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 avatar image upload, AccessLevel: al_user
 uses traditional HTTP Multipart post, accepting at least jpg and png
 */
-(NSNumber*) avatarImagePostWithCompletionBlock:(void (^)(NSError* error))completionBlock;

/**

 email verification, AccessLevel: al_user
 email verification notes
 @param body the token a user's email address is verified with
 */
-(NSNumber*) verifyEmailTokenWithCompletionBlock:(NSString*) body 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 password reset, AccessLevel: al_anonymousonly
 resets a user's password to a new password with a temporary token as credentials
 @param body a JSON object with two attributes 'token' and 'password'
 */
-(NSNumber*) resetpasswordWithCompletionBlock:(NSString*) body 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 requests a password reset for the supplied username or email., AccessLevel: al_anonymousonly
 requests a password reset for the supplied username or email. An email will be sent to the user with a link that allows him to reset his password
 @param body a JSON object with one attribute 'usernameOrEmail'
 */
-(NSNumber*) requestPasswordResetWithCompletionBlock:(NSString*) body 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 find user by id, AccessLevel: al_all
 returns a user based on id
 @param _id ID of the user to be fetched
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getUserByIdWithCompletionBlock:(NSString*) _id 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        completionHandler: (void (^)(YPUser* output, NSError* error))completionBlock;

/**

 returns all users, AccessLevel: al_admin
 returns all users
 @param sort sorts the results by the specified properties, add &quot;:-1&quot; to reverse sort: e.g. sort=&quot;created:-1&quot;
 @param limit limit the amount of returned objects, default is 100, max is 1000
 @param filter filters the results by adding a where clause, to see  the supported language and format see 
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getUsersWithCompletionBlock:(NSString*) sort 
        limit:(NSNumber*) limit 
        filter:(NSString*) filter 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 updates the user, AccessLevel: al_user
 updates the user with id id
 @param _id ID of the user to be updated
 @param body updated user object
 */
-(NSNumber*) putUserByIdWithCompletionBlock:(NSString*) _id 
        body:(YPUser*) body 
        completionHandler: (void (^)(YPUser* output, NSError* error))completionBlock;

/**

 creates a new user and an empty user profile, AccessLevel: al_all
 creates the user and an associated empty user profile from the object passed in the body and returns the new use
 @param body updated user object
 */
-(NSNumber*) postUserWithCompletionBlock:(YPUser*) body 
        completionHandler: (void (^)(YPUser* output, NSError* error))completionBlock;

/**

 deletes the user and associated profile with passed id, AccessLevel: al_systemadmin
 deletes the user and associated profile with passed id
 @param _id ID of the user to be deleted
 */
-(NSNumber*) deleteUserWithCompletionBlock:(NSString*) _id 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 deletes all users, AccessLevel: al_systemadmin
 deletes all users
 */
-(NSNumber*) deleteAllUsersWithCompletionBlock:(void (^)(NSError* error))completionBlock;

@end
