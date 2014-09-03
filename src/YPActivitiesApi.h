#import <Foundation/Foundation.h>
#import "YPEmailObject.h"
#import "YPActivityInvitationStatusResult.h"
#import "YPActivity.h"
#import "YPActivityValidationResult.h"

#import "YPError.h"

@interface YPActivitiesApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPActivitiesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Returns all Invitations along with their status, AccessLevel: al_individual
 Returns all Invitations for this activity and a dissmissalReason if the invitation is already dismissed
 @param _id the id of the activity to fetch 
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getActivityWithCompletionBlock:(NSString*) _id 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        completionHandler: (void (^)(YPActivityInvitationStatusResult* output, YPError* error))completionBlock;

/**

 Validates an activity that a user is about to POST, AccessLevel: al_individual
 Validates a new activity, generates the list of events and returns the list of conflicting events in case there are any for the activity in the body.
 @param body the activity to validate
 */
-(NSNumber*) validateActivityWithCompletionBlock:(YPActivity*) body 
        completionHandler: (void (^)(YPActivityValidationResult* output, YPError* error))completionBlock;

/**

 Returns an activity by Id, AccessLevel: al_individual
 Returns an activity by Id, only returns the activity if the current user is the owner of the activity
 @param _id the id of the activity to fetch 
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getActivityByIdWithCompletionBlock:(NSString*) _id 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        completionHandler: (void (^)(YPActivity* output, YPError* error))completionBlock;

/**

 returns all activities of the currently logged in user, AccessLevel: al_individual
 only returns Activities of the current user, the API does not allow to retrieveactivities owned by other users
 @param sort sorts the results by the specified properties, add &quot;:-1&quot; to reverse sort: e.g. sort=&quot;created:-1&quot;
 @param limit limit the amount of returned objects, default is 100, max is 1000
 @param filter filters the results by adding a where clause, to see  the supported language and format see 
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getActivitiesWithCompletionBlock:(NSString*) sort 
        limit:(NSNumber*) limit 
        filter:(NSString*) filter 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        completionHandler: (void (^)(NSArray* output, YPError* error))completionBlock;

/**

 Deletes a specific activity, AccessLevel: al_individual
 Deletes a specific activity
 @param _id the id of the activity to fetch 
 */
-(NSNumber*) deleteActivityWithCompletionBlock:(NSString*) _id 
        completionHandler: (void (^)(YPError* error))completionBlock;

/**

 Deletes all activities, AccessLevel: al_admin
 Deletes all activities
 */
-(NSNumber*) deleteActivitiesWithCompletionBlock:(void (^)(YPError* error))completionBlock;

/**

 Request an invitation for joining this activity to be sent by the backend to the supplied email address(es), AccessLevel: al_individual
 Posts an invitation for one or more email-addresses
 @param body object with one property: 'email', an email address, or an array of adresses, or a separated String of emails (by ';, ')
 @param _id the id of the activity to invite
 */
-(NSNumber*) postActivityInviteWithCompletionBlock:(YPEmailObject*) body 
        _id:(NSString*) _id 
        completionHandler: (void (^)(YPError* error))completionBlock;

/**

 Joins an activity, AccessLevel: al_individual
 Joins an activity
 @param _id the id of the activity to join
 */
-(NSNumber*) postJoinActivityFnWithCompletionBlock:(NSString*) _id 
        completionHandler: (void (^)(YPError* error))completionBlock;

/**

 Posts a new activity, AccessLevel: al_individual
 Posts a new activity. JoiningUsers property has to be empty - use the activity/join API to join an existing activity
 @param body the activity to store
 */
-(NSNumber*) postActivityWithCompletionBlock:(YPActivity*) body 
        completionHandler: (void (^)(YPActivity* output, YPError* error))completionBlock;

/**

 Updates an existing activity, AccessLevel: al_individual
 Updates an existing activity.
 @param _id the id of the activity to update
 @param body activity to be updated
 */
-(NSNumber*) putActivityWithCompletionBlock:(NSString*) _id 
        body:(YPActivity*) body 
        completionHandler: (void (^)(YPActivity* output, YPError* error))completionBlock;

@end
