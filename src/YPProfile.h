#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPWorkAddress.h"
#import "YPUser.h"
#import "YPCampaign.h"
#import "YPHomeAddress.h"
#import "YPUserPreferences.h"

@class YPDate;
@class YPWorkAddress;
@class YPUser;
@class YPCampaign;
@class YPHomeAddress;
@class YPUserPreferences;


@interface YPProfile : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPHomeAddress* homeAddress;  

@property(nonatomic) YPWorkAddress* workAddress;  

@property(nonatomic) YPUserPreferences* userPreferences;  

@property(nonatomic) YPUser* owner;  

@property(nonatomic) NSString* gender;  

@property(nonatomic) YPDate* birthDate;  

@property(nonatomic) YPCampaign* campaign;  

@property(nonatomic) NSString* maritalStatus;  

@property(nonatomic) NSString* language;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     homeAddress: (YPHomeAddress*) homeAddress
     workAddress: (YPWorkAddress*) workAddress
     userPreferences: (YPUserPreferences*) userPreferences
     owner: (YPUser*) owner
     gender: (NSString*) gender
     birthDate: (YPDate*) birthDate
     campaign: (YPCampaign*) campaign
     maritalStatus: (NSString*) maritalStatus
     language: (NSString*) language
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPHomeAddress*)gethomeAddressValue:(NSError**)err;

- (YPWorkAddress*)getworkAddressValue:(NSError**)err;

- (YPUserPreferences*)getuserPreferencesValue:(NSError**)err;

- (YPUser*)getownerValue:(NSError**)err;

- (NSString*)getgenderValue;

- (YPDate*)getbirthDateValue:(NSError**)err;

- (YPCampaign*)getcampaignValue:(NSError**)err;

- (NSString*)getmaritalStatusValue;

- (NSString*)getlanguageValue;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

