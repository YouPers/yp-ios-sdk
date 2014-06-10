#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPUser.h"
#import "YPI18nString.h"
#import "YPCampaign.h"

@class YPDate;
@class YPUser;
@class YPI18nString;
@class YPCampaign;


@interface YPActivity : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPI18nString* titleI18n;  

@property(nonatomic) YPI18nString* descriptionI18n;  

@property(nonatomic) YPI18nString* textI18n;  

@property(nonatomic) NSString* number;  

@property(nonatomic) NSString* source;  

@property(nonatomic) YPUser* author;  

@property(nonatomic) YPCampaign* campaign;  

@property(nonatomic) NSString* defaultfrequency;  

@property(nonatomic) NSString* defaultexecutiontype;  

@property(nonatomic) NSString* defaultvisibility;  

@property(nonatomic) NSNumber* defaultduration;  

@property(nonatomic) NSArray* topics;  

@property(nonatomic) NSArray* fields;  

@property(nonatomic) NSNumber* qualityFactor;  

@property(nonatomic) NSString* recWeights;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     titleI18n: (YPI18nString*) titleI18n
     descriptionI18n: (YPI18nString*) descriptionI18n
     textI18n: (YPI18nString*) textI18n
     number: (NSString*) number
     source: (NSString*) source
     author: (YPUser*) author
     campaign: (YPCampaign*) campaign
     defaultfrequency: (NSString*) defaultfrequency
     defaultexecutiontype: (NSString*) defaultexecutiontype
     defaultvisibility: (NSString*) defaultvisibility
     defaultduration: (NSNumber*) defaultduration
     topics: (NSArray*) topics
     fields: (NSArray*) fields
     qualityFactor: (NSNumber*) qualityFactor
     recWeights: (NSString*) recWeights
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPI18nString*)gettitleI18nValue:(NSError**)err;

- (YPI18nString*)getdescriptionI18nValue:(NSError**)err;

- (YPI18nString*)gettextI18nValue:(NSError**)err;

- (NSString*)getnumberValue;

- (NSString*)getsourceValue;

- (YPUser*)getauthorValue:(NSError**)err;

- (YPCampaign*)getcampaignValue:(NSError**)err;

- (NSString*)getdefaultfrequencyValue;

- (NSString*)getdefaultexecutiontypeValue;

- (NSString*)getdefaultvisibilityValue;

- (NSNumber*)getdefaultdurationValue;

- (NSArray*)gettopicsValue;

- (NSArray*)getfieldsValue;

- (NSNumber*)getqualityFactorValue;

- (NSString*)getrecWeightsValue;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

