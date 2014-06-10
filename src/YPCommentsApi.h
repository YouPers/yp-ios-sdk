#import <Foundation/Foundation.h>
#import "YPComment.h"


@interface YPCommentsApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPCommentsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 find comment by id, AccessLevel: al_individual
 returns a comment based on id
 @param _id ID of the comment to be fetched
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getCommentByIdWithCompletionBlock:(NSString*) _id 
        populate:(NSString*) populate 
        completionHandler: (void (^)(YPComment* output, NSError* error))completionBlock;

/**

 get all comments, AccessLevel: al_individual
 returns all comments, but limits to 100 entries by default, is not owner-constrained, e.g. it returns commentsfrom several users. Use query params sort:'created:-1' and limit to retrieve the newest comments
 @param sort sorts the results by the specified properties, add &quot;:-1&quot; to reverse sort: e.g. sort=&quot;created:-1&quot;
 @param limit limit the amount of returned objects, default is 100, max is 1000
 @param filter filters the results by adding a where clause, to see  the supported language and format see 
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getCommentsWithCompletionBlock:(NSString*) sort 
        limit:(NSNumber*) limit 
        filter:(NSString*) filter 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 POSTs a new comment, AccessLevel: al_individual
 POSTs a new comment
 @param body new Comment object
 */
-(NSNumber*) postCommentsWithCompletionBlock:(YPComment*) body 
        completionHandler: (void (^)(YPComment* output, NSError* error))completionBlock;

/**

 Deletes a comment by id, AccessLevel: al_user
 delete comment
 @param _id ID of the comment to be fetched
 */
-(NSNumber*) deleteCommentWithCompletionBlock:(NSString*) _id 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Deletes comments, AccessLevel: al_admin
 delete all comments
 */
-(NSNumber*) deleteCommentsWithCompletionBlock:(void (^)(NSError* error))completionBlock;

@end
