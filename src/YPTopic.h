#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPI18nString.h"

@class YPDate;
@class YPI18nString;


@interface YPTopic : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPI18nString* nameI18n;  

@property(nonatomic) YPI18nString* shortDescriptionI18n;  

@property(nonatomic) YPI18nString* longDescriptionI18n;  

@property(nonatomic) NSString* picture;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     nameI18n: (YPI18nString*) nameI18n
     shortDescriptionI18n: (YPI18nString*) shortDescriptionI18n
     longDescriptionI18n: (YPI18nString*) longDescriptionI18n
     picture: (NSString*) picture
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPI18nString*)getnameI18nValue:(NSError**)err;

- (YPI18nString*)getshortDescriptionI18nValue:(NSError**)err;

- (YPI18nString*)getlongDescriptionI18nValue:(NSError**)err;

- (NSString*)getpictureValue;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

