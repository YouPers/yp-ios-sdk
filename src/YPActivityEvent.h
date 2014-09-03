#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPUser.h"
#import "YPIdea.h"
#import "YPCampaign.h"
#import "YPActivity.h"

@class YPDate;
@class YPUser;
@class YPIdea;
@class YPCampaign;
@class YPActivity;


@interface YPActivityEvent : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPUser* owner;  

@property(nonatomic) YPCampaign* campaign;  

@property(nonatomic) YPIdea* idea;  

@property(nonatomic) YPActivity* activity;  

@property(nonatomic) NSString* status;  

@property(nonatomic) YPDate* start;  

@property(nonatomic) YPDate* end;  

@property(nonatomic) YPDate* doneTs;  

@property(nonatomic) NSNumber* feedback;  

@property(nonatomic) NSString* comment;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     owner: (YPUser*) owner
     campaign: (YPCampaign*) campaign
     idea: (YPIdea*) idea
     activity: (YPActivity*) activity
     status: (NSString*) status
     start: (YPDate*) start
     end: (YPDate*) end
     doneTs: (YPDate*) doneTs
     feedback: (NSNumber*) feedback
     comment: (NSString*) comment
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPUser*)getownerValue:(NSError**)err;

- (YPCampaign*)getcampaignValue:(NSError**)err;

- (YPIdea*)getideaValue:(NSError**)err;

- (YPActivity*)getactivityValue:(NSError**)err;

- (NSString*)getstatusValue;

- (YPDate*)getstartValue:(NSError**)err;

- (YPDate*)getendValue:(NSError**)err;

- (YPDate*)getdoneTsValue:(NSError**)err;

- (NSNumber*)getfeedbackValue;

- (NSString*)getcommentValue;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

