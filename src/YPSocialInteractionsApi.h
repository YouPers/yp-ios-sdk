#import <Foundation/Foundation.h>
#import "YPSocialInteraction.h"

#import "YPError.h"

@interface YPSocialInteractionsApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPSocialInteractionsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 find socialInteraction by id, AccessLevel: al_individual
 returns a socialInteraction based on id
 @param _id ID of the socialInteraction to be fetched
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getSocialInteractionByIdWithCompletionBlock:(NSString*) _id 
        populate:(NSString*) populate 
        completionHandler: (void (^)(YPSocialInteraction* output, YPError* error))completionBlock;

/**

 get all socialInteractions, supports generic filter, sort and populate options as well as custom filter optionsadmin mode: get all sois, invoked by role '[product,system]Admin' and queryParam mode='administrate', AccessLevel: al_individual
 returns all socialInteractions that are targeted to this user
 @param sort sorts the results by the specified properties, add &quot;:-1&quot; to reverse sort: e.g. sort=&quot;created:-1&quot;
 @param limit limit the amount of returned objects, default is 100, max is 1000
 @param filter filters the results by adding a where clause, to see  the supported language and format see 
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 @param dismissed include socialInteractions that have been dismissed
 @param rejected include socialInteractions that have been rejected
 @param authored include socialInteractions where the user is the author
 @param targetId restrict to a targetId, for example an activity or campaign, disables the default target space filter
 @param authorType restrict to a authorType, for example only social interactions from a campaignlead
 @param discriminators comma separated list of discriminators / model names, for example &quot;Invitation,Recommendation&quot;
 @param refDocId restrict to a referenced document id
 @param mode expected values: [administrate]
 */
-(NSNumber*) getSocialInteractionsWithCompletionBlock:(NSString*) sort 
        limit:(NSNumber*) limit 
        filter:(NSString*) filter 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        dismissed:(NSNumber*) dismissed 
        rejected:(NSNumber*) rejected 
        authored:(NSNumber*) authored 
        targetId:(NSString*) targetId 
        authorType:(NSString*) authorType 
        discriminators:(NSString*) discriminators 
        refDocId:(NSString*) refDocId 
        mode:(NSString*) mode 
        completionHandler: (void (^)(NSArray* output, YPError* error))completionBlock;

/**

 Deletes a socialInteraction by id, AccessLevel: al_user
 delete socialInteraction
 @param _id ID of the socialInteraction to be fetched
 @param mode expected values: [administrate]
 @param reason the reason why the social interaction is dismissed, expected values: [activityScheduled activityJoined activityDeleted denied campaignleadAccepted orgadminAccepted]
 */
-(NSNumber*) deleteSocialInteractionWithCompletionBlock:(NSString*) _id 
        mode:(NSString*) mode 
        reason:(NSString*) reason 
        completionHandler: (void (^)(YPError* error))completionBlock;

@end
