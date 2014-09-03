#import "YPDate.h"
#import "YPRecommendation.h"

@implementation YPRecommendation

-(id)idea: (YPIdea*) idea
    weight: (NSNumber*) weight

{
    _idea = idea;
    _weight = weight;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
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
        _weight = dict[@"weight"];
    

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
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
    if(_weight != nil) dict[@"weight"] = _weight ;
        NSDictionary* output = [dict copy];
    return output;
}

/*- (void) createObj:(NSDictionary*)dict {
    NSLog(dict);
}*/

- (YPIdea*)getideaValue:(NSError**)err
{
    if(!_idea.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _idea;
}


- (NSNumber*)getweightValue
{
    return _weight;
}


@end

