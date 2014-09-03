#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPActivityPlan.h"
#import "YPUser.h"
#import "YPObjectId.h"
#import "YPActivity.h"

@class YPDate;
@class YPActivityPlan;
@class YPUser;
@class YPObjectId;
@class YPActivity;


@interface YPActivityOffer : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPActivity* activity;  

@property(nonatomic) NSArray* activityPlan;  

@property(nonatomic) NSArray* offerType;  

@property(nonatomic) YPObjectId* targetQueue;  

@property(nonatomic) NSArray* recommendedBy;  

@property(nonatomic) NSArray* prio;  

@property(nonatomic) YPDate* validFrom;  

@property(nonatomic) YPDate* validTo;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     activity: (YPActivity*) activity
     activityPlan: (NSArray*) activityPlan
     offerType: (NSArray*) offerType
     targetQueue: (YPObjectId*) targetQueue
     recommendedBy: (NSArray*) recommendedBy
     prio: (NSArray*) prio
     validFrom: (YPDate*) validFrom
     validTo: (YPDate*) validTo
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPActivity*)getactivityValue:(NSError**)err;

- (NSArray*)getactivityPlanValue;

- (NSArray*)getofferTypeValue;

- (YPObjectId*)gettargetQueueValue:(NSError**)err;

- (NSArray*)getrecommendedByValue;

- (NSArray*)getprioValue;

- (YPDate*)getvalidFromValue:(NSError**)err;

- (YPDate*)getvalidToValue:(NSError**)err;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

