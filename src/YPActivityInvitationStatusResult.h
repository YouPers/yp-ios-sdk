#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPUser.h"

@class YPUser;


@interface YPActivityInvitationStatusResult : YPObject

@property(nonatomic) YPUser* user;  

@property(nonatomic) NSString* status;  

- (id) user: (YPUser*) user
     status: (NSString*) status;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (YPUser*)getuserValue:(NSError**)err;

- (NSString*)getstatusValue;



@end

