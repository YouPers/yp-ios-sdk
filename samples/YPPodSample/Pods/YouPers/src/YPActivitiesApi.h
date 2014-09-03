#import <Foundation/Foundation.h>
#import "YPActivity.h"


@interface YPActivitiesApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPActivitiesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 returns an activity based on id, AccessLevel: al_all
 returns only the public attributes in normal case. If the authenticated user has role 'admin', all attributes are returned (incl. all recWeights, ...)
 @param _id ID of the activity to be fetched
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getActivityWithCompletionBlock:(NSString*) _id 
        populate:(NSString*) populate 
        completionHandler: (void (^)(YPActivity* output, NSError* error))completionBlock;

/**

 returns all activities, AccessLevel: al_all
 returns only the public attributes in normal case. If the authenticated user has role 'admin', all attributes are returned (incl. all recWeights, ...)
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
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Posts a new activity, AccessLevel: al_all
 The new activity will get a number 'NEW' for product admins and 'NEW_C' for campaign leads, because we have not yet implemented an autoincrement.
 @param body the activity to store
 */
-(NSNumber*) postActivityWithCompletionBlock:(YPActivity*) body 
        completionHandler: (void (^)(YPActivity* output, NSError* error))completionBlock;

/**

 Update an Activity, AccessLevel: al_user
 update an existing activity
 @param _id ID of the activity to be updated
 */
-(NSNumber*) putActivityWithCompletionBlock:(NSString*) _id 
        completionHandler: (void (^)(YPActivity* output, NSError* error))completionBlock;

/**

 Deletes all Activities, AccessLevel: al_admin
 deletes all activities
 */
-(NSNumber*) deleteActivitiesWithCompletionBlock:(void (^)(NSError* error))completionBlock;

/**

 deletes a specific activity, AccessLevel: al_admin
 deletes a specific activity
 */
-(NSNumber*) deleteActivityWithCompletionBlock:(void (^)(NSError* error))completionBlock;

@end
