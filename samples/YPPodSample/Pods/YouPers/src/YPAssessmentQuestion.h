#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPI18nString.h"
#import "YPObjectId.h"

@class YPDate;
@class YPI18nString;
@class YPObjectId;


@interface YPAssessmentQuestion : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPI18nString* titleI18n;  

@property(nonatomic) YPI18nString* mintextI18n;  

@property(nonatomic) YPI18nString* mintextexampleI18n;  

@property(nonatomic) YPI18nString* mintextresultI18n;  

@property(nonatomic) YPI18nString* midtextI18n;  

@property(nonatomic) YPI18nString* midtextexampleI18n;  

@property(nonatomic) YPI18nString* maxtextI18n;  

@property(nonatomic) YPI18nString* maxtextexampleI18n;  

@property(nonatomic) YPI18nString* maxtextresultI18n;  

@property(nonatomic) YPI18nString* exptextI18n;  

@property(nonatomic) NSString* category;  

@property(nonatomic) YPObjectId* assessment;  

@property(nonatomic) NSString* type;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     titleI18n: (YPI18nString*) titleI18n
     mintextI18n: (YPI18nString*) mintextI18n
     mintextexampleI18n: (YPI18nString*) mintextexampleI18n
     mintextresultI18n: (YPI18nString*) mintextresultI18n
     midtextI18n: (YPI18nString*) midtextI18n
     midtextexampleI18n: (YPI18nString*) midtextexampleI18n
     maxtextI18n: (YPI18nString*) maxtextI18n
     maxtextexampleI18n: (YPI18nString*) maxtextexampleI18n
     maxtextresultI18n: (YPI18nString*) maxtextresultI18n
     exptextI18n: (YPI18nString*) exptextI18n
     category: (NSString*) category
     assessment: (YPObjectId*) assessment
     type: (NSString*) type
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPI18nString*)gettitleI18nValue:(NSError**)err;

- (YPI18nString*)getmintextI18nValue:(NSError**)err;

- (YPI18nString*)getmintextexampleI18nValue:(NSError**)err;

- (YPI18nString*)getmintextresultI18nValue:(NSError**)err;

- (YPI18nString*)getmidtextI18nValue:(NSError**)err;

- (YPI18nString*)getmidtextexampleI18nValue:(NSError**)err;

- (YPI18nString*)getmaxtextI18nValue:(NSError**)err;

- (YPI18nString*)getmaxtextexampleI18nValue:(NSError**)err;

- (YPI18nString*)getmaxtextresultI18nValue:(NSError**)err;

- (YPI18nString*)getexptextI18nValue:(NSError**)err;

- (NSString*)getcategoryValue;

- (YPObjectId*)getassessmentValue:(NSError**)err;

- (NSString*)gettypeValue;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

