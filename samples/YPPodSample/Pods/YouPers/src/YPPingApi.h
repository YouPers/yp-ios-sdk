#import <Foundation/Foundation.h>


@interface YPPingApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPPingApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 checks basic availability of api, return code 200 if api is available., AccessLevel: al_all
 returns {message: Success} as json
 */
-(NSNumber*) pingWithCompletionBlock:(void (^)(NSError* error))completionBlock;

/**

 checks basic availability of database, return code 200 if db is available., AccessLevel: al_all
 returns some database information as json
 */
-(NSNumber*) pingdbWithCompletionBlock:(void (^)(NSError* error))completionBlock;

@end
