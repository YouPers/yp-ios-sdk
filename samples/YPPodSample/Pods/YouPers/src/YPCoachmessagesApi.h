#import <Foundation/Foundation.h>


@interface YPCoachmessagesApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPCoachmessagesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 get currently suitable health coach messages for this user , AccessLevel: al_all
 
 @param uistate the current uistate of the user
 @param debug returns the facts object that has been used to calculate the messages as last entry of the result array
 */
-(NSNumber*) coachMessagesGetWithCompletionBlock:(NSString*) uistate 
        debug:(NSNumber*) debug 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

@end
