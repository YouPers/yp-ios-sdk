#import "YPDate.h"
#import "YPActivityPlan.h"

@implementation YPActivityPlan

-(id)_id: (NSString*) _id
    mainEvent: (YPMainEvent*) mainEvent
    owner: (YPUser*) owner
    activity: (YPActivity*) activity
    joiningUsers: (NSArray*) joiningUsers
    title: (NSString*) title
    text: (NSString*) text
    number: (NSString*) number
    location: (NSString*) location
    source: (NSString*) source
    executionType: (NSString*) executionType
    visibility: (NSString*) visibility
    status: (NSString*) status
    campaign: (YPCampaign*) campaign
    fields: (NSArray*) fields
    masterPlan: (YPActivityPlan*) masterPlan
    deletionReason: (NSString*) deletionReason
    invitedBy: (YPUser*) invitedBy
    events: (NSArray*) events
    updated: (YPDate*) updated
    created: (YPDate*) created

{
    __id = _id;
    _mainEvent = mainEvent;
    _owner = owner;
    _activity = activity;
    _joiningUsers = joiningUsers;
    _title = title;
    _text = text;
    _number = number;
    _location = location;
    _source = source;
    _executionType = executionType;
    _visibility = visibility;
    _status = status;
    _campaign = campaign;
    _fields = fields;
    _masterPlan = masterPlan;
    _deletionReason = deletionReason;
    _invitedBy = invitedBy;
    _events = events;
    _updated = updated;
    _created = created;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    id mainEvent_dict = dict[@"mainEvent"];
        if(mainEvent_dict != nil)
        {
            if([mainEvent_dict isKindOfClass:[NSString class]])
            {
                _mainEvent = [[YPMainEvent alloc]initWithObjectId:mainEvent_dict];
            }
            else
            {
                _mainEvent = [[YPMainEvent alloc]initWithValues:mainEvent_dict];
            }
        }
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
        id joiningUsers_dict = dict[@"joiningUsers"];
        if([joiningUsers_dict isKindOfClass:[NSArray class]])
        {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)joiningUsers_dict count]];

            if([(NSArray*)joiningUsers_dict count] > 0)
            {
            	YPUser* d;
            	
                for (NSDictionary* dict in (NSArray*)joiningUsers_dict)
                {
                    if([dict isKindOfClass:[NSString class]])
                    {
                    	d = [[YPUser alloc] initWithObjectId:(NSString*)dict];
                    }
                    else
                    {
                    	d = [[YPUser alloc] initWithValues:dict];
                    }
                    
                    [objs addObject:d];
                }

                _joiningUsers = [[NSArray alloc] initWithArray:objs];
            }
            else
            {
                _joiningUsers = [[NSArray alloc] init];
            }
        }
        else
        {
            _joiningUsers = [[NSArray alloc] init];
        }
        _title = dict[@"title"];
    _text = dict[@"text"];
    _number = dict[@"number"];
    _location = dict[@"location"];
    _source = dict[@"source"];
    _executionType = dict[@"executionType"];
    _visibility = dict[@"visibility"];
    _status = dict[@"status"];
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
        _fields = dict[@"fields"];
    id masterPlan_dict = dict[@"masterPlan"];
        if(masterPlan_dict != nil)
        {
            if([masterPlan_dict isKindOfClass:[NSString class]])
            {
                _masterPlan = [[YPActivityPlan alloc]initWithObjectId:masterPlan_dict];
            }
            else
            {
                _masterPlan = [[YPActivityPlan alloc]initWithValues:masterPlan_dict];
            }
        }
        _deletionReason = dict[@"deletionReason"];
    id invitedBy_dict = dict[@"invitedBy"];
        if(invitedBy_dict != nil)
        {
            if([invitedBy_dict isKindOfClass:[NSString class]])
            {
                _invitedBy = [[YPUser alloc]initWithObjectId:invitedBy_dict];
            }
            else
            {
                _invitedBy = [[YPUser alloc]initWithValues:invitedBy_dict];
            }
        }
        id events_dict = dict[@"events"];
        if([events_dict isKindOfClass:[NSArray class]])
        {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)events_dict count]];

            if([(NSArray*)events_dict count] > 0)
            {
            	YPEvent* d;
            	
                for (NSDictionary* dict in (NSArray*)events_dict)
                {
                    if([dict isKindOfClass:[NSString class]])
                    {
                    	d = [[YPEvent alloc] initWithObjectId:(NSString*)dict];
                    }
                    else
                    {
                    	d = [[YPEvent alloc] initWithValues:dict];
                    }
                    
                    [objs addObject:d];
                }

                _events = [[NSArray alloc] initWithArray:objs];
            }
            else
            {
                _events = [[NSArray alloc] init];
            }
        }
        else
        {
            _events = [[NSArray alloc] init];
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
        if(_mainEvent != nil)
    {
        if([_mainEvent isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPMainEvent *mainEvent in (NSArray*)_mainEvent)
            {
                [array addObject:[(YPObject*)mainEvent asDictionary]];
            }

            dict[@"mainEvent"] = array;
        }
        else if(_mainEvent && [_mainEvent isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_mainEvent toString];
            if(dateString)
            {
                dict[@"mainEvent"] = dateString;
            }
        }
        else
        {
        if(_mainEvent != nil) dict[@"mainEvent"] = [(YPObject*)_mainEvent asDictionary];
        }
    }
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
    if(_joiningUsers != nil)
    {
        if([_joiningUsers isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPUser *joiningUsers in (NSArray*)_joiningUsers)
            {
                [array addObject:[(YPObject*)joiningUsers asDictionary]];
            }

            dict[@"joiningUsers"] = array;
        }
        else if(_joiningUsers && [_joiningUsers isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_joiningUsers toString];
            if(dateString)
            {
                dict[@"joiningUsers"] = dateString;
            }
        }
        else
        {
        if(_joiningUsers != nil) dict[@"joiningUsers"] = [(YPObject*)_joiningUsers asDictionary];
        }
    }
    if(_title != nil) dict[@"title"] = _title ;
        if(_text != nil) dict[@"text"] = _text ;
        if(_number != nil) dict[@"number"] = _number ;
        if(_location != nil) dict[@"location"] = _location ;
        if(_source != nil) dict[@"source"] = _source ;
        if(_executionType != nil) dict[@"executionType"] = _executionType ;
        if(_visibility != nil) dict[@"visibility"] = _visibility ;
        if(_status != nil) dict[@"status"] = _status ;
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
    if(_fields != nil) dict[@"fields"] = _fields ;
        if(_masterPlan != nil)
    {
        if([_masterPlan isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPActivityPlan *masterPlan in (NSArray*)_masterPlan)
            {
                [array addObject:[(YPObject*)masterPlan asDictionary]];
            }

            dict[@"masterPlan"] = array;
        }
        else if(_masterPlan && [_masterPlan isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_masterPlan toString];
            if(dateString)
            {
                dict[@"masterPlan"] = dateString;
            }
        }
        else
        {
        if(_masterPlan != nil) dict[@"masterPlan"] = [(YPObject*)_masterPlan asDictionary];
        }
    }
    if(_deletionReason != nil) dict[@"deletionReason"] = _deletionReason ;
        if(_invitedBy != nil)
    {
        if([_invitedBy isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPUser *invitedBy in (NSArray*)_invitedBy)
            {
                [array addObject:[(YPObject*)invitedBy asDictionary]];
            }

            dict[@"invitedBy"] = array;
        }
        else if(_invitedBy && [_invitedBy isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_invitedBy toString];
            if(dateString)
            {
                dict[@"invitedBy"] = dateString;
            }
        }
        else
        {
        if(_invitedBy != nil) dict[@"invitedBy"] = [(YPObject*)_invitedBy asDictionary];
        }
    }
    if(_events != nil)
    {
        if([_events isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPEvent *events in (NSArray*)_events)
            {
                [array addObject:[(YPObject*)events asDictionary]];
            }

            dict[@"events"] = array;
        }
        else if(_events && [_events isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_events toString];
            if(dateString)
            {
                dict[@"events"] = dateString;
            }
        }
        else
        {
        if(_events != nil) dict[@"events"] = [(YPObject*)_events asDictionary];
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


- (YPMainEvent*)getmainEventValue:(NSError**)err
{
    if(!_mainEvent.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _mainEvent;
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


- (YPActivity*)getactivityValue:(NSError**)err
{
    if(!_activity.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _activity;
}


- (NSArray*)getjoiningUsersValue
{
    return _joiningUsers;
}


- (NSString*)gettitleValue
{
    return _title;
}


- (NSString*)gettextValue
{
    return _text;
}


- (NSString*)getnumberValue
{
    return _number;
}


- (NSString*)getlocationValue
{
    return _location;
}


- (NSString*)getsourceValue
{
    return _source;
}


- (NSString*)getexecutionTypeValue
{
    return _executionType;
}


- (NSString*)getvisibilityValue
{
    return _visibility;
}


- (NSString*)getstatusValue
{
    return _status;
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


- (NSArray*)getfieldsValue
{
    return _fields;
}


- (YPActivityPlan*)getmasterPlanValue:(NSError**)err
{
    if(!_masterPlan.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _masterPlan;
}


- (NSString*)getdeletionReasonValue
{
    return _deletionReason;
}


- (YPUser*)getinvitedByValue:(NSError**)err
{
    if(!_invitedBy.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _invitedBy;
}


- (NSArray*)geteventsValue
{
    return _events;
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

