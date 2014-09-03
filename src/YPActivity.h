#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPUser.h"
#import "YPIdea.h"
#import "YPCampaign.h"
#import "YPMainEvent.h"

@class YPDate;
@class YPUser;
@class YPIdea;
@class YPCampaign;
@class YPMainEvent;


@interface YPActivity : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPMainEvent* mainEvent;  

@property(nonatomic) YPUser* owner;  

@property(nonatomic) YPIdea* idea;  

@property(nonatomic) NSArray* joiningUsers;  

@property(nonatomic) NSString* title;  

@property(nonatomic) NSString* text;  

@property(nonatomic) NSString* number;  

@property(nonatomic) NSString* location;  

@property(nonatomic) NSString* executionType;  

@property(nonatomic) NSString* status;  

@property(nonatomic) YPCampaign* campaign;  

@property(nonatomic) NSString* deletionReason;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     mainEvent: (YPMainEvent*) mainEvent
     owner: (YPUser*) owner
     idea: (YPIdea*) idea
     joiningUsers: (NSArray*) joiningUsers
     title: (NSString*) title
     text: (NSString*) text
     number: (NSString*) number
     location: (NSString*) location
     executionType: (NSString*) executionType
     status: (NSString*) status
     campaign: (YPCampaign*) campaign
     deletionReason: (NSString*) deletionReason
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPMainEvent*)getmainEventValue:(NSError**)err;

- (YPUser*)getownerValue:(NSError**)err;

- (YPIdea*)getideaValue:(NSError**)err;

- (NSArray*)getjoiningUsersValue;

- (NSString*)gettitleValue;

- (NSString*)gettextValue;

- (NSString*)getnumberValue;

- (NSString*)getlocationValue;

- (NSString*)getexecutionTypeValue;

- (NSString*)getstatusValue;

- (YPCampaign*)getcampaignValue:(NSError**)err;

- (NSString*)getdeletionReasonValue;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

