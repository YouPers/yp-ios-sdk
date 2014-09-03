#import "YPDate.h"
#import "YPActivityEvent.h"

@implementation YPActivityEvent

-(id)_id: (NSString*) _id
    owner: (YPUser*) owner
    campaign: (YPCampaign*) campaign
    idea: (YPIdea*) idea
    activity: (YPActivity*) activity
    status: (NSString*) status
    start: (YPDate*) start
    end: (YPDate*) end
    doneTs: (YPDate*) doneTs
    feedback: (NSNumber*) feedback
    comment: (NSString*) comment
    updated: (YPDate*) updated
    created: (YPDate*) created

{
    __id = _id;
    _owner = owner;
    _campaign = campaign;
    _idea = idea;
    _activity = activity;
    _status = status;
    _start = start;
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
        id idea_dict = dict[@"idea"];
        if(idea_dict != nil)
        {
            if([idea_dict isKindOfClass:[NSString class]])
            {
                _idea = [[YPIdea alloc]initWithObjectId:idea_dict];
            }
            else
            {
                _idea = [[YPIdea alloc]initWithValues:idea_dict];
            }
        }
        id activity_dict = dict[@"activity"];
        if(activity_dict != nil)
        {
            if([activity_dict isKindOfClass:[NSString class]])
            {
                _activity = [[YPActivity alloc]initWithObjectId:activity_dict];
            }
            else
            {
                _activity = [[YPActivity alloc]initWithValues:activity_dict];
            }
        }
        _status = dict[@"status"];
    id start_dict = dict[@"start"];
        if(start_dict != nil)
        {
            if([start_dict isKindOfClass:[NSString class]])
            {
                _start = [[YPDate alloc]initWithObjectId:start_dict];
            }
            else
            {
                _start = [[YPDate alloc]initWithValues:start_dict];
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
    if(_idea != nil)
    {
        if([_idea isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPIdea *idea in (NSArray*)_idea)
            {
                [array addObject:[(YPObject*)idea asDictionary]];
            }

            dict[@"idea"] = array;
        }
        else if(_idea && [_idea isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_idea toString];
            if(dateString)
            {
                dict[@"idea"] = dateString;
            }
        }
        else
        {
        if(_idea != nil) dict[@"idea"] = [(YPObject*)_idea asDictionary];
        }
    }
    if(_activity != nil)
    {
        if([_activity isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPActivity *activity in (NSArray*)_activity)
            {
                [array addObject:[(YPObject*)activity asDictionary]];
            }

            dict[@"activity"] = array;
        }
        else if(_activity && [_activity isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_activity toString];
            if(dateString)
            {
                dict[@"activity"] = dateString;
            }
        }
        else
        {
        if(_activity != nil) dict[@"activity"] = [(YPObject*)_activity asDictionary];
        }
    }
    if(_status != nil) dict[@"status"] = _status ;
        if(_start != nil)
    {
        if([_start isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *start in (NSArray*)_start)
            {
                [array addObject:[(YPObject*)start asDictionary]];
            }

            dict[@"start"] = array;
        }
        else if(_start && [_start isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_start toString];
            if(dateString)
            {
                dict[@"start"] = dateString;
            }
        }
        else
        {
        if(_start != nil) dict[@"start"] = [(YPObject*)_start asDictionary];
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


- (YPUser*)getownerValue:(NSError**)err
{
    if(!_owner.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _owner;
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


- (YPIdea*)getideaValue:(NSError**)err
{
    if(!_idea.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _idea;
}


- (YPActivity*)getactivityValue:(NSError**)err
{
    if(!_activity.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _activity;
}


- (NSString*)getstatusValue
{
    return _status;
}


- (YPDate*)getstartValue:(NSError**)err
{
    if(!_start.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _start;
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

