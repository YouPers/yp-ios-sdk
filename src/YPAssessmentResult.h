#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPAssessment.h"
#import "YPUser.h"
#import "YPCampaign.h"
#import "YPTopic.h"
#import "YPAnswer.h"

@class YPDate;
@class YPAssessment;
@class YPUser;
@class YPCampaign;
@class YPTopic;
@class YPAnswer;


@interface YPAssessmentResult : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPUser* owner;  /* reference to the user owning this Result */

@property(nonatomic) YPCampaign* campaign;  /* reference to the campaign this result was entered in, used for statistics [optional]*/

@property(nonatomic) YPTopic* topic;  

@property(nonatomic) YPAssessment* assessment;  /* reference to the assessment this result belongs to */

@property(nonatomic) NSNumber* dirty;  

@property(nonatomic) NSArray* answers;  

@property(nonatomic) NSString* needForAction;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     owner: (YPUser*) owner
     campaign: (YPCampaign*) campaign
     topic: (YPTopic*) topic
     assessment: (YPAssessment*) assessment
     dirty: (NSNumber*) dirty
     answers: (NSArray*) answers
     needForAction: (NSString*) needForAction
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPUser*)getownerValue:(NSError**)err;

- (YPCampaign*)getcampaignValue:(NSError**)err;

- (YPTopic*)gettopicValue:(NSError**)err;

- (YPAssessment*)getassessmentValue:(NSError**)err;

- (NSNumber*)getdirtyValue;

- (NSArray*)getanswersValue;

- (NSString*)getneedForActionValue;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

