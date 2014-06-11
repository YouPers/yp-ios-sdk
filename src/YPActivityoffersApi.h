#import <Foundation/Foundation.h>
#import "YPActivityOffer.h"


@interface YPActivityoffersApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPActivityoffersApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 undefined, AccessLevel: al_individual
 returns the current coachRecommendations for a user
 @param limit limit the amount of returned objects, default is 100, max is 1000
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getCoachRecommendationsWithCompletionBlock:(NSNumber*) limit 
        populate:(NSString*) populate 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 returns the current top 10 actvity offers for the authenticated user., AccessLevel: al_all
 returns the currently available activity offers and recommendations for the current user. The list consists of activities recommended by the assessment evaluation, of campaign recommended activities and activityplans and of personal invitations.
 @param limit limit the amount of returned objects, default is 100, max is 1000
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getActivityOffersWithCompletionBlock:(NSNumber*) limit 
        populate:(NSString*) populate 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 undefined, AccessLevel: al_individual
 returns one ActivityOffer by Id
 @param _id ID of the activity to be fetched
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getActivityOfferByIdWithCompletionBlock:(NSString*) _id 
        populatedeep:(NSString*) populatedeep 
        completionHandler: (void (^)(YPActivityOffer* output, NSError* error))completionBlock;

/**

 post an activityOffer, AccessLevel: al_individual
 allows to post an activityOffer to promote an Activity to a targetAudience.
 @param body new ActivityOffer object
 */
-(NSNumber*) postActivityOfferWithCompletionBlock:(YPActivityOffer*) body 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 put an activityOffer, AccessLevel: al_individual
 allows to update an activityOffer
 @param _id the id of the activityOffer to update
 @param body ActivityOffer to be updated
 */
-(NSNumber*) putActivityOfferWithCompletionBlock:(NSString*) _id 
        body:(YPActivityOffer*) body 
        completionHandler: (void (^)(YPActivityOffer* output, NSError* error))completionBlock;

/**

 Deletes all ActivityOffers, AccessLevel: al_individual
 deletes all ActivityOffers
 */
-(NSNumber*) deleteActivityOffersWithCompletionBlock:(void (^)(NSError* error))completionBlock;

/**

 deletes a specific ActivityOffers, AccessLevel: al_individual
 deletes a specific ActivityOffers
 @param _id the id of the activityOffers to fetch 
 */
-(NSNumber*) deleteActivityOfferWithCompletionBlock:(NSString*) _id 
        completionHandler: (void (^)(NSError* error))completionBlock;

@end
