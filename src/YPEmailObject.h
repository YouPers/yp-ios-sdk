#import <Foundation/Foundation.h>
#import "YPObject.h"



@interface YPEmailObject : YPObject

@property(nonatomic) NSString* email;  

- (id) email: (NSString*) email;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)getemailValue;



@end

