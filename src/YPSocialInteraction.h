#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPUser.h"
#import "YPRefDoc.h"
#import "YPTargetSpace.h"

@class YPDate;
@class YPUser;
@class YPRefDoc;
@class YPTargetSpace;


@interface YPSocialInteraction : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) NSArray* targetSpaces;  

@property(nonatomic) YPDate* publishFrom;  

@property(nonatomic) YPDate* publishTo;  

@property(nonatomic) YPUser* author;  

@property(nonatomic) NSString* authorType;  

@property(nonatomic) NSString* title;  

@property(nonatomic) NSString* text;  

@property(nonatomic) NSArray* refDocs;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     targetSpaces: (NSArray*) targetSpaces
     publishFrom: (YPDate*) publishFrom
     publishTo: (YPDate*) publishTo
     author: (YPUser*) author
     authorType: (NSString*) authorType
     title: (NSString*) title
     text: (NSString*) text
     refDocs: (NSArray*) refDocs
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (NSArray*)gettargetSpacesValue;

- (YPDate*)getpublishFromValue:(NSError**)err;

- (YPDate*)getpublishToValue:(NSError**)err;

- (YPUser*)getauthorValue:(NSError**)err;

- (NSString*)getauthorTypeValue;

- (NSString*)gettitleValue;

- (NSString*)gettextValue;

- (NSArray*)getrefDocsValue;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

