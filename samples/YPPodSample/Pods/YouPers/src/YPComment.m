#import "YPDate.h"
#import "YPComment.h"

@implementation YPComment

-(id)_id: (NSString*) _id
    author: (YPUser*) author
    refDoc: (YPObjectId*) refDoc
    refDocModel: (NSString*) refDocModel
    refDocPath: (NSString*) refDocPath
    refDocTitle: (NSString*) refDocTitle
    refDocLink: (NSString*) refDocLink
    campaign: (YPCampaign*) campaign
    text: (NSString*) text
    updated: (YPDate*) updated
    created: (YPDate*) created

{
    __id = _id;
    _author = author;
    _refDoc = refDoc;
    _refDocModel = refDocModel;
    _refDocPath = refDocPath;
    _refDocTitle = refDocTitle;
    _refDocLink = refDocLink;
    _campaign = campaign;
    _text = text;
    _updated = updated;
    _created = created;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
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
        id refDoc_dict = dict[@"refDoc"];
        if(refDoc_dict != nil)
        {
            if([refDoc_dict isKindOfClass:[NSString class]])
            {
                _refDoc = [[YPObjectId alloc]initWithObjectId:refDoc_dict];
            }
            else
            {
                _refDoc = [[YPObjectId alloc]initWithValues:refDoc_dict];
            }
        }
        _refDocModel = dict[@"refDocModel"];
    _refDocPath = dict[@"refDocPath"];
    _refDocTitle = dict[@"refDocTitle"];
    _refDocLink = dict[@"refDocLink"];
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
        _text = dict[@"text"];
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
    if(_refDoc != nil)
    {
        if([_refDoc isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPObjectId *refDoc in (NSArray*)_refDoc)
            {
                [array addObject:[(YPObject*)refDoc asDictionary]];
            }

            dict[@"refDoc"] = array;
        }
        else if(_refDoc && [_refDoc isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_refDoc toString];
            if(dateString)
            {
                dict[@"refDoc"] = dateString;
            }
        }
        else
        {
        if(_refDoc != nil) dict[@"refDoc"] = [(YPObject*)_refDoc asDictionary];
        }
    }
    if(_refDocModel != nil) dict[@"refDocModel"] = _refDocModel ;
        if(_refDocPath != nil) dict[@"refDocPath"] = _refDocPath ;
        if(_refDocTitle != nil) dict[@"refDocTitle"] = _refDocTitle ;
        if(_refDocLink != nil) dict[@"refDocLink"] = _refDocLink ;
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
    if(_text != nil) dict[@"text"] = _text ;
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


- (YPUser*)getauthorValue:(NSError**)err
{
    if(!_author.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _author;
}


- (YPObjectId*)getrefDocValue:(NSError**)err
{
    if(!_refDoc.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _refDoc;
}


- (NSString*)getrefDocModelValue
{
    return _refDocModel;
}


- (NSString*)getrefDocPathValue
{
    return _refDocPath;
}


- (NSString*)getrefDocTitleValue
{
    return _refDocTitle;
}


- (NSString*)getrefDocLinkValue
{
    return _refDocLink;
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


- (NSString*)gettextValue
{
    return _text;
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

