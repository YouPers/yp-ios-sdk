#import "YPDate.h"
#import "YPI18nString.h"

@implementation YPI18nString

-(id)_id: (NSString*) _id
    de: (NSString*) de
    en: (NSString*) en
    fr: (NSString*) fr
    it: (NSString*) it

{
    __id = _id;
    _de = de;
    _en = en;
    _fr = fr;
    _it = it;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    _de = dict[@"de"];
    _en = dict[@"en"];
    _fr = dict[@"fr"];
    _it = dict[@"it"];
    

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
        if(_de != nil) dict[@"de"] = _de ;
        if(_en != nil) dict[@"en"] = _en ;
        if(_fr != nil) dict[@"fr"] = _fr ;
        if(_it != nil) dict[@"it"] = _it ;
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


- (NSString*)getdeValue
{
    return _de;
}


- (NSString*)getenValue
{
    return _en;
}


- (NSString*)getfrValue
{
    return _fr;
}


- (NSString*)getitValue
{
    return _it;
}


@end

