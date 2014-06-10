#import "YPDate.h"
#import "YPEmail.h"

@implementation YPEmail

-(id)_id: (NSString*) _id
    iCalInvites: (NSNumber*) iCalInvites
    actPlanInvites: (NSNumber*) actPlanInvites
    dailyUserMail: (NSNumber*) dailyUserMail

{
    __id = _id;
    _iCalInvites = iCalInvites;
    _actPlanInvites = actPlanInvites;
    _dailyUserMail = dailyUserMail;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    _iCalInvites = dict[@"iCalInvites"];
    _actPlanInvites = dict[@"actPlanInvites"];
    _dailyUserMail = dict[@"dailyUserMail"];
    

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
        if(_iCalInvites != nil) dict[@"iCalInvites"] = _iCalInvites ;
        if(_actPlanInvites != nil) dict[@"actPlanInvites"] = _actPlanInvites ;
        if(_dailyUserMail != nil) dict[@"dailyUserMail"] = _dailyUserMail ;
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


- (NSNumber*)getiCalInvitesValue
{
    return _iCalInvites;
}


- (NSNumber*)getactPlanInvitesValue
{
    return _actPlanInvites;
}


- (NSNumber*)getdailyUserMailValue
{
    return _dailyUserMail;
}


@end

