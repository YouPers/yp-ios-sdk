#import "YPDate.h"
#import "YPDefaultUserWeekForScheduling.h"

@implementation YPDefaultUserWeekForScheduling

-(id)_id: (NSString*) _id
    monday: (NSNumber*) monday
    tuesday: (NSNumber*) tuesday
    wednesday: (NSNumber*) wednesday
    thursday: (NSNumber*) thursday
    friday: (NSNumber*) friday
    saturday: (NSNumber*) saturday
    sunday: (NSNumber*) sunday

{
    __id = _id;
    _monday = monday;
    _tuesday = tuesday;
    _wednesday = wednesday;
    _thursday = thursday;
    _friday = friday;
    _saturday = saturday;
    _sunday = sunday;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    _monday = dict[@"monday"];
    _tuesday = dict[@"tuesday"];
    _wednesday = dict[@"wednesday"];
    _thursday = dict[@"thursday"];
    _friday = dict[@"friday"];
    _saturday = dict[@"saturday"];
    _sunday = dict[@"sunday"];
    

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
        if(_monday != nil) dict[@"monday"] = _monday ;
        if(_tuesday != nil) dict[@"tuesday"] = _tuesday ;
        if(_wednesday != nil) dict[@"wednesday"] = _wednesday ;
        if(_thursday != nil) dict[@"thursday"] = _thursday ;
        if(_friday != nil) dict[@"friday"] = _friday ;
        if(_saturday != nil) dict[@"saturday"] = _saturday ;
        if(_sunday != nil) dict[@"sunday"] = _sunday ;
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


- (NSNumber*)getmondayValue
{
    return _monday;
}


- (NSNumber*)gettuesdayValue
{
    return _tuesday;
}


- (NSNumber*)getwednesdayValue
{
    return _wednesday;
}


- (NSNumber*)getthursdayValue
{
    return _thursday;
}


- (NSNumber*)getfridayValue
{
    return _friday;
}


- (NSNumber*)getsaturdayValue
{
    return _saturday;
}


- (NSNumber*)getsundayValue
{
    return _sunday;
}


@end

