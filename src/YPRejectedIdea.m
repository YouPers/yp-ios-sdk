#import "YPDate.h"
#import "YPRejectedIdea.h"

@implementation YPRejectedIdea

-(id)_id: (NSString*) _id
    timestamp: (YPDate*) timestamp
    idea: (YPIdea*) idea

{
    __id = _id;
    _timestamp = timestamp;
    _idea = idea;
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


- (YPIdea*)getideaValue:(NSError**)err
{
    if(!_idea.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _idea;
}


@end

