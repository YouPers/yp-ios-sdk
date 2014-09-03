#import "YPDate.h"
#import "YPEvent.h"

@implementation YPEvent

-(id)_id: (NSString*) _id
    status: (NSString*) status
    begin: (YPDate*) begin
    end: (YPDate*) end
    doneTs: (YPDate*) doneTs
    feedback: (NSNumber*) feedback
    comment: (NSString*) comment
    updated: (YPDate*) updated
    created: (YPDate*) created

{
    __id = _id;
    _status = status;
    _begin = begin;
    _end = end;
    _doneTs = doneTs;
    _feedback = feedback;
    _comment = comment;
    _updated = updated;
    _created = created;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    _status = dict[@"status"];
    id begin_dict = dict[@"begin"];
        if(begin_dict != nil)
        {
            if([begin_dict isKindOfClass:[NSString class]])
            {
                _begin = [[YPDate alloc]initWithObjectId:begin_dict];
            }
            else
            {
                _begin = [[YPDate alloc]initWithValues:begin_dict];
            }
        }
        id end_dict = dict[@"end"];
        if(end_dict != nil)
        {
            if([end_dict isKindOfClass:[NSString class]])
            {
                _end = [[YPDate alloc]initWithObjectId:end_dict];
            }
            else
            {
                _end = [[YPDate alloc]initWithValues:end_dict];
            }
        }
        id doneTs_dict = dict[@"doneTs"];
        if(doneTs_dict != nil)
        {
            if([doneTs_dict isKindOfClass:[NSString class]])
            {
                _doneTs = [[YPDate alloc]initWithObjectId:doneTs_dict];
            }
            else
            {
                _doneTs = [[YPDate alloc]initWithValues:doneTs_dict];
            }
        }
        _feedback = dict[@"feedback"];
    _comment = dict[@"comment"];
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
        if(_status != nil) dict[@"status"] = _status ;
        if(_begin != nil)
    {
        if([_begin isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *begin in (NSArray*)_begin)
            {
                [array addObject:[(YPObject*)begin asDictionary]];
            }

            dict[@"begin"] = array;
        }
        else if(_begin && [_begin isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_begin toString];
            if(dateString)
            {
                dict[@"begin"] = dateString;
            }
        }
        else
        {
        if(_begin != nil) dict[@"begin"] = [(YPObject*)_begin asDictionary];
        }
    }
    if(_end != nil)
    {
        if([_end isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *end in (NSArray*)_end)
            {
                [array addObject:[(YPObject*)end asDictionary]];
            }

            dict[@"end"] = array;
        }
        else if(_end && [_end isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_end toString];
            if(dateString)
            {
                dict[@"end"] = dateString;
            }
        }
        else
        {
        if(_end != nil) dict[@"end"] = [(YPObject*)_end asDictionary];
        }
    }
    if(_doneTs != nil)
    {
        if([_doneTs isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *doneTs in (NSArray*)_doneTs)
            {
                [array addObject:[(YPObject*)doneTs asDictionary]];
            }

            dict[@"doneTs"] = array;
        }
        else if(_doneTs && [_doneTs isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_doneTs toString];
            if(dateString)
            {
                dict[@"doneTs"] = dateString;
            }
        }
        else
        {
        if(_doneTs != nil) dict[@"doneTs"] = [(YPObject*)_doneTs asDictionary];
        }
    }
    if(_feedback != nil) dict[@"feedback"] = _feedback ;
        if(_comment != nil) dict[@"comment"] = _comment ;
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


- (NSString*)getstatusValue
{
    return _status;
}


- (YPDate*)getbeginValue:(NSError**)err
{
    if(!_begin.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _begin;
}


- (YPDate*)getendValue:(NSError**)err
{
    if(!_end.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _end;
}


- (YPDate*)getdoneTsValue:(NSError**)err
{
    if(!_doneTs.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _doneTs;
}


- (NSNumber*)getfeedbackValue
{
    return _feedback;
}


- (NSString*)getcommentValue
{
    return _comment;
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

