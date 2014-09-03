#import <Foundation/Foundation.h>
#import "YPNotification.h"


@interface YPNotificationsApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPNotificationsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 find notification by id, AccessLevel: al_individual
 returns a notification based on id
 @param _id ID of the notification to be fetched
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getNotificationByIdWithCompletionBlock:(NSString*) _id 
        populate:(NSString*) populate 
        completionHandler: (void (^)(YPNotification* output, NSError* error))completionBlock;

/**

 returns all my current notifications, AccessLevel: al_individual
 returns all notifications that are relevant for the current user, but limits to 100 entries by default.Relevant meaning: all currently valid/published notifications in queues this is user is subscribed to.Use query params sort:'created:-1' and limit to retrieve the newest notifications
 @param sort sorts the results by the specified properties, add &quot;:-1&quot; to reverse sort: e.g. sort=&quot;created:-1&quot;
 @param limit limit the amount of returned objects, default is 100, max is 1000
 @param filter filters the results by adding a where clause, to see  the supported language and format see 
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getNotificationWithCompletionBlock:(NSString*) sort 
        limit:(NSNumber*) limit 
        filter:(NSString*) filter 
        populate:(NSString*) populate 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 POSTs a new notification, AccessLevel: al_individual
 POSTs a new notification
 @param body new Notification object
 */
-(NSNumber*) postNotificationsWithCompletionBlock:(YPNotification*) body 
        completionHandler: (void (^)(YPNotification* output, NSError* error))completionBlock;

/**

 Deletes or dismisses a notification by id, AccessLevel: al_user
 delete/dismiss notification
 @param _id ID of the notification to be fetched
 */
-(NSNumber*) deleteNotificationWithCompletionBlock:(NSString*) _id 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Deletes notifications, AccessLevel: al_admin
 delete all notifications
 */
-(NSNumber*) deleteNotificationsWithCompletionBlock:(void (^)(NSError* error))completionBlock;

@end
