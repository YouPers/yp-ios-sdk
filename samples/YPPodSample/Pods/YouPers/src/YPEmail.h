#import <Foundation/Foundation.h>
#import "YPObject.h"



@interface YPEmail : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) NSNumber* iCalInvites;  

@property(nonatomic) NSNumber* actPlanInvites;  

@property(nonatomic) NSNumber* dailyUserMail;  

- (id) _id: (NSString*) _id
     iCalInvites: (NSNumber*) iCalInvites
     actPlanInvites: (NSNumber*) actPlanInvites
     dailyUserMail: (NSNumber*) dailyUserMail;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (NSNumber*)getiCalInvitesValue;

- (NSNumber*)getactPlanInvitesValue;

- (NSNumber*)getdailyUserMailValue;



@end

