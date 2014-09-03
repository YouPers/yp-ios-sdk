#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPProfile.h"
#import "YPCampaign.h"

@class YPDate;
@class YPProfile;
@class YPCampaign;


@interface YPUser : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) NSString* firstname;  

@property(nonatomic) NSString* lastname;  

@property(nonatomic) NSString* fullname;  

@property(nonatomic) NSString* email;  

@property(nonatomic) NSString* avatar;  

@property(nonatomic) NSNumber* emailValidatedFlag;  

@property(nonatomic) NSString* username;  

@property(nonatomic) NSArray* roles;  

@property(nonatomic) NSString* hashed_password;  

@property(nonatomic) NSNumber* tempPasswordFlag;  

@property(nonatomic) YPCampaign* campaign;  

@property(nonatomic) YPProfile* profile;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     firstname: (NSString*) firstname
     lastname: (NSString*) lastname
     fullname: (NSString*) fullname
     email: (NSString*) email
     avatar: (NSString*) avatar
     emailValidatedFlag: (NSNumber*) emailValidatedFlag
     username: (NSString*) username
     roles: (NSArray*) roles
     hashed_password: (NSString*) hashed_password
     tempPasswordFlag: (NSNumber*) tempPasswordFlag
     campaign: (YPCampaign*) campaign
     profile: (YPProfile*) profile
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (NSString*)getfirstnameValue;

- (NSString*)getlastnameValue;

- (NSString*)getfullnameValue;

- (NSString*)getemailValue;

- (NSString*)getavatarValue;

- (NSNumber*)getemailValidatedFlagValue;

- (NSString*)getusernameValue;

- (NSArray*)getrolesValue;

- (NSString*)gethashed_passwordValue;

- (NSNumber*)gettempPasswordFlagValue;

- (YPCampaign*)getcampaignValue:(NSError**)err;

- (YPProfile*)getprofileValue:(NSError**)err;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

