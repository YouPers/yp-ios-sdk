#import <Foundation/Foundation.h>
#import "YPActivityPlan.h"
#import "YPEvent.h"
#import "YPEmailObject.h"


@interface YPActivityplansApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPActivityplansApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 returns activityPlans other users have published to invite colleages to join where the current user has access to., AccessLevel: al_individual
 Only returns public plans and plans in the same campaign as the user is currently participating in. Is is constrained by the activity-Reference, that has to be passed in.
 @param activity the activity for which joinOffers are fetched
 @param sort sorts the results by the specified properties, add &quot;:-1&quot; to reverse sort: e.g. sort=&quot;created:-1&quot;
 @param limit limit the amount of returned objects, default is 100, max is 1000
 @param filter filters the results by adding a where clause, to see  the supported language and format see 
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getJoinOffersWithCompletionBlock:(NSString*) activity 
        sort:(NSString*) sort 
        limit:(NSNumber*) limit 
        filter:(NSString*) filter 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Returns an activityPlan by Id, AccessLevel: al_individual
 Returns an activityPlan by Id, only returns the plan if the current user is the owner of the plan
 @param _id the id of the activityPlan to fetch 
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getActivityPlanWithCompletionBlock:(NSString*) _id 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        completionHandler: (void (^)(YPActivityPlan* output, NSError* error))completionBlock;

/**

 returns all activityPlans of the currently logged in user, AccessLevel: al_individual
 only returns ActivityPlans of the current user, the API does not allow to retrieveplans owned by other users
 @param sort sorts the results by the specified properties, add &quot;:-1&quot; to reverse sort: e.g. sort=&quot;created:-1&quot;
 @param limit limit the amount of returned objects, default is 100, max is 1000
 @param filter filters the results by adding a where clause, to see  the supported language and format see 
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getActivityPlansWithCompletionBlock:(NSString*) sort 
        limit:(NSNumber*) limit 
        filter:(NSString*) filter 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Deletes a specific activityPlan, AccessLevel: al_individual
 Deletes a specific activityPlan
 @param _id the id of the activityPlan to fetch 
 */
-(NSNumber*) deleteActivityPlanWithCompletionBlock:(NSString*) _id 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Deletes all activityPlans, AccessLevel: al_admin
 Deletes all activityPlans
 */
-(NSNumber*) deleteActivityPlansWithCompletionBlock:(void (^)(NSError* error))completionBlock;

/**

 Request an invitation for joining this plan to be sent by the backend to the supplied email address(es), AccessLevel: al_individual
 Posts an invitation for one or more email-addresses
 @param body object with one property: 'email', an email address, or an array of adresses, or a separated String of emails (by ';, ')
 */
-(NSNumber*) postActivityPlanInviteWithCompletionBlock:(YPEmailObject*) body 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Joins an activity plan, AccessLevel: al_individual
 Joins an activity plan
 */
-(NSNumber*) postJoinActivityPlanFnWithCompletionBlock:(void (^)(NSError* error))completionBlock;

/**

 Posts a new activityPlan, AccessLevel: al_individual
 Posts a new plan, when the attribute masterPlan is set to the string of another plan, then the new plan is just a slave of this plan (the user is basically joining the masterPlan). When the attribute masterPlan is empty,then this new plan can become a masterPlan, when other users post slavePlans later.
 @param body the activityPlan to store
 */
-(NSNumber*) postActivityPlanWithCompletionBlock:(YPActivityPlan*) body 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Updates an existing activityPlan, AccessLevel: al_individual
 Updates an existing plan.
 @param _id the id of the activityPlan to update
 @param body activityPlan to be updated
 */
-(NSNumber*) putActivityPlanWithCompletionBlock:(NSString*) _id 
        body:(YPActivityPlan*) body 
        completionHandler: (void (^)(YPActivityPlan* output, NSError* error))completionBlock;

/**

 Updates an existing ActivityEvent of an existing ActivityPlan., AccessLevel: al_individual
 To set done, missed and feedback. Allows to add a single new comment to the event
 @param body the activityPlanEvent to store
 @param planId the id of activityPlan that contains the event to update 
 @param eventId the id of the event to update
 */
-(NSNumber*) putActivityPlanEventWithCompletionBlock:(YPEvent*) body 
        planId:(NSString*) planId 
        eventId:(NSString*) eventId 
        completionHandler: (void (^)(NSError* error))completionBlock;

@end
