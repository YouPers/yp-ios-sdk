#import "YPDate.h"
#import "YPAssessment.h"

@implementation YPAssessment

-(id)_id: (NSString*) _id
    nameI18n: (YPI18nString*) nameI18n
    impactQuestionI18n: (YPI18nString*) impactQuestionI18n
    impactQuestionLeftI18n: (YPI18nString*) impactQuestionLeftI18n
    impactQuestionRightI18n: (YPI18nString*) impactQuestionRightI18n
    questions: (NSArray*) questions
    topic: (YPTopic*) topic
    updated: (YPDate*) updated
    created: (YPDate*) created

{
    __id = _id;
    _nameI18n = nameI18n;
    _impactQuestionI18n = impactQuestionI18n;
    _impactQuestionLeftI18n = impactQuestionLeftI18n;
    _impactQuestionRightI18n = impactQuestionRightI18n;
    _questions = questions;
    _topic = topic;
    _updated = updated;
    _created = created;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    id nameI18n_dict = dict[@"nameI18n"];
        if(nameI18n_dict != nil)
        {
            if([nameI18n_dict isKindOfClass:[NSString class]])
            {
                _nameI18n = [[YPI18nString alloc]initWithObjectId:nameI18n_dict];
            }
            else
            {
                _nameI18n = [[YPI18nString alloc]initWithValues:nameI18n_dict];
            }
        }
        id impactQuestionI18n_dict = dict[@"impactQuestionI18n"];
        if(impactQuestionI18n_dict != nil)
        {
            if([impactQuestionI18n_dict isKindOfClass:[NSString class]])
            {
                _impactQuestionI18n = [[YPI18nString alloc]initWithObjectId:impactQuestionI18n_dict];
            }
            else
            {
                _impactQuestionI18n = [[YPI18nString alloc]initWithValues:impactQuestionI18n_dict];
            }
        }
        id impactQuestionLeftI18n_dict = dict[@"impactQuestionLeftI18n"];
        if(impactQuestionLeftI18n_dict != nil)
        {
            if([impactQuestionLeftI18n_dict isKindOfClass:[NSString class]])
            {
                _impactQuestionLeftI18n = [[YPI18nString alloc]initWithObjectId:impactQuestionLeftI18n_dict];
            }
            else
            {
                _impactQuestionLeftI18n = [[YPI18nString alloc]initWithValues:impactQuestionLeftI18n_dict];
            }
        }
        id impactQuestionRightI18n_dict = dict[@"impactQuestionRightI18n"];
        if(impactQuestionRightI18n_dict != nil)
        {
            if([impactQuestionRightI18n_dict isKindOfClass:[NSString class]])
            {
                _impactQuestionRightI18n = [[YPI18nString alloc]initWithObjectId:impactQuestionRightI18n_dict];
            }
            else
            {
                _impactQuestionRightI18n = [[YPI18nString alloc]initWithValues:impactQuestionRightI18n_dict];
            }
        }
        id questions_dict = dict[@"questions"];
        if([questions_dict isKindOfClass:[NSArray class]])
        {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)questions_dict count]];

            if([(NSArray*)questions_dict count] > 0)
            {
            	YPAssessmentQuestion* d;
            	
                for (NSDictionary* dict in (NSArray*)questions_dict)
                {
                    if([dict isKindOfClass:[NSString class]])
                    {
                    	d = [[YPAssessmentQuestion alloc] initWithObjectId:(NSString*)dict];
                    }
                    else
                    {
                    	d = [[YPAssessmentQuestion alloc] initWithValues:dict];
                    }
                    
                    [objs addObject:d];
                }

                _questions = [[NSArray alloc] initWithArray:objs];
            }
            else
            {
                _questions = [[NSArray alloc] init];
            }
        }
        else
        {
            _questions = [[NSArray alloc] init];
        }
        id topic_dict = dict[@"topic"];
        if(topic_dict != nil)
        {
            if([topic_dict isKindOfClass:[NSString class]])
            {
                _topic = [[YPTopic alloc]initWithObjectId:topic_dict];
            }
            else
            {
                _topic = [[YPTopic alloc]initWithValues:topic_dict];
            }
        }
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
        if(_nameI18n != nil)
    {
        if([_nameI18n isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPI18nString *nameI18n in (NSArray*)_nameI18n)
            {
                [array addObject:[(YPObject*)nameI18n asDictionary]];
            }

            dict[@"nameI18n"] = array;
        }
        else if(_nameI18n && [_nameI18n isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_nameI18n toString];
            if(dateString)
            {
                dict[@"nameI18n"] = dateString;
            }
        }
        else
        {
        if(_nameI18n != nil) dict[@"nameI18n"] = [(YPObject*)_nameI18n asDictionary];
        }
    }
    if(_impactQuestionI18n != nil)
    {
        if([_impactQuestionI18n isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPI18nString *impactQuestionI18n in (NSArray*)_impactQuestionI18n)
            {
                [array addObject:[(YPObject*)impactQuestionI18n asDictionary]];
            }

            dict[@"impactQuestionI18n"] = array;
        }
        else if(_impactQuestionI18n && [_impactQuestionI18n isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_impactQuestionI18n toString];
            if(dateString)
            {
                dict[@"impactQuestionI18n"] = dateString;
            }
        }
        else
        {
        if(_impactQuestionI18n != nil) dict[@"impactQuestionI18n"] = [(YPObject*)_impactQuestionI18n asDictionary];
        }
    }
    if(_impactQuestionLeftI18n != nil)
    {
        if([_impactQuestionLeftI18n isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPI18nString *impactQuestionLeftI18n in (NSArray*)_impactQuestionLeftI18n)
            {
                [array addObject:[(YPObject*)impactQuestionLeftI18n asDictionary]];
            }

            dict[@"impactQuestionLeftI18n"] = array;
        }
        else if(_impactQuestionLeftI18n && [_impactQuestionLeftI18n isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_impactQuestionLeftI18n toString];
            if(dateString)
            {
                dict[@"impactQuestionLeftI18n"] = dateString;
            }
        }
        else
        {
        if(_impactQuestionLeftI18n != nil) dict[@"impactQuestionLeftI18n"] = [(YPObject*)_impactQuestionLeftI18n asDictionary];
        }
    }
    if(_impactQuestionRightI18n != nil)
    {
        if([_impactQuestionRightI18n isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPI18nString *impactQuestionRightI18n in (NSArray*)_impactQuestionRightI18n)
            {
                [array addObject:[(YPObject*)impactQuestionRightI18n asDictionary]];
            }

            dict[@"impactQuestionRightI18n"] = array;
        }
        else if(_impactQuestionRightI18n && [_impactQuestionRightI18n isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_impactQuestionRightI18n toString];
            if(dateString)
            {
                dict[@"impactQuestionRightI18n"] = dateString;
            }
        }
        else
        {
        if(_impactQuestionRightI18n != nil) dict[@"impactQuestionRightI18n"] = [(YPObject*)_impactQuestionRightI18n asDictionary];
        }
    }
    if(_questions != nil)
    {
        if([_questions isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPAssessmentQuestion *questions in (NSArray*)_questions)
            {
                [array addObject:[(YPObject*)questions asDictionary]];
            }

            dict[@"questions"] = array;
        }
        else if(_questions && [_questions isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_questions toString];
            if(dateString)
            {
                dict[@"questions"] = dateString;
            }
        }
        else
        {
        if(_questions != nil) dict[@"questions"] = [(YPObject*)_questions asDictionary];
        }
    }
    if(_topic != nil)
    {
        if([_topic isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPTopic *topic in (NSArray*)_topic)
            {
                [array addObject:[(YPObject*)topic asDictionary]];
            }

            dict[@"topic"] = array;
        }
        else if(_topic && [_topic isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_topic toString];
            if(dateString)
            {
                dict[@"topic"] = dateString;
            }
        }
        else
        {
        if(_topic != nil) dict[@"topic"] = [(YPObject*)_topic asDictionary];
        }
    }
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


- (YPI18nString*)getnameI18nValue:(NSError**)err
{
    if(!_nameI18n.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _nameI18n;
}


- (YPI18nString*)getimpactQuestionI18nValue:(NSError**)err
{
    if(!_impactQuestionI18n.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _impactQuestionI18n;
}


- (YPI18nString*)getimpactQuestionLeftI18nValue:(NSError**)err
{
    if(!_impactQuestionLeftI18n.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _impactQuestionLeftI18n;
}


- (YPI18nString*)getimpactQuestionRightI18nValue:(NSError**)err
{
    if(!_impactQuestionRightI18n.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _impactQuestionRightI18n;
}


- (NSArray*)getquestionsValue
{
    return _questions;
}


- (YPTopic*)gettopicValue:(NSError**)err
{
    if(!_topic.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _topic;
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

