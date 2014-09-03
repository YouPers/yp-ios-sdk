#import <Foundation/Foundation.h>
#import "YPMessage.h"

#import "YPError.h"

@interface YPMessagesApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPMessagesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 find message by id, AccessLevel: al_individual
 returns a message based on id
 @param _id ID of the message to be fetched
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getMessageByIdWithCompletionBlock:(NSString*) _id 
        populate:(NSString*) populate 
        completionHandler: (void (^)(YPMessage* output, YPError* error))completionBlock;

/**

 get all messages, AccessLevel: al_individual
 returns all messages, but limits to 100 entries by default, is not owner-constrained, e.g. it returns messagesfrom several users. Use query params sort:'created:-1' and limit to retrieve the newest messages
 @param sort sorts the results by the specified properties, add &quot;:-1&quot; to reverse sort: e.g. sort=&quot;created:-1&quot;
 @param limit limit the amount of returned objects, default is 100, max is 1000
 @param filter filters the results by adding a where clause, to see  the supported language and format see 
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 @param administrate flag for admin user to indicate he is acting as an administrator currently
 @param campaign the campaignId to be used as filter for a campaignlead to get all sois for a campaign to administrate
 */
-(NSNumber*) getMessagesWithCompletionBlock:(NSString*) sort 
        limit:(NSNumber*) limit 
        filter:(NSString*) filter 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        administrate:(NSNumber*) administrate 
        campaign:(NSNumber*) campaign 
        completionHandler: (void (^)(NSArray* output, YPError* error))completionBlock;

/**

 POSTs a new message, AccessLevel: al_individual
 POSTs a new message
 @param body new Message object
 */
-(NSNumber*) postMessagesWithCompletionBlock:(YPMessage*) body 
        completionHandler: (void (^)(YPMessage* output, YPError* error))completionBlock;

/**

 Deletes a message by id, AccessLevel: al_user
 delete message
 @param _id ID of the message to be fetched
 */
-(NSNumber*) deleteMessageWithCompletionBlock:(NSString*) _id 
        completionHandler: (void (^)(YPError* error))completionBlock;

/**

 Deletes messages, AccessLevel: al_admin
 delete all messages
 */
-(NSNumber*) deleteMessagesWithCompletionBlock:(void (^)(YPError* error))completionBlock;

@end
