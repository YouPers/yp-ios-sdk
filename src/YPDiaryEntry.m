#import "YPDate.h"
#import "YPDiaryEntry.h"

@implementation YPDiaryEntry

-(id)_id: (NSString*) _id
    owner: (YPUser*) owner
    type: (NSString*) type
    image: (NSString*) image
    refId: (YPObjectId*) refId
    text: (NSString*) text
    title: (NSString*) title
    feedback: (NSNumber*) feedback
    dateBegin: (YPDate*) dateBegin
    dateEnd: (YPDate*) dateEnd
    updated: (YPDate*) updated
    created: (YPDate*) created

{
    __id = _id;
    _owner = owner;
    _type = type;
    _image = image;
    _refId = refId;
    _text = text;
    _title = title;
    _feedback = feedback;
    _dateBegin = dateBegin;
    _dateEnd = dateEnd;
    _updated = updated;
    _created = created;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    id owner_dict = dict[@"owner"];
        if(owner_dict != nil)
        {
            if([owner_dict isKindOfClass:[NSString class]])
            {
                _owner = [[YPUser alloc]initWithObjectId:owner_dict];
            }
            else
            {
                _owner = [[YPUser alloc]initWithValues:owner_dict];
            }
        }
        _type = dict[@"type"];
    _image = dict[@"image"];
    id refId_dict = dict[@"refId"];
        if(refId_dict != nil)
        {
            if([refId_dict isKindOfClass:[NSString class]])
            {
                _refId = [[YPObjectId alloc]initWithObjectId:refId_dict];
            }
            else
            {
                _refId = [[YPObjectId alloc]initWithValues:refId_dict];
            }
        }
        _text = dict[@"text"];
    _title = dict[@"title"];
    _feedback = dict[@"feedback"];
    id dateBegin_dict = dict[@"dateBegin"];
        if(dateBegin_dict != nil)
        {
            if([dateBegin_dict isKindOfClass:[NSString class]])
            {
                _dateBegin = [[YPDate alloc]initWithObjectId:dateBegin_dict];
            }
            else
            {
                _dateBegin = [[YPDate alloc]initWithValues:dateBegin_dict];
            }
        }
        id dateEnd_dict = dict[@"dateEnd"];
        if(dateEnd_dict != nil)
        {
            if([dateEnd_dict isKindOfClass:[NSString class]])
            {
                _dateEnd = [[YPDate alloc]initWithObjectId:dateEnd_dict];
            }
            else
            {
                _dateEnd = [[YPDate alloc]initWithValues:dateEnd_dict];
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
        if(_owner != nil)
    {
        if([_owner isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPUser *owner in (NSArray*)_owner)
            {
                [array addObject:[(YPObject*)owner asDictionary]];
            }

            dict[@"owner"] = array;
        }
        else if(_owner && [_owner isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_owner toString];
            if(dateString)
            {
                dict[@"owner"] = dateString;
            }
        }
        else
        {
        if(_owner != nil) dict[@"owner"] = [(YPObject*)_owner asDictionary];
        }
    }
    if(_type != nil) dict[@"type"] = _type ;
        if(_image != nil) dict[@"image"] = _image ;
        if(_refId != nil)
    {
        if([_refId isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPObjectId *refId in (NSArray*)_refId)
            {
                [array addObject:[(YPObject*)refId asDictionary]];
            }

            dict[@"refId"] = array;
        }
        else if(_refId && [_refId isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_refId toString];
            if(dateString)
            {
                dict[@"refId"] = dateString;
            }
        }
        else
        {
        if(_refId != nil) dict[@"refId"] = [(YPObject*)_refId asDictionary];
        }
    }
    if(_text != nil) dict[@"text"] = _text ;
        if(_title != nil) dict[@"title"] = _title ;
        if(_feedback != nil) dict[@"feedback"] = _feedback ;
        if(_dateBegin != nil)
    {
        if([_dateBegin isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *dateBegin in (NSArray*)_dateBegin)
            {
                [array addObject:[(YPObject*)dateBegin asDictionary]];
            }

            dict[@"dateBegin"] = array;
        }
        else if(_dateBegin && [_dateBegin isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_dateBegin toString];
            if(dateString)
            {
                dict[@"dateBegin"] = dateString;
            }
        }
        else
        {
        if(_dateBegin != nil) dict[@"dateBegin"] = [(YPObject*)_dateBegin asDictionary];
        }
    }
    if(_dateEnd != nil)
    {
        if([_dateEnd isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *dateEnd in (NSArray*)_dateEnd)
            {
                [array addObject:[(YPObject*)dateEnd asDictionary]];
            }

            dict[@"dateEnd"] = array;
        }
        else if(_dateEnd && [_dateEnd isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_dateEnd toString];
            if(dateString)
            {
                dict[@"dateEnd"] = dateString;
            }
        }
        else
        {
        if(_dateEnd != nil) dict[@"dateEnd"] = [(YPObject*)_dateEnd asDictionary];
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


- (YPUser*)getownerValue:(NSError**)err
{
    if(!_owner.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _owner;
}


- (NSString*)gettypeValue
{
    return _type;
}


- (NSString*)getimageValue
{
    return _image;
}


- (YPObjectId*)getrefIdValue:(NSError**)err
{
    if(!_refId.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _refId;
}


- (NSString*)gettextValue
{
    return _text;
}


- (NSString*)gettitleValue
{
    return _title;
}


- (NSNumber*)getfeedbackValue
{
    return _feedback;
}


- (YPDate*)getdateBeginValue:(NSError**)err
{
    if(!_dateBegin.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _dateBegin;
}


- (YPDate*)getdateEndValue:(NSError**)err
{
    if(!_dateEnd.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _dateEnd;
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

