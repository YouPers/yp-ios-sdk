#import "YPDate.h"
#import "YPNotification.h"

@implementation YPNotification

-(id)_id: (NSString*) _id
    author: (YPUser*) author
    type: (NSString*) type
    sourceType: (NSString*) sourceType
    refDocs: (NSArray*) refDocs
    title: (NSString*) title
    refDocLink: (NSString*) refDocLink
    targetQueue: (YPObjectId*) targetQueue
    text: (NSString*) text
    publishFrom: (YPDate*) publishFrom
    publishTo: (YPDate*) publishTo
    updated: (YPDate*) updated
    created: (YPDate*) created

{
    __id = _id;
    _author = author;
    _type = type;
    _sourceType = sourceType;
    _refDocs = refDocs;
    _title = title;
    _refDocLink = refDocLink;
    _targetQueue = targetQueue;
    _text = text;
    _publishFrom = publishFrom;
    _publishTo = publishTo;
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
        _type = dict[@"type"];
    _sourceType = dict[@"sourceType"];
    id refDocs_dict = dict[@"refDocs"];
        if([refDocs_dict isKindOfClass:[NSArray class]])
        {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)refDocs_dict count]];

            if([(NSArray*)refDocs_dict count] > 0)
            {
                for (NSDictionary* dict in (NSArray*)refDocs_dict)
                {
                    YPRefDoc* d = [[YPRefDoc alloc] initWithValues:dict];
                    [objs addObject:d];
                }

                _refDocs = [[NSArray alloc] initWithArray:objs];
            }
            else
            {
                _refDocs = [[NSArray alloc] init];
            }
        }
        else
        {
            _refDocs = [[NSArray alloc] init];
        }
        _title = dict[@"title"];
    _refDocLink = dict[@"refDocLink"];
    id targetQueue_dict = dict[@"targetQueue"];
        if(targetQueue_dict != nil)
        {
            if([targetQueue_dict isKindOfClass:[NSString class]])
            {
                _targetQueue = [[YPObjectId alloc]initWithObjectId:targetQueue_dict];
            }
            else
            {
                _targetQueue = [[YPObjectId alloc]initWithValues:targetQueue_dict];
            }
        }
        _text = dict[@"text"];
    id publishFrom_dict = dict[@"publishFrom"];
        if(publishFrom_dict != nil)
        {
            if([publishFrom_dict isKindOfClass:[NSString class]])
            {
                _publishFrom = [[YPDate alloc]initWithObjectId:publishFrom_dict];
            }
            else
            {
                _publishFrom = [[YPDate alloc]initWithValues:publishFrom_dict];
            }
        }
        id publishTo_dict = dict[@"publishTo"];
        if(publishTo_dict != nil)
        {
            if([publishTo_dict isKindOfClass:[NSString class]])
            {
                _publishTo = [[YPDate alloc]initWithObjectId:publishTo_dict];
            }
            else
            {
                _publishTo = [[YPDate alloc]initWithValues:publishTo_dict];
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
    if(_type != nil) dict[@"type"] = _type ;
        if(_sourceType != nil) dict[@"sourceType"] = _sourceType ;
        if(_refDocs != nil)
    {
        if([_refDocs isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPRefDoc *refDocs in (NSArray*)_refDocs)
            {
                [array addObject:[(YPObject*)refDocs asDictionary]];
            }

            dict[@"refDocs"] = array;
        }
        else if(_refDocs && [_refDocs isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_refDocs toString];
            if(dateString)
            {
                dict[@"refDocs"] = dateString;
            }
        }
        else
        {
        if(_refDocs != nil) dict[@"refDocs"] = [(YPObject*)_refDocs asDictionary];
        }
    }
    if(_title != nil) dict[@"title"] = _title ;
        if(_refDocLink != nil) dict[@"refDocLink"] = _refDocLink ;
        if(_targetQueue != nil)
    {
        if([_targetQueue isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPObjectId *targetQueue in (NSArray*)_targetQueue)
            {
                [array addObject:[(YPObject*)targetQueue asDictionary]];
            }

            dict[@"targetQueue"] = array;
        }
        else if(_targetQueue && [_targetQueue isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_targetQueue toString];
            if(dateString)
            {
                dict[@"targetQueue"] = dateString;
            }
        }
        else
        {
        if(_targetQueue != nil) dict[@"targetQueue"] = [(YPObject*)_targetQueue asDictionary];
        }
    }
    if(_text != nil) dict[@"text"] = _text ;
        if(_publishFrom != nil)
    {
        if([_publishFrom isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *publishFrom in (NSArray*)_publishFrom)
            {
                [array addObject:[(YPObject*)publishFrom asDictionary]];
            }

            dict[@"publishFrom"] = array;
        }
        else if(_publishFrom && [_publishFrom isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_publishFrom toString];
            if(dateString)
            {
                dict[@"publishFrom"] = dateString;
            }
        }
        else
        {
        if(_publishFrom != nil) dict[@"publishFrom"] = [(YPObject*)_publishFrom asDictionary];
        }
    }
    if(_publishTo != nil)
    {
        if([_publishTo isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *publishTo in (NSArray*)_publishTo)
            {
                [array addObject:[(YPObject*)publishTo asDictionary]];
            }

            dict[@"publishTo"] = array;
        }
        else if(_publishTo && [_publishTo isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_publishTo toString];
            if(dateString)
            {
                dict[@"publishTo"] = dateString;
            }
        }
        else
        {
        if(_publishTo != nil) dict[@"publishTo"] = [(YPObject*)_publishTo asDictionary];
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


- (YPUser*)getauthorValue:(NSError**)err
{
    if(!_author.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _author;
}


- (NSString*)gettypeValue
{
    return _type;
}


- (NSString*)getsourceTypeValue
{
    return _sourceType;
}


- (NSArray*)getrefDocsValue
{
    return _refDocs;
}


- (NSString*)gettitleValue
{
    return _title;
}


- (NSString*)getrefDocLinkValue
{
    return _refDocLink;
}


- (YPObjectId*)gettargetQueueValue:(NSError**)err
{
    if(!_targetQueue.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _targetQueue;
}


- (NSString*)gettextValue
{
    return _text;
}


- (YPDate*)getpublishFromValue:(NSError**)err
{
    if(!_publishFrom.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _publishFrom;
}


- (YPDate*)getpublishToValue:(NSError**)err
{
    if(!_publishTo.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _publishTo;
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

