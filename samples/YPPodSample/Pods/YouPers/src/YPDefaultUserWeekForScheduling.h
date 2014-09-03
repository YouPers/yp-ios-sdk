#import <Foundation/Foundation.h>
#import "YPObject.h"



@interface YPDefaultUserWeekForScheduling : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) NSNumber* monday;  

@property(nonatomic) NSNumber* tuesday;  

@property(nonatomic) NSNumber* wednesday;  

@property(nonatomic) NSNumber* thursday;  

@property(nonatomic) NSNumber* friday;  

@property(nonatomic) NSNumber* saturday;  

@property(nonatomic) NSNumber* sunday;  

- (id) _id: (NSString*) _id
     monday: (NSNumber*) monday
     tuesday: (NSNumber*) tuesday
     wednesday: (NSNumber*) wednesday
     thursday: (NSNumber*) thursday
     friday: (NSNumber*) friday
     saturday: (NSNumber*) saturday
     sunday: (NSNumber*) sunday;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (NSNumber*)getmondayValue;

- (NSNumber*)gettuesdayValue;

- (NSNumber*)getwednesdayValue;

- (NSNumber*)getthursdayValue;

- (NSNumber*)getfridayValue;

- (NSNumber*)getsaturdayValue;

- (NSNumber*)getsundayValue;



@end

