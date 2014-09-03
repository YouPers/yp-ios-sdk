#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPUser.h"
#import "YPOrganization.h"

@class YPDate;
@class YPUser;
@class YPOrganization;


@interface YPCampaign : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) NSString* title;  

@property(nonatomic) YPDate* start;  

@property(nonatomic) YPDate* end;  

@property(nonatomic) NSString* relatedService;  

@property(nonatomic) YPOrganization* organization;  

@property(nonatomic) NSString* participants;  

@property(nonatomic) NSString* location;  

@property(nonatomic) NSString* city;  

@property(nonatomic) NSString* slogan;  

@property(nonatomic) NSString* paymentStatus;  

@property(nonatomic) NSString* productType;  

@property(nonatomic) NSArray* campaignLeads;  

@property(nonatomic) NSString* avatar;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     title: (NSString*) title
     start: (YPDate*) start
     end: (YPDate*) end
     relatedService: (NSString*) relatedService
     organization: (YPOrganization*) organization
     participants: (NSString*) participants
     location: (NSString*) location
     city: (NSString*) city
     slogan: (NSString*) slogan
     paymentStatus: (NSString*) paymentStatus
     productType: (NSString*) productType
     campaignLeads: (NSArray*) campaignLeads
     avatar: (NSString*) avatar
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (NSString*)gettitleValue;

- (YPDate*)getstartValue:(NSError**)err;

- (YPDate*)getendValue:(NSError**)err;

- (NSString*)getrelatedServiceValue;

- (YPOrganization*)getorganizationValue:(NSError**)err;

- (NSString*)getparticipantsValue;

- (NSString*)getlocationValue;

- (NSString*)getcityValue;

- (NSString*)getsloganValue;

- (NSString*)getpaymentStatusValue;

- (NSString*)getproductTypeValue;

- (NSArray*)getcampaignLeadsValue;

- (NSString*)getavatarValue;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

