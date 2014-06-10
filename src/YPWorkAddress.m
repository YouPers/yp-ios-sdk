#import "YPDate.h"
#import "YPWorkAddress.h"

@implementation YPWorkAddress

-(id)_id: (NSString*) _id
    street: (NSString*) street
    houseNumber: (NSString*) houseNumber
    zipCode: (NSNumber*) zipCode
    city: (NSString*) city
    country: (NSString*) country

{
    __id = _id;
    _street = street;
    _houseNumber = houseNumber;
    _zipCode = zipCode;
    _city = city;
    _country = country;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    _street = dict[@"street"];
    _houseNumber = dict[@"houseNumber"];
    _zipCode = dict[@"zipCode"];
    _city = dict[@"city"];
    _country = dict[@"country"];
    

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
        if(_street != nil) dict[@"street"] = _street ;
        if(_houseNumber != nil) dict[@"houseNumber"] = _houseNumber ;
        if(_zipCode != nil) dict[@"zipCode"] = _zipCode ;
        if(_city != nil) dict[@"city"] = _city ;
        if(_country != nil) dict[@"country"] = _country ;
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


- (NSString*)gethouseNumberValue
{
    return _houseNumber;
}


- (NSNumber*)getzipCodeValue
{
    return _zipCode;
}


- (NSString*)getcityValue
{
    return _city;
}


- (NSString*)getcountryValue
{
    return _country;
}


@end

