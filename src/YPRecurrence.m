#import "YPDate.h"
#import "YPRecurrence.h"

@implementation YPRecurrence

-(id)_id: (NSString*) _id
    endby: (YPEndby*) endby
    every: (NSNumber*) every
    exceptions: (NSArray*) exceptions

{
    __id = _id;
    _endby = endby;
    _every = every;
    _exceptions = exceptions;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    id endby_dict = dict[@"endby"];
        if(endby_dict != nil)
        {
            if([endby_dict isKindOfClass:[NSString class]])
            {
                _endby = [[YPEndby alloc]initWithObjectId:endby_dict];
            }
            else
            {
                _endby = [[YPEndby alloc]initWithValues:endby_dict];
            }
        }
        _every = dict[@"every"];
    id exceptions_dict = dict[@"exceptions"];
        if([exceptions_dict isKindOfClass:[NSArray class]])
        {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)exceptions_dict count]];

            if([(NSArray*)exceptions_dict count] > 0)
            {
                for (NSDictionary* dict in (NSArray*)exceptions_dict)
                {
                    YPException* d = [[YPException alloc] initWithValues:dict];
                    [objs addObject:d];
                }

                _exceptions = [[NSArray alloc] initWithArray:objs];
            }
            else
            {
                _exceptions = [[NSArray alloc] init];
            }
        }
        else
        {
            _exceptions = [[NSArray alloc] init];
        }
        

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
        if(_endby != nil)
    {
        if([_endby isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPEndby *endby in (NSArray*)_endby)
            {
                [array addObject:[(YPObject*)endby asDictionary]];
            }

            dict[@"endby"] = array;
        }
        else if(_endby && [_endby isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_endby toString];
            if(dateString)
            {
                dict[@"endby"] = dateString;
            }
        }
        else
        {
        if(_endby != nil) dict[@"endby"] = [(YPObject*)_endby asDictionary];
        }
    }
    if(_every != nil) dict[@"every"] = _every ;
        if(_exceptions != nil)
    {
        if([_exceptions isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPException *exceptions in (NSArray*)_exceptions)
            {
                [array addObject:[(YPObject*)exceptions asDictionary]];
            }

            dict[@"exceptions"] = array;
        }
        else if(_exceptions && [_exceptions isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_exceptions toString];
            if(dateString)
            {
                dict[@"exceptions"] = dateString;
            }
        }
        else
        {
        if(_exceptions != nil) dict[@"exceptions"] = [(YPObject*)_exceptions asDictionary];
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


- (YPEndby*)getendbyValue:(NSError**)err
{
    if(!_endby.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _endby;
}


- (NSNumber*)geteveryValue
{
    return _every;
}


- (NSArray*)getexceptionsValue
{
    return _exceptions;
}


@end

