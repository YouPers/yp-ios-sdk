#import "YPDate.h"
#import "YPUsernameEmail.h"

@implementation YPUsernameEmail

-(id)email: (NSString*) email
    username: (NSString*) username

{
    _email = email;
    _username = username;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    _email = dict[@"email"];
    _username = dict[@"username"];
    

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_email != nil) dict[@"email"] = _email ;
        if(_username != nil) dict[@"username"] = _username ;
        NSDictionary* output = [dict copy];
    return output;
}

/*- (void) createObj:(NSDictionary*)dict {
    NSLog(dict);
}*/

- (NSString*)getemailValue
{
    return _email;
}


- (NSString*)getusernameValue
{
    return _username;
}


@end

