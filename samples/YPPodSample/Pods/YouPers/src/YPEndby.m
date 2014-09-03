#import "YPDate.h"
#import "YPEndby.h"

@implementation YPEndby

-(id)_id: (NSString*) _id
    type: (NSString*) type
    on: (YPDate*) on
    after: (NSNumber*) after

{
    __id = _id;
    _type = type;
    _on = on;
    _after = after;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    _type = dict[@"type"];
    id on_dict = dict[@"on"];
        if(on_dict != nil)
        {
            if([on_dict isKindOfClass:[NSString class]])
            {
                _on = [[YPDate alloc]initWithObjectId:on_dict];
            }
            else
            {
                _on = [[YPDate alloc]initWithValues:on_dict];
            }
        }
        _after = dict[@"after"];
    

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
        if(_type != nil) dict[@"type"] = _type ;
        if(_on != nil)
    {
        if([_on isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *on in (NSArray*)_on)
            {
                [array addObject:[(YPObject*)on asDictionary]];
            }

            dict[@"on"] = array;
        }
        else if(_on && [_on isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_on toString];
            if(dateString)
            {
                dict[@"on"] = dateString;
            }
        }
        else
        {
        if(_on != nil) dict[@"on"] = [(YPObject*)_on asDictionary];
        }
    }
    if(_after != nil) dict[@"after"] = _after ;
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


- (NSString*)gettypeValue
{
    return _type;
}


- (YPDate*)getonValue:(NSError**)err
{
    if(!_on.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _on;
}


- (NSNumber*)getafterValue
{
    return _after;
}


@end

