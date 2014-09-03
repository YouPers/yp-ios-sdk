#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPUser.h"
#import "YPAddress.h"
#import "YPContact.h"

@class YPDate;
@class YPUser;
@class YPAddress;
@class YPContact;


@interface YPOrganization : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPAddress* address;  

@property(nonatomic) YPContact* contact;  

@property(nonatomic) NSString* name;  

@property(nonatomic) NSString* legalForm;  

@property(nonatomic) NSString* sector;  

@property(nonatomic) NSArray* administrators;  

@property(nonatomic) NSString* avatar;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     address: (YPAddress*) address
     contact: (YPContact*) contact
     name: (NSString*) name
     legalForm: (NSString*) legalForm
     sector: (NSString*) sector
     administrators: (NSArray*) administrators
     avatar: (NSString*) avatar
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPAddress*)getaddressValue:(NSError**)err;

- (YPContact*)getcontactValue:(NSError**)err;

- (NSString*)getnameValue;

- (NSString*)getlegalFormValue;

- (NSString*)getsectorValue;

- (NSArray*)getadministratorsValue;

- (NSString*)getavatarValue;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

