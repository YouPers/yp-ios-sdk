#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPAssessment.h"
#import "YPAssessmentQuestion.h"

@class YPDate;
@class YPAssessment;
@class YPAssessmentQuestion;


@interface YPAnswer : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPAssessment* assessment;  /* reference to the assessment this result belongs to */

@property(nonatomic) YPAssessmentQuestion* question;  

@property(nonatomic) NSNumber* answer;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     assessment: (YPAssessment*) assessment
     question: (YPAssessmentQuestion*) question
     answer: (NSNumber*) answer
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPAssessment*)getassessmentValue:(NSError**)err;

- (YPAssessmentQuestion*)getquestionValue:(NSError**)err;

- (NSNumber*)getanswerValue;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

