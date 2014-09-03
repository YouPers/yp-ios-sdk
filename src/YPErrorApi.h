#import <Foundation/Foundation.h>
#import "YPErrorObject.h"

#import "YPError.h"

@interface YPErrorApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPErrorApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Post errors expierenced on a client to be logged on the server. Allows passing an Error Object in the body in JSON format., AccessLevel: al_all
 log errors posted by the client
 @param body error object
 */
-(NSNumber*) postErrorWithCompletionBlock:(YPErrorObject*) body 
        completionHandler: (void (^)(YPError* error))completionBlock;

@end
