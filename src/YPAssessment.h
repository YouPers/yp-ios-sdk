#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPI18nString.h"
#import "YPAssessmentQuestion.h"
#import "YPTopic.h"

@class YPDate;
@class YPI18nString;
@class YPAssessmentQuestion;
@class YPTopic;


@interface YPAssessment : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPI18nString* nameI18n;  

@property(nonatomic) YPI18nString* impactQuestionI18n;  

@property(nonatomic) YPI18nString* impactQuestionLeftI18n;  

@property(nonatomic) YPI18nString* impactQuestionRightI18n;  

@property(nonatomic) NSArray* questions;  

@property(nonatomic) YPTopic* topic;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     nameI18n: (YPI18nString*) nameI18n
     impactQuestionI18n: (YPI18nString*) impactQuestionI18n
     impactQuestionLeftI18n: (YPI18nString*) impactQuestionLeftI18n
     impactQuestionRightI18n: (YPI18nString*) impactQuestionRightI18n
     questions: (NSArray*) questions
     topic: (YPTopic*) topic
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPI18nString*)getnameI18nValue:(NSError**)err;

- (YPI18nString*)getimpactQuestionI18nValue:(NSError**)err;

- (YPI18nString*)getimpactQuestionLeftI18nValue:(NSError**)err;

- (YPI18nString*)getimpactQuestionRightI18nValue:(NSError**)err;

- (NSArray*)getquestionsValue;

- (YPTopic*)gettopicValue:(NSError**)err;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

