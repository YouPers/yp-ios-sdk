#import <Foundation/Foundation.h>
#import "YPObject.h"



@interface YPErrorObject : YPObject

@property(nonatomic) NSString* message;  

@property(nonatomic) NSString* code;  

@property(nonatomic) NSString* stacktrace;  

- (id) message: (NSString*) message
     code: (NSString*) code
     stacktrace: (NSString*) stacktrace;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)getmessageValue;

- (NSString*)getcodeValue;

- (NSString*)getstacktraceValue;



@end

