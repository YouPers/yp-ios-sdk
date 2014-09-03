#import "YPDate.h"
#import "YPMainEvent.h"

@implementation YPMainEvent

-(id)_id: (NSString*) _id
    recurrence: (YPRecurrence*) recurrence
    start: (YPDate*) start
    end: (YPDate*) end
    allDay: (NSNumber*) allDay
    frequency: (NSString*) frequency

{
    __id = _id;
    _recurrence = recurrence;
    _start = start;
    _end = end;
    _allDay = allDay;
    _frequency = frequency;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    id recurrence_dict = dict[@"recurrence"];
        if(recurrence_dict != nil)
        {
            if([recurrence_dict isKindOfClass:[NSString class]])
            {
                _recurrence = [[YPRecurrence alloc]initWithObjectId:recurrence_dict];
            }
            else
            {
                _recurrence = [[YPRecurrence alloc]initWithValues:recurrence_dict];
            }
        }
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
        _allDay = dict[@"allDay"];
    _frequency = dict[@"frequency"];
    

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
        if(_recurrence != nil)
    {
        if([_recurrence isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPRecurrence *recurrence in (NSArray*)_recurrence)
            {
                [array addObject:[(YPObject*)recurrence asDictionary]];
            }

            dict[@"recurrence"] = array;
        }
        else if(_recurrence && [_recurrence isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_recurrence toString];
            if(dateString)
            {
                dict[@"recurrence"] = dateString;
            }
        }
        else
        {
        if(_recurrence != nil) dict[@"recurrence"] = [(YPObject*)_recurrence asDictionary];
        }
    }
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
    if(_allDay != nil) dict[@"allDay"] = _allDay ;
        if(_frequency != nil) dict[@"frequency"] = _frequency ;
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


- (YPRecurrence*)getrecurrenceValue:(NSError**)err
{
    if(!_recurrence.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _recurrence;
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


- (NSNumber*)getallDayValue
{
    return _allDay;
}


- (NSString*)getfrequencyValue
{
    return _frequency;
}


@end

