#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPActivityPlan.h"
#import "YPEvent.h"
#import "YPUser.h"
#import "YPCampaign.h"
#import "YPActivity.h"
#import "YPMainEvent.h"

@class YPDate;
@class YPActivityPlan;
@class YPEvent;
@class YPUser;
@class YPCampaign;
@class YPActivity;
@class YPMainEvent;


@interface YPActivityPlan : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPMainEvent* mainEvent;  

@property(nonatomic) YPUser* owner;  

@property(nonatomic) YPActivity* activity;  

@property(nonatomic) NSArray* joiningUsers;  

@property(nonatomic) NSString* title;  

@property(nonatomic) NSString* text;  

@property(nonatomic) NSString* number;  

@property(nonatomic) NSString* location;  

@property(nonatomic) NSString* source;  

@property(nonatomic) NSString* executionType;  

@property(nonatomic) NSString* visibility;  

@property(nonatomic) NSString* status;  

@property(nonatomic) YPCampaign* campaign;  

@property(nonatomic) NSArray* fields;  

@property(nonatomic) YPActivityPlan* masterPlan;  

@property(nonatomic) NSString* deletionReason;  

@property(nonatomic) YPUser* invitedBy;  

@property(nonatomic) NSArray* events;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     mainEvent: (YPMainEvent*) mainEvent
     owner: (YPUser*) owner
     activity: (YPActivity*) activity
     joiningUsers: (NSArray*) joiningUsers
     title: (NSString*) title
     text: (NSString*) text
     number: (NSString*) number
     location: (NSString*) location
     source: (NSString*) source
     executionType: (NSString*) executionType
     visibility: (NSString*) visibility
     status: (NSString*) status
     campaign: (YPCampaign*) campaign
     fields: (NSArray*) fields
     masterPlan: (YPActivityPlan*) masterPlan
     deletionReason: (NSString*) deletionReason
     invitedBy: (YPUser*) invitedBy
     events: (NSArray*) events
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPMainEvent*)getmainEventValue:(NSError**)err;

- (YPUser*)getownerValue:(NSError**)err;

- (YPActivity*)getactivityValue:(NSError**)err;

- (NSArray*)getjoiningUsersValue;

- (NSString*)gettitleValue;

- (NSString*)gettextValue;

- (NSString*)getnumberValue;

- (NSString*)getlocationValue;

- (NSString*)getsourceValue;

- (NSString*)getexecutionTypeValue;

- (NSString*)getvisibilityValue;

- (NSString*)getstatusValue;

- (YPCampaign*)getcampaignValue:(NSError**)err;

- (NSArray*)getfieldsValue;

- (YPActivityPlan*)getmasterPlanValue:(NSError**)err;

- (NSString*)getdeletionReasonValue;

- (YPUser*)getinvitedByValue:(NSError**)err;

- (NSArray*)geteventsValue;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

