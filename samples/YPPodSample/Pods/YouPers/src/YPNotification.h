#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPUser.h"
#import "YPObjectId.h"
#import "YPRefDoc.h"

@class YPDate;
@class YPUser;
@class YPObjectId;
@class YPRefDoc;


@interface YPNotification : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPUser* author;  

@property(nonatomic) NSString* type;  

@property(nonatomic) NSString* sourceType;  

@property(nonatomic) NSArray* refDocs;  

@property(nonatomic) NSString* title;  

@property(nonatomic) NSString* refDocLink;  

@property(nonatomic) YPObjectId* targetQueue;  

@property(nonatomic) NSString* text;  

@property(nonatomic) YPDate* publishFrom;  

@property(nonatomic) YPDate* publishTo;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     author: (YPUser*) author
     type: (NSString*) type
     sourceType: (NSString*) sourceType
     refDocs: (NSArray*) refDocs
     title: (NSString*) title
     refDocLink: (NSString*) refDocLink
     targetQueue: (YPObjectId*) targetQueue
     text: (NSString*) text
     publishFrom: (YPDate*) publishFrom
     publishTo: (YPDate*) publishTo
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPUser*)getauthorValue:(NSError**)err;

- (NSString*)gettypeValue;

- (NSString*)getsourceTypeValue;

- (NSArray*)getrefDocsValue;

- (NSString*)gettitleValue;

- (NSString*)getrefDocLinkValue;

- (YPObjectId*)gettargetQueueValue:(NSError**)err;

- (NSString*)gettextValue;

- (YPDate*)getpublishFromValue:(NSError**)err;

- (YPDate*)getpublishToValue:(NSError**)err;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

