#import <Foundation/Foundation.h>
#import "YPUser.h"

#import "YPError.h"

@interface YPLoginApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPLoginApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 currently supports HTTP Basic Auth and Bearer Token over HTTPS, AccessLevel: al_user
 validates the passed credentials and returns the user object belonging to the credentials
 @param Authentication HTTP Basic Auth credentials
 */
-(NSNumber*) loginWithCompletionBlock:(NSString*) Authentication 
        completionHandler: (void (^)(YPUser* output, YPError* error))completionBlock;

@end
