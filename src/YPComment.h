#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPUser.h"
#import "YPObjectId.h"
#import "YPCampaign.h"

@class YPDate;
@class YPUser;
@class YPObjectId;
@class YPCampaign;


@interface YPComment : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPUser* author;  

@property(nonatomic) YPObjectId* refDoc;  

@property(nonatomic) NSString* refDocModel;  

@property(nonatomic) NSString* refDocPath;  

@property(nonatomic) NSString* refDocTitle;  

@property(nonatomic) NSString* refDocLink;  

@property(nonatomic) YPCampaign* campaign;  

@property(nonatomic) NSString* text;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     author: (YPUser*) author
     refDoc: (YPObjectId*) refDoc
     refDocModel: (NSString*) refDocModel
     refDocPath: (NSString*) refDocPath
     refDocTitle: (NSString*) refDocTitle
     refDocLink: (NSString*) refDocLink
     campaign: (YPCampaign*) campaign
     text: (NSString*) text
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPUser*)getauthorValue:(NSError**)err;

- (YPObjectId*)getrefDocValue:(NSError**)err;

- (NSString*)getrefDocModelValue;

- (NSString*)getrefDocPathValue;

- (NSString*)getrefDocTitleValue;

- (NSString*)getrefDocLinkValue;

- (YPCampaign*)getcampaignValue:(NSError**)err;

- (NSString*)gettextValue;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

