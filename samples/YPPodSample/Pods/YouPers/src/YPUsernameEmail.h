#import <Foundation/Foundation.h>
#import "YPObject.h"



@interface YPUsernameEmail : YPObject

@property(nonatomic) NSString* email;  

@property(nonatomic) NSString* username;  

- (id) email: (NSString*) email
     username: (NSString*) username;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)getemailValue;

- (NSString*)getusernameValue;



@end

