#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPActivityPlan.h"

@class YPDate;
@class YPActivityPlan;


@interface YPRejectedActivityPlan : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPDate* timestamp;  

@property(nonatomic) YPActivityPlan* activityPlan;  

- (id) _id: (NSString*) _id
     timestamp: (YPDate*) timestamp
     activityPlan: (YPActivityPlan*) activityPlan;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPDate*)gettimestampValue:(NSError**)err;

- (YPActivityPlan*)getactivityPlanValue:(NSError**)err;



@end

