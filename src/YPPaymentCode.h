#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPObjectId.h"
#import "YPTopic.h"

@class YPDate;
@class YPObjectId;
@class YPTopic;


@interface YPPaymentCode : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) NSString* code;  

@property(nonatomic) YPObjectId* campaign;  

@property(nonatomic) YPTopic* topic;  

@property(nonatomic) NSString* productType;  

@property(nonatomic) NSNumber* users;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     code: (NSString*) code
     campaign: (YPObjectId*) campaign
     topic: (YPTopic*) topic
     productType: (NSString*) productType
     users: (NSNumber*) users
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (NSString*)getcodeValue;

- (YPObjectId*)getcampaignValue:(NSError**)err;

- (YPTopic*)gettopicValue:(NSError**)err;

- (NSString*)getproductTypeValue;

- (NSNumber*)getusersValue;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

