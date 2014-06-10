#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPObjectId.h"

@class YPDate;
@class YPObjectId;


@interface YPPaymentCode : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) NSString* code;  

@property(nonatomic) YPObjectId* campaign;  

@property(nonatomic) NSString* relatedService;  

@property(nonatomic) NSString* productType;  

@property(nonatomic) NSNumber* users;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     code: (NSString*) code
     campaign: (YPObjectId*) campaign
     relatedService: (NSString*) relatedService
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

- (NSString*)getrelatedServiceValue;

- (NSString*)getproductTypeValue;

- (NSNumber*)getusersValue;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

