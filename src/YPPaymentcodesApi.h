#import <Foundation/Foundation.h>
#import "YPPaymentCode.h"

#import "YPError.h"

@interface YPPaymentcodesApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPPaymentcodesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Generates a payment code, AccessLevel: al_productadmin
 Generates a payment code
 @param body payment code values
 */
-(NSNumber*) generatePaymentCodeWithCompletionBlock:(YPPaymentCode*) body 
        completionHandler: (void (^)(YPPaymentCode* output, YPError* error))completionBlock;

/**

 returns all payment codes, AccessLevel: al_productadmin
 returns all payment codes
 @param sort sorts the results by the specified properties, add &quot;:-1&quot; to reverse sort: e.g. sort=&quot;created:-1&quot;
 @param limit limit the amount of returned objects, default is 100, max is 1000
 @param filter filters the results by adding a where clause, to see  the supported language and format see 
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getPaymentCodesWithCompletionBlock:(NSString*) sort 
        limit:(NSNumber*) limit 
        filter:(NSString*) filter 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        completionHandler: (void (^)(NSArray* output, YPError* error))completionBlock;

/**

 Validate a payment code, AccessLevel: al_orgadmin
 Validate a payment code
 @param body payment code
 */
-(NSNumber*) validatePaymentCodeWithCompletionBlock:(NSString*) body 
        completionHandler: (void (^)(NSString* output, YPError* error))completionBlock;

/**

 Validate a payment code, AccessLevel: al_orgadmin
 Validate a payment code
 @param body payment code
 */
-(NSNumber*) redeemPaymentCodeWithCompletionBlock:(NSString*) body 
        completionHandler: (void (^)(NSString* output, YPError* error))completionBlock;

@end
