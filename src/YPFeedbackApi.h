#import <Foundation/Foundation.h>
#import "YPFeedback.h"

#import "YPError.h"

@interface YPFeedbackApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPFeedbackApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Post feedback, AccessLevel: al_all
 creates an JIRA issue for the posted feedback
 @param body feedback object
 */
-(NSNumber*) postFeedbackWithCompletionBlock:(YPFeedback*) body 
        completionHandler: (void (^)(YPError* error))completionBlock;

@end
