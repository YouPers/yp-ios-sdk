#import <Foundation/Foundation.h>

#import "YPError.h"

@interface YPStatsApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPStatsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 returns statistics depending on parameters passed to the API, AccessLevel: al_individual
 
 @param type the type of statistics to fetch
 @param scopeType The type of the scope to which the stats should be constrained, can be used to get stats about a campaign or a specific user
 @param scopeId The id of the scope to constrain the stats to, has to be a reference to a objectof the suplied scopeType (user or campaign)
 @param range The timerange to constrain the stats to
 */
-(NSNumber*) getStatsWithCompletionBlock:(NSString*) type 
        scopeType:(NSString*) scopeType 
        scopeId:(NSString*) scopeId 
        range:(NSString*) range 
        completionHandler: (void (^)(NSString* output, YPError* error))completionBlock;

@end
