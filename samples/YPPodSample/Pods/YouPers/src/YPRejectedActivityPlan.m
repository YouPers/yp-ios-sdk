#import "YPDate.h"
#import "YPRejectedActivityPlan.h"

@implementation YPRejectedActivityPlan

-(id)_id: (NSString*) _id
    timestamp: (YPDate*) timestamp
    activityPlan: (YPActivityPlan*) activityPlan

{
    __id = _id;
    _timestamp = timestamp;
    _activityPlan = activityPlan;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    id timestamp_dict = dict[@"timestamp"];
        if(timestamp_dict != nil)
        {
            if([timestamp_dict isKindOfClass:[NSString class]])
            {
                _timestamp = [[YPDate alloc]initWithObjectId:timestamp_dict];
            }
            else
            {
                _timestamp = [[YPDate alloc]initWithValues:timestamp_dict];
            }
        }
        id activityPlan_dict = dict[@"activityPlan"];
        if(activityPlan_dict != nil)
        {
            if([activityPlan_dict isKindOfClass:[NSString class]])
            {
                _activityPlan = [[YPActivityPlan alloc]initWithObjectId:activityPlan_dict];
            }
            else
            {
                _activityPlan = [[YPActivityPlan alloc]initWithValues:activityPlan_dict];
            }
        }
        

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
        if(_timestamp != nil)
    {
        if([_timestamp isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *timestamp in (NSArray*)_timestamp)
            {
                [array addObject:[(YPObject*)timestamp asDictionary]];
            }

            dict[@"timestamp"] = array;
        }
        else if(_timestamp && [_timestamp isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_timestamp toString];
            if(dateString)
            {
                dict[@"timestamp"] = dateString;
            }
        }
        else
        {
        if(_timestamp != nil) dict[@"timestamp"] = [(YPObject*)_timestamp asDictionary];
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


- (YPDate*)gettimestampValue:(NSError**)err
{
    if(!_timestamp.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _timestamp;
}


- (YPActivityPlan*)getactivityPlanValue:(NSError**)err
{
    if(!_activityPlan.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _activityPlan;
}


@end

