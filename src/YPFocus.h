#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPAssessmentQuestion.h"

@class YPDate;
@class YPAssessmentQuestion;


@interface YPFocus : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPDate* timestamp;  

@property(nonatomic) YPAssessmentQuestion* question;  

- (id) _id: (NSString*) _id
     timestamp: (YPDate*) timestamp
     question: (YPAssessmentQuestion*) question;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPDate*)gettimestampValue:(NSError**)err;

- (YPAssessmentQuestion*)getquestionValue:(NSError**)err;



@end

