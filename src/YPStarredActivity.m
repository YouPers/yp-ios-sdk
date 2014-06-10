#import "YPDate.h"
#import "YPStarredActivity.h"

@implementation YPStarredActivity

-(id)_id: (NSString*) _id
    timestamp: (YPDate*) timestamp
    activity: (YPActivity*) activity

{
    __id = _id;
    _timestamp = timestamp;
    _activity = activity;
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


- (YPActivity*)getactivityValue:(NSError**)err
{
    if(!_activity.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _activity;
}


@end

