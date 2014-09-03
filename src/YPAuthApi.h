#import <Foundation/Foundation.h>
#import "YPUser.h"

#import "YPError.h"

@interface YPAuthApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPAuthApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 currently supports HTTP Basic Auth over HTTPS, AccessLevel: al_user
 validates the passed credentials and returns the user object belonging to the credentials
 @param Authentication HTTP Basic Auth credentials
 */
-(NSNumber*) loginBasicWithCompletionBlock:(NSString*) Authentication 
        completionHandler: (void (^)(YPUser* output, YPError* error))completionBlock;

/**

 currently supports HTTP Basic Auth over HTTPS, AccessLevel: al_user
 validates the passed credentials and returns the user object belonging to the credentials
 @param Authentication HTTP Basic Auth credentials
 */
-(NSNumber*) loginGitWithCompletionBlock:(NSString*) Authentication 
        completionHandler: (void (^)(YPUser* output, YPError* error))completionBlock;

/**

 currently supports HTTP Basic Auth over HTTPS, AccessLevel: al_user
 validates the passed credentials and returns the user object belonging to the credentials
 @param Authentication HTTP Basic Auth credentials
 */
-(NSNumber*) loginGitCallbackWithCompletionBlock:(NSString*) Authentication 
        completionHandler: (void (^)(YPUser* output, YPError* error))completionBlock;

/**

 currently supports HTTP Basic Auth over HTTPS, AccessLevel: al_user
 validates the passed credentials and returns the user object belonging to the credentials
 @param Authentication HTTP Basic Auth credentials
 */
-(NSNumber*) loginFacebookWithCompletionBlock:(NSString*) Authentication 
        completionHandler: (void (^)(YPUser* output, YPError* error))completionBlock;

/**

 currently supports HTTP Basic Auth over HTTPS, AccessLevel: al_user
 validates the passed credentials and returns the user object belonging to the credentials
 @param Authentication HTTP Basic Auth credentials
 */
-(NSNumber*) loginFacebookCallbackWithCompletionBlock:(NSString*) Authentication 
        completionHandler: (void (^)(YPUser* output, YPError* error))completionBlock;

@end
