#import <Foundation/Foundation.h>
#import "YPEmailObject.h"
#import "YPCampaign.h"


@interface YPCampaignsApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPCampaignsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 avatar image upload, AccessLevel: al_campaignlead
 
 */
-(NSNumber*) avatarImagePostWithCompletionBlock:(void (^)(NSError* error))completionBlock;

/**

 find campaign by id, AccessLevel: al_all
 returns a campaign based on id
 @param _id ID of the campaign to be fetched
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getCampaignByIdWithCompletionBlock:(NSString*) _id 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        completionHandler: (void (^)(YPCampaign* output, NSError* error))completionBlock;

/**

 get campaign statis of campaign with id, AccessLevel: al_campaignlead
 returns a campaign statistics of campaign based on id
 @param _id ID of the campaign to be fetched
 @param type the type of statistics to fetch
 @param range The timerange to constrain the stats to
 */
-(NSNumber*) getCampaignStatsByIdWithCompletionBlock:(NSString*) _id 
        type:(NSString*) type 
        range:(NSString*) range 
        completionHandler: (void (^)(NSString* output, NSError* error))completionBlock;

/**

 returns all campaigns for the authenticated user, AccessLevel: al_campaignlead
 returns all campaigns for the authenticated user
 @param sort sorts the results by the specified properties, add &quot;:-1&quot; to reverse sort: e.g. sort=&quot;created:-1&quot;
 @param limit limit the amount of returned objects, default is 100, max is 1000
 @param filter filters the results by adding a where clause, to see  the supported language and format see 
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getCampaignsWithCompletionBlock:(NSString*) sort 
        limit:(NSNumber*) limit 
        filter:(NSString*) filter 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 creates a campaign, AccessLevel: al_orgadmin
 creates a campaign and assigns the authenticated user as campaign lead
 @param body campaign object
 */
-(NSNumber*) postCampaignWithCompletionBlock:(YPCampaign*) body 
        completionHandler: (void (^)(YPCampaign* output, NSError* error))completionBlock;

/**

 Request an invitation for to become campaign lead to be sent by the backend to the supplied email address(es), AccessLevel: al_campaignlead
 Posts a request for an invitation for one or more email-addresses
 @param body object with one property: 'email', an email address, or an array of adresses, or a separated String of emails (by ';, ')
 */
-(NSNumber*) postCampaignLeadPlanInviteWithCompletionBlock:(YPEmailObject*) body 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 With this endpoint a non-privileged user can assign himself to become campaign lead when he has an invitation token., AccessLevel: al_user
 Posts a request to add the current user as campaignLead to this campaign: special endpoint that can be called without al_campaignLead but needs a token instead for auth
 @param token the authtoken the user has gotten with his invitation email
 */
-(NSNumber*) assignCampaignLeadWithCompletionBlock:(NSString*) token 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 deletes the campaign with passed id, AccessLevel: al_systemadmin
 deletes the campaign with passed id
 @param _id ID of the user to be deleted
 */
-(NSNumber*) deleteCampaignWithCompletionBlock:(NSString*) _id 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 deletes all campaigns, AccessLevel: al_systemadmin
 deletes all campaigns
 */
-(NSNumber*) deleteAllCampaignsWithCompletionBlock:(void (^)(NSError* error))completionBlock;

/**

 updates the campaign, AccessLevel: al_campaignlead
 updates the campaign with id id
 @param _id ID of the campaign to be updated
 @param body campaign object to be updated
 */
-(NSNumber*) putCampaignByIdWithCompletionBlock:(NSString*) _id 
        body:(YPCampaign*) body 
        completionHandler: (void (^)(YPCampaign* output, NSError* error))completionBlock;

@end
