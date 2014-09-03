#import "YPDate.h"
#import "YPActivityInvitationStatusResult.h"

@implementation YPActivityInvitationStatusResult

-(id)user: (YPUser*) user
    status: (NSString*) status

{
    _user = user;
    _status = status;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    id user_dict = dict[@"user"];
        if(user_dict != nil)
        {
            if([user_dict isKindOfClass:[NSString class]])
            {
                _user = [[YPUser alloc]initWithObjectId:user_dict];
            }
            else
            {
                _user = [[YPUser alloc]initWithValues:user_dict];
            }
        }
        _status = dict[@"status"];
    

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_user != nil)
    {
        if([_user isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPUser *user in (NSArray*)_user)
            {
                [array addObject:[(YPObject*)user asDictionary]];
            }

            dict[@"user"] = array;
        }
        else if(_user && [_user isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_user toString];
            if(dateString)
            {
                dict[@"user"] = dateString;
            }
        }
        else
        {
        if(_user != nil) dict[@"user"] = [(YPObject*)_user asDictionary];
        }
    }
    if(_status != nil) dict[@"status"] = _status ;
        NSDictionary* output = [dict copy];
    return output;
}

/*- (void) createObj:(NSDictionary*)dict {
    NSLog(dict);
}*/

- (YPUser*)getuserValue:(NSError**)err
{
    if(!_user.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _user;
}


- (NSString*)getstatusValue
{
    return _status;
}


@end

