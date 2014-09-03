#import "YPDate.h"
#import "YPAddress.h"

@implementation YPAddress

-(id)_id: (NSString*) _id
    street: (NSString*) street
    zipCode: (NSString*) zipCode
    city: (NSString*) city

{
    __id = _id;
    _street = street;
    _zipCode = zipCode;
    _city = city;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    _street = dict[@"street"];
    _zipCode = dict[@"zipCode"];
    _city = dict[@"city"];
    

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
        if(_street != nil) dict[@"street"] = _street ;
        if(_zipCode != nil) dict[@"zipCode"] = _zipCode ;
        if(_city != nil) dict[@"city"] = _city ;
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


- (NSString*)getstreetValue
{
    return _street;
}


- (NSString*)getzipCodeValue
{
    return _zipCode;
}


- (NSString*)getcityValue
{
    return _city;
}


@end

