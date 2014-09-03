#import "YPDate.h"
#import "YPFocus.h"

@implementation YPFocus

-(id)_id: (NSString*) _id
    timestamp: (YPDate*) timestamp
    question: (YPAssessmentQuestion*) question

{
    __id = _id;
    _timestamp = timestamp;
    _question = question;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    id timestamp_dict = dict[@"timestamp"];
        if(timestamp_dict != nil)
        {
            if([timestamp_dict isKindOfClass:[NSString class]])
            {
                _timestamp = [[YPDate alloc]initWithObjectId:timestamp_dict];
            }
            else
            {
                _timestamp = [[YPDate alloc]initWithValues:timestamp_dict];
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
        

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
        if(_timestamp != nil)
    {
        if([_timestamp isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *timestamp in (NSArray*)_timestamp)
            {
                [array addObject:[(YPObject*)timestamp asDictionary]];
            }

            dict[@"timestamp"] = array;
        }
        else if(_timestamp && [_timestamp isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_timestamp toString];
            if(dateString)
            {
                dict[@"timestamp"] = dateString;
            }
        }
        else
        {
        if(_timestamp != nil) dict[@"timestamp"] = [(YPObject*)_timestamp asDictionary];
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


- (YPDate*)gettimestampValue:(NSError**)err
{
    if(!_timestamp.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _timestamp;
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


@end

