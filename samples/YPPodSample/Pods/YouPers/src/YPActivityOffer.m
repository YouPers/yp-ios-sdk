#import "YPDate.h"
#import "YPActivityOffer.h"

@implementation YPActivityOffer

-(id)_id: (NSString*) _id
    activity: (YPActivity*) activity
    activityPlan: (NSArray*) activityPlan
    offerType: (NSArray*) offerType
    targetQueue: (YPObjectId*) targetQueue
    recommendedBy: (NSArray*) recommendedBy
    prio: (NSArray*) prio
    validFrom: (YPDate*) validFrom
    validTo: (YPDate*) validTo
    updated: (YPDate*) updated
    created: (YPDate*) created

{
    __id = _id;
    _activity = activity;
    _activityPlan = activityPlan;
    _offerType = offerType;
    _targetQueue = targetQueue;
    _recommendedBy = recommendedBy;
    _prio = prio;
    _validFrom = validFrom;
    _validTo = validTo;
    _updated = updated;
    _created = created;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
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
        id activityPlan_dict = dict[@"activityPlan"];
        if([activityPlan_dict isKindOfClass:[NSArray class]])
        {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)activityPlan_dict count]];

            if([(NSArray*)activityPlan_dict count] > 0)
            {
                for (NSDictionary* dict in (NSArray*)activityPlan_dict)
                {
                    YPActivityPlan* d = [[YPActivityPlan alloc] initWithValues:dict];
                    [objs addObject:d];
                }

                _activityPlan = [[NSArray alloc] initWithArray:objs];
            }
            else
            {
                _activityPlan = [[NSArray alloc] init];
            }
        }
        else
        {
            _activityPlan = [[NSArray alloc] init];
        }
        _offerType = dict[@"offerType"];
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
        id recommendedBy_dict = dict[@"recommendedBy"];
        if([recommendedBy_dict isKindOfClass:[NSArray class]])
        {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)recommendedBy_dict count]];

            if([(NSArray*)recommendedBy_dict count] > 0)
            {
                for (NSDictionary* dict in (NSArray*)recommendedBy_dict)
                {
                    YPUser* d = [[YPUser alloc] initWithValues:dict];
                    [objs addObject:d];
                }

                _recommendedBy = [[NSArray alloc] initWithArray:objs];
            }
            else
            {
                _recommendedBy = [[NSArray alloc] init];
            }
        }
        else
        {
            _recommendedBy = [[NSArray alloc] init];
        }
        _prio = dict[@"prio"];
    id validFrom_dict = dict[@"validFrom"];
        if(validFrom_dict != nil)
        {
            if([validFrom_dict isKindOfClass:[NSString class]])
            {
                _validFrom = [[YPDate alloc]initWithObjectId:validFrom_dict];
            }
            else
            {
                _validFrom = [[YPDate alloc]initWithValues:validFrom_dict];
            }
        }
        id validTo_dict = dict[@"validTo"];
        if(validTo_dict != nil)
        {
            if([validTo_dict isKindOfClass:[NSString class]])
            {
                _validTo = [[YPDate alloc]initWithObjectId:validTo_dict];
            }
            else
            {
                _validTo = [[YPDate alloc]initWithValues:validTo_dict];
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
    if(_activityPlan != nil)
    {
        if([_activityPlan isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPActivityPlan *activityPlan in (NSArray*)_activityPlan)
            {
                [array addObject:[(YPObject*)activityPlan asDictionary]];
            }

            dict[@"activityPlan"] = array;
        }
        else if(_activityPlan && [_activityPlan isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_activityPlan toString];
            if(dateString)
            {
                dict[@"activityPlan"] = dateString;
            }
        }
        else
        {
        if(_activityPlan != nil) dict[@"activityPlan"] = [(YPObject*)_activityPlan asDictionary];
        }
    }
    if(_offerType != nil) dict[@"offerType"] = _offerType ;
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
    if(_recommendedBy != nil)
    {
        if([_recommendedBy isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPUser *recommendedBy in (NSArray*)_recommendedBy)
            {
                [array addObject:[(YPObject*)recommendedBy asDictionary]];
            }

            dict[@"recommendedBy"] = array;
        }
        else if(_recommendedBy && [_recommendedBy isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_recommendedBy toString];
            if(dateString)
            {
                dict[@"recommendedBy"] = dateString;
            }
        }
        else
        {
        if(_recommendedBy != nil) dict[@"recommendedBy"] = [(YPObject*)_recommendedBy asDictionary];
        }
    }
    if(_prio != nil) dict[@"prio"] = _prio ;
        if(_validFrom != nil)
    {
        if([_validFrom isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *validFrom in (NSArray*)_validFrom)
            {
                [array addObject:[(YPObject*)validFrom asDictionary]];
            }

            dict[@"validFrom"] = array;
        }
        else if(_validFrom && [_validFrom isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_validFrom toString];
            if(dateString)
            {
                dict[@"validFrom"] = dateString;
            }
        }
        else
        {
        if(_validFrom != nil) dict[@"validFrom"] = [(YPObject*)_validFrom asDictionary];
        }
    }
    if(_validTo != nil)
    {
        if([_validTo isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *validTo in (NSArray*)_validTo)
            {
                [array addObject:[(YPObject*)validTo asDictionary]];
            }

            dict[@"validTo"] = array;
        }
        else if(_validTo && [_validTo isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_validTo toString];
            if(dateString)
            {
                dict[@"validTo"] = dateString;
            }
        }
        else
        {
        if(_validTo != nil) dict[@"validTo"] = [(YPObject*)_validTo asDictionary];
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


- (YPActivity*)getactivityValue:(NSError**)err
{
    if(!_activity.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _activity;
}


- (NSArray*)getactivityPlanValue
{
    return _activityPlan;
}


- (NSArray*)getofferTypeValue
{
    return _offerType;
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


- (NSArray*)getrecommendedByValue
{
    return _recommendedBy;
}


- (NSArray*)getprioValue
{
    return _prio;
}


- (YPDate*)getvalidFromValue:(NSError**)err
{
    if(!_validFrom.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _validFrom;
}


- (YPDate*)getvalidToValue:(NSError**)err
{
    if(!_validTo.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _validTo;
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

