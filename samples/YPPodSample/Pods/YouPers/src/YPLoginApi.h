#import <Foundation/Foundation.h>
#import "YPUser.h"


@interface YPLoginApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPLoginApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 currently supports HTTP Basic Auth over HTTPS, AccessLevel: al_user
 validates the passed credentials and returns the user object belonging to the credentials
 @param Authentication HTTP Basic Auth credentials
 */
-(NSNumber*) loginWithCompletionBlock:(NSString*) Authentication 
        completionHandler: (void (^)(YPUser* output, NSError* error))completionBlock;

@end
