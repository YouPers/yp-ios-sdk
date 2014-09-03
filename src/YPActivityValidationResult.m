#import "YPDate.h"
#import "YPActivityValidationResult.h"

@implementation YPActivityValidationResult

-(id)event: (YPActivityEvent*) event
    conflictingEvent: (YPActivityEvent*) conflictingEvent

{
    _event = event;
    _conflictingEvent = conflictingEvent;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    id event_dict = dict[@"event"];
        if(event_dict != nil)
        {
            if([event_dict isKindOfClass:[NSString class]])
            {
                _event = [[YPActivityEvent alloc]initWithObjectId:event_dict];
            }
            else
            {
                _event = [[YPActivityEvent alloc]initWithValues:event_dict];
            }
        }
        id conflictingEvent_dict = dict[@"conflictingEvent"];
        if(conflictingEvent_dict != nil)
        {
            if([conflictingEvent_dict isKindOfClass:[NSString class]])
            {
                _conflictingEvent = [[YPActivityEvent alloc]initWithObjectId:conflictingEvent_dict];
            }
            else
            {
                _conflictingEvent = [[YPActivityEvent alloc]initWithValues:conflictingEvent_dict];
            }
        }
        

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_event != nil)
    {
        if([_event isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPActivityEvent *event in (NSArray*)_event)
            {
                [array addObject:[(YPObject*)event asDictionary]];
            }

            dict[@"event"] = array;
        }
        else if(_event && [_event isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_event toString];
            if(dateString)
            {
                dict[@"event"] = dateString;
            }
        }
        else
        {
        if(_event != nil) dict[@"event"] = [(YPObject*)_event asDictionary];
        }
    }
    if(_conflictingEvent != nil)
    {
        if([_conflictingEvent isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPActivityEvent *conflictingEvent in (NSArray*)_conflictingEvent)
            {
                [array addObject:[(YPObject*)conflictingEvent asDictionary]];
            }

            dict[@"conflictingEvent"] = array;
        }
        else if(_conflictingEvent && [_conflictingEvent isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_conflictingEvent toString];
            if(dateString)
            {
                dict[@"conflictingEvent"] = dateString;
            }
        }
        else
        {
        if(_conflictingEvent != nil) dict[@"conflictingEvent"] = [(YPObject*)_conflictingEvent asDictionary];
        }
    }
    NSDictionary* output = [dict copy];
    return output;
}

/*- (void) createObj:(NSDictionary*)dict {
    NSLog(dict);
}*/

- (YPActivityEvent*)geteventValue:(NSError**)err
{
    if(!_event.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _event;
}


- (YPActivityEvent*)getconflictingEventValue:(NSError**)err
{
    if(!_conflictingEvent.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _conflictingEvent;
}


@end

