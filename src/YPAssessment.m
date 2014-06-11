#import "YPDate.h"
#import "YPAssessment.h"

@implementation YPAssessment

-(id)_id: (NSString*) _id
    nameI18n: (YPI18nString*) nameI18n
    questions: (NSArray*) questions
    updated: (YPDate*) updated
    created: (YPDate*) created

{
    __id = _id;
    _nameI18n = nameI18n;
    _questions = questions;
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


- (NSArray*)getquestionsValue
{
    return _questions;
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

