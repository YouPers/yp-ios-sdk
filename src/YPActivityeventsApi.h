#import <Foundation/Foundation.h>
#import "YPActivityEvent.h"

#import "YPError.h"

@interface YPActivityeventsApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPActivityeventsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 find activityEvent by id, AccessLevel: al_individual
 returns a activityEvent based on id
 @param _id ID of the activityEvent to be fetched
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getActivityEventByIdWithCompletionBlock:(NSString*) _id 
        populate:(NSString*) populate 
        completionHandler: (void (^)(YPActivityEvent* output, YPError* error))completionBlock;

/**

 get all activityEvents, AccessLevel: al_individual
 returns all activityEvents, but limits to 100 entries by default, is not owner-constrained, e.g. it returns activityEventsfrom several users. Use query params sort:'created:-1' and limit to retrieve the newest activityEvents
 @param sort sorts the results by the specified properties, add &quot;:-1&quot; to reverse sort: e.g. sort=&quot;created:-1&quot;
 @param limit limit the amount of returned objects, default is 100, max is 1000
 @param filter filters the results by adding a where clause, to see  the supported language and format see 
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getActivityEventsWithCompletionBlock:(NSString*) sort 
        limit:(NSNumber*) limit 
        filter:(NSString*) filter 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        completionHandler: (void (^)(NSArray* output, YPError* error))completionBlock;

/**

 POSTs a new activityEvent, AccessLevel: al_individual
 POSTs a new activityEvent
 @param body new ActivityEvent object
 */
-(NSNumber*) postActivityEventWithCompletionBlock:(YPActivityEvent*) body 
        completionHandler: (void (^)(YPActivityEvent* output, YPError* error))completionBlock;

/**

 PUTs a new activityEvent, AccessLevel: al_individual
 PUTs a new activityEvent
 @param body new ActivityEvent object
 */
-(NSNumber*) putActivityEventWithCompletionBlock:(YPActivityEvent*) body 
        completionHandler: (void (^)(YPActivityEvent* output, YPError* error))completionBlock;

/**

 Deletes a activityEvent by id, AccessLevel: al_user
 delete activityEvent
 @param _id ID of the activityEvent to be deleted
 */
-(NSNumber*) deleteActivityEventWithCompletionBlock:(NSString*) _id 
        completionHandler: (void (^)(YPError* error))completionBlock;

/**

 Deletes activityEvents, AccessLevel: al_admin
 delete all activityEvents
 */
-(NSNumber*) deleteActivityEventsWithCompletionBlock:(void (^)(YPError* error))completionBlock;

@end
