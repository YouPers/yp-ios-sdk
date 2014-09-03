#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPUser.h"
#import "YPIdea.h"
#import "YPRefDoc.h"
#import "YPTargetSpace.h"

@class YPDate;
@class YPUser;
@class YPIdea;
@class YPRefDoc;
@class YPTargetSpace;


@interface YPInvitation : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPIdea* idea;  

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

@property(nonatomic) NSString* __t;  

- (id) _id: (NSString*) _id
     idea: (YPIdea*) idea
     targetSpaces: (NSArray*) targetSpaces
     publishFrom: (YPDate*) publishFrom
     publishTo: (YPDate*) publishTo
     author: (YPUser*) author
     authorType: (NSString*) authorType
     title: (NSString*) title
     text: (NSString*) text
     refDocs: (NSArray*) refDocs
     updated: (YPDate*) updated
     created: (YPDate*) created
     __t: (NSString*) __t;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPIdea*)getideaValue:(NSError**)err;

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

- (NSString*)get__tValue;



@end

