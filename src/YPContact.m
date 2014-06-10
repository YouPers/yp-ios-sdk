#import "YPDate.h"
#import "YPContact.h"

@implementation YPContact

-(id)_id: (NSString*) _id
    firstname: (NSString*) firstname
    lastname: (NSString*) lastname
    position: (NSString*) position
    email: (NSString*) email
    phone: (NSString*) phone

{
    __id = _id;
    _firstname = firstname;
    _lastname = lastname;
    _position = position;
    _email = email;
    _phone = phone;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    _firstname = dict[@"firstname"];
    _lastname = dict[@"lastname"];
    _position = dict[@"position"];
    _email = dict[@"email"];
    _phone = dict[@"phone"];
    

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
        if(_firstname != nil) dict[@"firstname"] = _firstname ;
        if(_lastname != nil) dict[@"lastname"] = _lastname ;
        if(_position != nil) dict[@"position"] = _position ;
        if(_email != nil) dict[@"email"] = _email ;
        if(_phone != nil) dict[@"phone"] = _phone ;
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


- (NSString*)getfirstnameValue
{
    return _firstname;
}


- (NSString*)getlastnameValue
{
    return _lastname;
}


- (NSString*)getpositionValue
{
    return _position;
}


- (NSString*)getemailValue
{
    return _email;
}


- (NSString*)getphoneValue
{
    return _phone;
}


@end

