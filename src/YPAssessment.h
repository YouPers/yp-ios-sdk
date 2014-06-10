#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPI18nString.h"
#import "YPAssessmentQuestion.h"

@class YPDate;
@class YPI18nString;
@class YPAssessmentQuestion;


@interface YPAssessment : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPI18nString* nameI18n;  

@property(nonatomic) NSArray* questions;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     nameI18n: (YPI18nString*) nameI18n
     questions: (NSArray*) questions
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPI18nString*)getnameI18nValue:(NSError**)err;

- (NSArray*)getquestionsValue;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

