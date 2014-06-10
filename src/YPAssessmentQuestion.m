#import "YPDate.h"
#import "YPAssessmentQuestion.h"

@implementation YPAssessmentQuestion

-(id)_id: (NSString*) _id
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
    created: (YPDate*) created

{
    __id = _id;
    _titleI18n = titleI18n;
    _mintextI18n = mintextI18n;
    _mintextexampleI18n = mintextexampleI18n;
    _mintextresultI18n = mintextresultI18n;
    _midtextI18n = midtextI18n;
    _midtextexampleI18n = midtextexampleI18n;
    _maxtextI18n = maxtextI18n;
    _maxtextexampleI18n = maxtextexampleI18n;
    _maxtextresultI18n = maxtextresultI18n;
    _exptextI18n = exptextI18n;
    _category = category;
    _assessment = assessment;
    _type = type;
    _updated = updated;
    _created = created;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    id titleI18n_dict = dict[@"titleI18n"];
        if(titleI18n_dict != nil)
        {
            if([titleI18n_dict isKindOfClass:[NSString class]])
            {
                _titleI18n = [[YPI18nString alloc]initWithObjectId:titleI18n_dict];
            }
            else
            {
                _titleI18n = [[YPI18nString alloc]initWithValues:titleI18n_dict];
            }
        }
        id mintextI18n_dict = dict[@"mintextI18n"];
        if(mintextI18n_dict != nil)
        {
            if([mintextI18n_dict isKindOfClass:[NSString class]])
            {
                _mintextI18n = [[YPI18nString alloc]initWithObjectId:mintextI18n_dict];
            }
            else
            {
                _mintextI18n = [[YPI18nString alloc]initWithValues:mintextI18n_dict];
            }
        }
        id mintextexampleI18n_dict = dict[@"mintextexampleI18n"];
        if(mintextexampleI18n_dict != nil)
        {
            if([mintextexampleI18n_dict isKindOfClass:[NSString class]])
            {
                _mintextexampleI18n = [[YPI18nString alloc]initWithObjectId:mintextexampleI18n_dict];
            }
            else
            {
                _mintextexampleI18n = [[YPI18nString alloc]initWithValues:mintextexampleI18n_dict];
            }
        }
        id mintextresultI18n_dict = dict[@"mintextresultI18n"];
        if(mintextresultI18n_dict != nil)
        {
            if([mintextresultI18n_dict isKindOfClass:[NSString class]])
            {
                _mintextresultI18n = [[YPI18nString alloc]initWithObjectId:mintextresultI18n_dict];
            }
            else
            {
                _mintextresultI18n = [[YPI18nString alloc]initWithValues:mintextresultI18n_dict];
            }
        }
        id midtextI18n_dict = dict[@"midtextI18n"];
        if(midtextI18n_dict != nil)
        {
            if([midtextI18n_dict isKindOfClass:[NSString class]])
            {
                _midtextI18n = [[YPI18nString alloc]initWithObjectId:midtextI18n_dict];
            }
            else
            {
                _midtextI18n = [[YPI18nString alloc]initWithValues:midtextI18n_dict];
            }
        }
        id midtextexampleI18n_dict = dict[@"midtextexampleI18n"];
        if(midtextexampleI18n_dict != nil)
        {
            if([midtextexampleI18n_dict isKindOfClass:[NSString class]])
            {
                _midtextexampleI18n = [[YPI18nString alloc]initWithObjectId:midtextexampleI18n_dict];
            }
            else
            {
                _midtextexampleI18n = [[YPI18nString alloc]initWithValues:midtextexampleI18n_dict];
            }
        }
        id maxtextI18n_dict = dict[@"maxtextI18n"];
        if(maxtextI18n_dict != nil)
        {
            if([maxtextI18n_dict isKindOfClass:[NSString class]])
            {
                _maxtextI18n = [[YPI18nString alloc]initWithObjectId:maxtextI18n_dict];
            }
            else
            {
                _maxtextI18n = [[YPI18nString alloc]initWithValues:maxtextI18n_dict];
            }
        }
        id maxtextexampleI18n_dict = dict[@"maxtextexampleI18n"];
        if(maxtextexampleI18n_dict != nil)
        {
            if([maxtextexampleI18n_dict isKindOfClass:[NSString class]])
            {
                _maxtextexampleI18n = [[YPI18nString alloc]initWithObjectId:maxtextexampleI18n_dict];
            }
            else
            {
                _maxtextexampleI18n = [[YPI18nString alloc]initWithValues:maxtextexampleI18n_dict];
            }
        }
        id maxtextresultI18n_dict = dict[@"maxtextresultI18n"];
        if(maxtextresultI18n_dict != nil)
        {
            if([maxtextresultI18n_dict isKindOfClass:[NSString class]])
            {
                _maxtextresultI18n = [[YPI18nString alloc]initWithObjectId:maxtextresultI18n_dict];
            }
            else
            {
                _maxtextresultI18n = [[YPI18nString alloc]initWithValues:maxtextresultI18n_dict];
            }
        }
        id exptextI18n_dict = dict[@"exptextI18n"];
        if(exptextI18n_dict != nil)
        {
            if([exptextI18n_dict isKindOfClass:[NSString class]])
            {
                _exptextI18n = [[YPI18nString alloc]initWithObjectId:exptextI18n_dict];
            }
            else
            {
                _exptextI18n = [[YPI18nString alloc]initWithValues:exptextI18n_dict];
            }
        }
        _category = dict[@"category"];
    id assessment_dict = dict[@"assessment"];
        if(assessment_dict != nil)
        {
            if([assessment_dict isKindOfClass:[NSString class]])
            {
                _assessment = [[YPObjectId alloc]initWithObjectId:assessment_dict];
            }
            else
            {
                _assessment = [[YPObjectId alloc]initWithValues:assessment_dict];
            }
        }
        _type = dict[@"type"];
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
        if(_titleI18n != nil)
    {
        if([_titleI18n isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPI18nString *titleI18n in (NSArray*)_titleI18n)
            {
                [array addObject:[(YPObject*)titleI18n asDictionary]];
            }

            dict[@"titleI18n"] = array;
        }
        else if(_titleI18n && [_titleI18n isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_titleI18n toString];
            if(dateString)
            {
                dict[@"titleI18n"] = dateString;
            }
        }
        else
        {
        if(_titleI18n != nil) dict[@"titleI18n"] = [(YPObject*)_titleI18n asDictionary];
        }
    }
    if(_mintextI18n != nil)
    {
        if([_mintextI18n isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPI18nString *mintextI18n in (NSArray*)_mintextI18n)
            {
                [array addObject:[(YPObject*)mintextI18n asDictionary]];
            }

            dict[@"mintextI18n"] = array;
        }
        else if(_mintextI18n && [_mintextI18n isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_mintextI18n toString];
            if(dateString)
            {
                dict[@"mintextI18n"] = dateString;
            }
        }
        else
        {
        if(_mintextI18n != nil) dict[@"mintextI18n"] = [(YPObject*)_mintextI18n asDictionary];
        }
    }
    if(_mintextexampleI18n != nil)
    {
        if([_mintextexampleI18n isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPI18nString *mintextexampleI18n in (NSArray*)_mintextexampleI18n)
            {
                [array addObject:[(YPObject*)mintextexampleI18n asDictionary]];
            }

            dict[@"mintextexampleI18n"] = array;
        }
        else if(_mintextexampleI18n && [_mintextexampleI18n isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_mintextexampleI18n toString];
            if(dateString)
            {
                dict[@"mintextexampleI18n"] = dateString;
            }
        }
        else
        {
        if(_mintextexampleI18n != nil) dict[@"mintextexampleI18n"] = [(YPObject*)_mintextexampleI18n asDictionary];
        }
    }
    if(_mintextresultI18n != nil)
    {
        if([_mintextresultI18n isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPI18nString *mintextresultI18n in (NSArray*)_mintextresultI18n)
            {
                [array addObject:[(YPObject*)mintextresultI18n asDictionary]];
            }

            dict[@"mintextresultI18n"] = array;
        }
        else if(_mintextresultI18n && [_mintextresultI18n isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_mintextresultI18n toString];
            if(dateString)
            {
                dict[@"mintextresultI18n"] = dateString;
            }
        }
        else
        {
        if(_mintextresultI18n != nil) dict[@"mintextresultI18n"] = [(YPObject*)_mintextresultI18n asDictionary];
        }
    }
    if(_midtextI18n != nil)
    {
        if([_midtextI18n isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPI18nString *midtextI18n in (NSArray*)_midtextI18n)
            {
                [array addObject:[(YPObject*)midtextI18n asDictionary]];
            }

            dict[@"midtextI18n"] = array;
        }
        else if(_midtextI18n && [_midtextI18n isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_midtextI18n toString];
            if(dateString)
            {
                dict[@"midtextI18n"] = dateString;
            }
        }
        else
        {
        if(_midtextI18n != nil) dict[@"midtextI18n"] = [(YPObject*)_midtextI18n asDictionary];
        }
    }
    if(_midtextexampleI18n != nil)
    {
        if([_midtextexampleI18n isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPI18nString *midtextexampleI18n in (NSArray*)_midtextexampleI18n)
            {
                [array addObject:[(YPObject*)midtextexampleI18n asDictionary]];
            }

            dict[@"midtextexampleI18n"] = array;
        }
        else if(_midtextexampleI18n && [_midtextexampleI18n isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_midtextexampleI18n toString];
            if(dateString)
            {
                dict[@"midtextexampleI18n"] = dateString;
            }
        }
        else
        {
        if(_midtextexampleI18n != nil) dict[@"midtextexampleI18n"] = [(YPObject*)_midtextexampleI18n asDictionary];
        }
    }
    if(_maxtextI18n != nil)
    {
        if([_maxtextI18n isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPI18nString *maxtextI18n in (NSArray*)_maxtextI18n)
            {
                [array addObject:[(YPObject*)maxtextI18n asDictionary]];
            }

            dict[@"maxtextI18n"] = array;
        }
        else if(_maxtextI18n && [_maxtextI18n isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_maxtextI18n toString];
            if(dateString)
            {
                dict[@"maxtextI18n"] = dateString;
            }
        }
        else
        {
        if(_maxtextI18n != nil) dict[@"maxtextI18n"] = [(YPObject*)_maxtextI18n asDictionary];
        }
    }
    if(_maxtextexampleI18n != nil)
    {
        if([_maxtextexampleI18n isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPI18nString *maxtextexampleI18n in (NSArray*)_maxtextexampleI18n)
            {
                [array addObject:[(YPObject*)maxtextexampleI18n asDictionary]];
            }

            dict[@"maxtextexampleI18n"] = array;
        }
        else if(_maxtextexampleI18n && [_maxtextexampleI18n isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_maxtextexampleI18n toString];
            if(dateString)
            {
                dict[@"maxtextexampleI18n"] = dateString;
            }
        }
        else
        {
        if(_maxtextexampleI18n != nil) dict[@"maxtextexampleI18n"] = [(YPObject*)_maxtextexampleI18n asDictionary];
        }
    }
    if(_maxtextresultI18n != nil)
    {
        if([_maxtextresultI18n isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPI18nString *maxtextresultI18n in (NSArray*)_maxtextresultI18n)
            {
                [array addObject:[(YPObject*)maxtextresultI18n asDictionary]];
            }

            dict[@"maxtextresultI18n"] = array;
        }
        else if(_maxtextresultI18n && [_maxtextresultI18n isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_maxtextresultI18n toString];
            if(dateString)
            {
                dict[@"maxtextresultI18n"] = dateString;
            }
        }
        else
        {
        if(_maxtextresultI18n != nil) dict[@"maxtextresultI18n"] = [(YPObject*)_maxtextresultI18n asDictionary];
        }
    }
    if(_exptextI18n != nil)
    {
        if([_exptextI18n isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPI18nString *exptextI18n in (NSArray*)_exptextI18n)
            {
                [array addObject:[(YPObject*)exptextI18n asDictionary]];
            }

            dict[@"exptextI18n"] = array;
        }
        else if(_exptextI18n && [_exptextI18n isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_exptextI18n toString];
            if(dateString)
            {
                dict[@"exptextI18n"] = dateString;
            }
        }
        else
        {
        if(_exptextI18n != nil) dict[@"exptextI18n"] = [(YPObject*)_exptextI18n asDictionary];
        }
    }
    if(_category != nil) dict[@"category"] = _category ;
        if(_assessment != nil)
    {
        if([_assessment isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPObjectId *assessment in (NSArray*)_assessment)
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
    if(_type != nil) dict[@"type"] = _type ;
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


- (YPI18nString*)gettitleI18nValue:(NSError**)err
{
    if(!_titleI18n.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _titleI18n;
}


- (YPI18nString*)getmintextI18nValue:(NSError**)err
{
    if(!_mintextI18n.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _mintextI18n;
}


- (YPI18nString*)getmintextexampleI18nValue:(NSError**)err
{
    if(!_mintextexampleI18n.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _mintextexampleI18n;
}


- (YPI18nString*)getmintextresultI18nValue:(NSError**)err
{
    if(!_mintextresultI18n.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _mintextresultI18n;
}


- (YPI18nString*)getmidtextI18nValue:(NSError**)err
{
    if(!_midtextI18n.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _midtextI18n;
}


- (YPI18nString*)getmidtextexampleI18nValue:(NSError**)err
{
    if(!_midtextexampleI18n.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _midtextexampleI18n;
}


- (YPI18nString*)getmaxtextI18nValue:(NSError**)err
{
    if(!_maxtextI18n.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _maxtextI18n;
}


- (YPI18nString*)getmaxtextexampleI18nValue:(NSError**)err
{
    if(!_maxtextexampleI18n.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _maxtextexampleI18n;
}


- (YPI18nString*)getmaxtextresultI18nValue:(NSError**)err
{
    if(!_maxtextresultI18n.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _maxtextresultI18n;
}


- (YPI18nString*)getexptextI18nValue:(NSError**)err
{
    if(!_exptextI18n.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _exptextI18n;
}


- (NSString*)getcategoryValue
{
    return _category;
}


- (YPObjectId*)getassessmentValue:(NSError**)err
{
    if(!_assessment.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _assessment;
}


- (NSString*)gettypeValue
{
    return _type;
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

