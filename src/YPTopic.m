#import "YPDate.h"
#import "YPTopic.h"

@implementation YPTopic

-(id)_id: (NSString*) _id
    nameI18n: (YPI18nString*) nameI18n
    shortDescriptionI18n: (YPI18nString*) shortDescriptionI18n
    longDescriptionI18n: (YPI18nString*) longDescriptionI18n
    picture: (NSString*) picture
    updated: (YPDate*) updated
    created: (YPDate*) created

{
    __id = _id;
    _nameI18n = nameI18n;
    _shortDescriptionI18n = shortDescriptionI18n;
    _longDescriptionI18n = longDescriptionI18n;
    _picture = picture;
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
        id shortDescriptionI18n_dict = dict[@"shortDescriptionI18n"];
        if(shortDescriptionI18n_dict != nil)
        {
            if([shortDescriptionI18n_dict isKindOfClass:[NSString class]])
            {
                _shortDescriptionI18n = [[YPI18nString alloc]initWithObjectId:shortDescriptionI18n_dict];
            }
            else
            {
                _shortDescriptionI18n = [[YPI18nString alloc]initWithValues:shortDescriptionI18n_dict];
            }
        }
        id longDescriptionI18n_dict = dict[@"longDescriptionI18n"];
        if(longDescriptionI18n_dict != nil)
        {
            if([longDescriptionI18n_dict isKindOfClass:[NSString class]])
            {
                _longDescriptionI18n = [[YPI18nString alloc]initWithObjectId:longDescriptionI18n_dict];
            }
            else
            {
                _longDescriptionI18n = [[YPI18nString alloc]initWithValues:longDescriptionI18n_dict];
            }
        }
        _picture = dict[@"picture"];
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
    if(_shortDescriptionI18n != nil)
    {
        if([_shortDescriptionI18n isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPI18nString *shortDescriptionI18n in (NSArray*)_shortDescriptionI18n)
            {
                [array addObject:[(YPObject*)shortDescriptionI18n asDictionary]];
            }

            dict[@"shortDescriptionI18n"] = array;
        }
        else if(_shortDescriptionI18n && [_shortDescriptionI18n isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_shortDescriptionI18n toString];
            if(dateString)
            {
                dict[@"shortDescriptionI18n"] = dateString;
            }
        }
        else
        {
        if(_shortDescriptionI18n != nil) dict[@"shortDescriptionI18n"] = [(YPObject*)_shortDescriptionI18n asDictionary];
        }
    }
    if(_longDescriptionI18n != nil)
    {
        if([_longDescriptionI18n isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPI18nString *longDescriptionI18n in (NSArray*)_longDescriptionI18n)
            {
                [array addObject:[(YPObject*)longDescriptionI18n asDictionary]];
            }

            dict[@"longDescriptionI18n"] = array;
        }
        else if(_longDescriptionI18n && [_longDescriptionI18n isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_longDescriptionI18n toString];
            if(dateString)
            {
                dict[@"longDescriptionI18n"] = dateString;
            }
        }
        else
        {
        if(_longDescriptionI18n != nil) dict[@"longDescriptionI18n"] = [(YPObject*)_longDescriptionI18n asDictionary];
        }
    }
    if(_picture != nil) dict[@"picture"] = _picture ;
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


- (YPI18nString*)getshortDescriptionI18nValue:(NSError**)err
{
    if(!_shortDescriptionI18n.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _shortDescriptionI18n;
}


- (YPI18nString*)getlongDescriptionI18nValue:(NSError**)err
{
    if(!_longDescriptionI18n.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _longDescriptionI18n;
}


- (NSString*)getpictureValue
{
    return _picture;
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

