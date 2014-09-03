#import "YPDate.h"
#import "YPException.h"

@implementation YPException

-(id)_id: (NSString*) _id
    type: (YPDate*) type

{
    __id = _id;
    _type = type;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    id type_dict = dict[@"type"];
        if(type_dict != nil)
        {
            if([type_dict isKindOfClass:[NSString class]])
            {
                _type = [[YPDate alloc]initWithObjectId:type_dict];
            }
            else
            {
                _type = [[YPDate alloc]initWithValues:type_dict];
            }
        }
        

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
        if(_type != nil)
    {
        if([_type isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *type in (NSArray*)_type)
            {
                [array addObject:[(YPObject*)type asDictionary]];
            }

            dict[@"type"] = array;
        }
        else if(_type && [_type isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_type toString];
            if(dateString)
            {
                dict[@"type"] = dateString;
            }
        }
        else
        {
        if(_type != nil) dict[@"type"] = [(YPObject*)_type asDictionary];
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


- (YPDate*)gettypeValue:(NSError**)err
{
    if(!_type.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _type;
}


@end

