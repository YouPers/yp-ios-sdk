#import "YPDate.h"
#import "YPActivity.h"

@implementation YPActivity

-(id)_id: (NSString*) _id
    titleI18n: (YPI18nString*) titleI18n
    descriptionI18n: (YPI18nString*) descriptionI18n
    textI18n: (YPI18nString*) textI18n
    number: (NSString*) number
    source: (NSString*) source
    author: (YPUser*) author
    campaign: (YPCampaign*) campaign
    defaultfrequency: (NSString*) defaultfrequency
    defaultexecutiontype: (NSString*) defaultexecutiontype
    defaultvisibility: (NSString*) defaultvisibility
    defaultduration: (NSNumber*) defaultduration
    topics: (NSArray*) topics
    fields: (NSArray*) fields
    qualityFactor: (NSNumber*) qualityFactor
    recWeights: (NSString*) recWeights
    updated: (YPDate*) updated
    created: (YPDate*) created

{
    __id = _id;
    _titleI18n = titleI18n;
    _descriptionI18n = descriptionI18n;
    _textI18n = textI18n;
    _number = number;
    _source = source;
    _author = author;
    _campaign = campaign;
    _defaultfrequency = defaultfrequency;
    _defaultexecutiontype = defaultexecutiontype;
    _defaultvisibility = defaultvisibility;
    _defaultduration = defaultduration;
    _topics = topics;
    _fields = fields;
    _qualityFactor = qualityFactor;
    _recWeights = recWeights;
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
        id descriptionI18n_dict = dict[@"descriptionI18n"];
        if(descriptionI18n_dict != nil)
        {
            if([descriptionI18n_dict isKindOfClass:[NSString class]])
            {
                _descriptionI18n = [[YPI18nString alloc]initWithObjectId:descriptionI18n_dict];
            }
            else
            {
                _descriptionI18n = [[YPI18nString alloc]initWithValues:descriptionI18n_dict];
            }
        }
        id textI18n_dict = dict[@"textI18n"];
        if(textI18n_dict != nil)
        {
            if([textI18n_dict isKindOfClass:[NSString class]])
            {
                _textI18n = [[YPI18nString alloc]initWithObjectId:textI18n_dict];
            }
            else
            {
                _textI18n = [[YPI18nString alloc]initWithValues:textI18n_dict];
            }
        }
        _number = dict[@"number"];
    _source = dict[@"source"];
    id author_dict = dict[@"author"];
        if(author_dict != nil)
        {
            if([author_dict isKindOfClass:[NSString class]])
            {
                _author = [[YPUser alloc]initWithObjectId:author_dict];
            }
            else
            {
                _author = [[YPUser alloc]initWithValues:author_dict];
            }
        }
        id campaign_dict = dict[@"campaign"];
        if(campaign_dict != nil)
        {
            if([campaign_dict isKindOfClass:[NSString class]])
            {
                _campaign = [[YPCampaign alloc]initWithObjectId:campaign_dict];
            }
            else
            {
                _campaign = [[YPCampaign alloc]initWithValues:campaign_dict];
            }
        }
        _defaultfrequency = dict[@"defaultfrequency"];
    _defaultexecutiontype = dict[@"defaultexecutiontype"];
    _defaultvisibility = dict[@"defaultvisibility"];
    _defaultduration = dict[@"defaultduration"];
    _topics = dict[@"topics"];
    _fields = dict[@"fields"];
    _qualityFactor = dict[@"qualityFactor"];
    _recWeights = dict[@"recWeights"];
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
    if(_descriptionI18n != nil)
    {
        if([_descriptionI18n isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPI18nString *descriptionI18n in (NSArray*)_descriptionI18n)
            {
                [array addObject:[(YPObject*)descriptionI18n asDictionary]];
            }

            dict[@"descriptionI18n"] = array;
        }
        else if(_descriptionI18n && [_descriptionI18n isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_descriptionI18n toString];
            if(dateString)
            {
                dict[@"descriptionI18n"] = dateString;
            }
        }
        else
        {
        if(_descriptionI18n != nil) dict[@"descriptionI18n"] = [(YPObject*)_descriptionI18n asDictionary];
        }
    }
    if(_textI18n != nil)
    {
        if([_textI18n isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPI18nString *textI18n in (NSArray*)_textI18n)
            {
                [array addObject:[(YPObject*)textI18n asDictionary]];
            }

            dict[@"textI18n"] = array;
        }
        else if(_textI18n && [_textI18n isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_textI18n toString];
            if(dateString)
            {
                dict[@"textI18n"] = dateString;
            }
        }
        else
        {
        if(_textI18n != nil) dict[@"textI18n"] = [(YPObject*)_textI18n asDictionary];
        }
    }
    if(_number != nil) dict[@"number"] = _number ;
        if(_source != nil) dict[@"source"] = _source ;
        if(_author != nil)
    {
        if([_author isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPUser *author in (NSArray*)_author)
            {
                [array addObject:[(YPObject*)author asDictionary]];
            }

            dict[@"author"] = array;
        }
        else if(_author && [_author isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_author toString];
            if(dateString)
            {
                dict[@"author"] = dateString;
            }
        }
        else
        {
        if(_author != nil) dict[@"author"] = [(YPObject*)_author asDictionary];
        }
    }
    if(_campaign != nil)
    {
        if([_campaign isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPCampaign *campaign in (NSArray*)_campaign)
            {
                [array addObject:[(YPObject*)campaign asDictionary]];
            }

            dict[@"campaign"] = array;
        }
        else if(_campaign && [_campaign isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_campaign toString];
            if(dateString)
            {
                dict[@"campaign"] = dateString;
            }
        }
        else
        {
        if(_campaign != nil) dict[@"campaign"] = [(YPObject*)_campaign asDictionary];
        }
    }
    if(_defaultfrequency != nil) dict[@"defaultfrequency"] = _defaultfrequency ;
        if(_defaultexecutiontype != nil) dict[@"defaultexecutiontype"] = _defaultexecutiontype ;
        if(_defaultvisibility != nil) dict[@"defaultvisibility"] = _defaultvisibility ;
        if(_defaultduration != nil) dict[@"defaultduration"] = _defaultduration ;
        if(_topics != nil) dict[@"topics"] = _topics ;
        if(_fields != nil) dict[@"fields"] = _fields ;
        if(_qualityFactor != nil) dict[@"qualityFactor"] = _qualityFactor ;
        if(_recWeights != nil) dict[@"recWeights"] = _recWeights ;
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


- (YPI18nString*)getdescriptionI18nValue:(NSError**)err
{
    if(!_descriptionI18n.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _descriptionI18n;
}


- (YPI18nString*)gettextI18nValue:(NSError**)err
{
    if(!_textI18n.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _textI18n;
}


- (NSString*)getnumberValue
{
    return _number;
}


- (NSString*)getsourceValue
{
    return _source;
}


- (YPUser*)getauthorValue:(NSError**)err
{
    if(!_author.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _author;
}


- (YPCampaign*)getcampaignValue:(NSError**)err
{
    if(!_campaign.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _campaign;
}


- (NSString*)getdefaultfrequencyValue
{
    return _defaultfrequency;
}


- (NSString*)getdefaultexecutiontypeValue
{
    return _defaultexecutiontype;
}


- (NSString*)getdefaultvisibilityValue
{
    return _defaultvisibility;
}


- (NSNumber*)getdefaultdurationValue
{
    return _defaultduration;
}


- (NSArray*)gettopicsValue
{
    return _topics;
}


- (NSArray*)getfieldsValue
{
    return _fields;
}


- (NSNumber*)getqualityFactorValue
{
    return _qualityFactor;
}


- (NSString*)getrecWeightsValue
{
    return _recWeights;
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

