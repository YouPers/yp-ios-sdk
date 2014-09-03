#import "YPDate.h"
#import "YPAssessmentResultAnswer.h"

@implementation YPAssessmentResultAnswer

-(id)_id: (NSString*) _id
    assessment: (YPAssessment*) assessment
    question: (YPAssessmentQuestion*) question
    answer: (NSNumber*) answer
    updated: (YPDate*) updated
    created: (YPDate*) created

{
    __id = _id;
    _assessment = assessment;
    _question = question;
    _answer = answer;
    _updated = updated;
    _created = created;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    id assessment_dict = dict[@"assessment"];
        if(assessment_dict != nil)
        {
            if([assessment_dict isKindOfClass:[NSString class]])
            {
                _assessment = [[YPAssessment alloc]initWithObjectId:assessment_dict];
            }
            else
            {
                _assessment = [[YPAssessment alloc]initWithValues:assessment_dict];
            }
        }
        id question_dict = dict[@"question"];
        if(question_dict != nil)
        {
            if([question_dict isKindOfClass:[NSString class]])
            {
                _question = [[YPAssessmentQuestion alloc]initWithObjectId:question_dict];
            }
            else
            {
                _question = [[YPAssessmentQuestion alloc]initWithValues:question_dict];
            }
        }
        _answer = dict[@"answer"];
    id updated_dict = dict[@"updated"];
        if(updated_dict != nil)
        {
            if([updated_dict isKindOfClass:[NSString class]])
            {
                _updated = [[YPDate alloc]initWithObjectId:updated_dict];
            }
            else
            {
                _updated = [[YPDate alloc]initWithValues:updated_dict];
            }
        }
        id created_dict = dict[@"created"];
        if(created_dict != nil)
        {
            if([created_dict isKindOfClass:[NSString class]])
            {
                _created = [[YPDate alloc]initWithObjectId:created_dict];
            }
            else
            {
                _created = [[YPDate alloc]initWithValues:created_dict];
            }
        }
        

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
        if(_assessment != nil)
    {
        if([_assessment isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPAssessment *assessment in (NSArray*)_assessment)
            {
                [array addObject:[(YPObject*)assessment asDictionary]];
            }

            dict[@"assessment"] = array;
        }
        else if(_assessment && [_assessment isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_assessment toString];
            if(dateString)
            {
                dict[@"assessment"] = dateString;
            }
        }
        else
        {
        if(_assessment != nil) dict[@"assessment"] = [(YPObject*)_assessment asDictionary];
        }
    }
    if(_question != nil)
    {
        if([_question isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPAssessmentQuestion *question in (NSArray*)_question)
            {
                [array addObject:[(YPObject*)question asDictionary]];
            }

            dict[@"question"] = array;
        }
        else if(_question && [_question isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_question toString];
            if(dateString)
            {
                dict[@"question"] = dateString;
            }
        }
        else
        {
        if(_question != nil) dict[@"question"] = [(YPObject*)_question asDictionary];
        }
    }
    if(_answer != nil) dict[@"answer"] = _answer ;
        if(_updated != nil)
    {
        if([_updated isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *updated in (NSArray*)_updated)
            {
                [array addObject:[(YPObject*)updated asDictionary]];
            }

            dict[@"updated"] = array;
        }
        else if(_updated && [_updated isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_updated toString];
            if(dateString)
            {
                dict[@"updated"] = dateString;
            }
        }
        else
        {
        if(_updated != nil) dict[@"updated"] = [(YPObject*)_updated asDictionary];
        }
    }
    if(_created != nil)
    {
        if([_created isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *created in (NSArray*)_created)
            {
                [array addObject:[(YPObject*)created asDictionary]];
            }

            dict[@"created"] = array;
        }
        else if(_created && [_created isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_created toString];
            if(dateString)
            {
                dict[@"created"] = dateString;
            }
        }
        else
        {
        if(_created != nil) dict[@"created"] = [(YPObject*)_created asDictionary];
        }
    }
    NSDictionary* output = [dict copy];
    return output;
}

/*- (void) createObj:(NSDictionary*)dict {
    NSLog(dict);
}*/

- (NSString*)get_idValue
{
    return __id;
}


- (YPAssessment*)getassessmentValue:(NSError**)err
{
    if(!_assessment.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _assessment;
}


- (YPAssessmentQuestion*)getquestionValue:(NSError**)err
{
    if(!_question.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _question;
}


- (NSNumber*)getanswerValue
{
    return _answer;
}


- (YPDate*)getupdatedValue:(NSError**)err
{
    if(!_updated.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _updated;
}


- (YPDate*)getcreatedValue:(NSError**)err
{
    if(!_created.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _created;
}


@end

