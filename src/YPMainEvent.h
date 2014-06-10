#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPRecurrence.h"

@class YPDate;
@class YPRecurrence;


@interface YPMainEvent : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPRecurrence* recurrence;  

@property(nonatomic) YPDate* start;  

@property(nonatomic) YPDate* end;  

@property(nonatomic) NSNumber* allDay;  

@property(nonatomic) NSString* frequency;  

- (id) _id: (NSString*) _id
     recurrence: (YPRecurrence*) recurrence
     start: (YPDate*) start
     end: (YPDate*) end
     allDay: (NSNumber*) allDay
     frequency: (NSString*) frequency;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPRecurrence*)getrecurrenceValue:(NSError**)err;

- (YPDate*)getstartValue:(NSError**)err;

- (YPDate*)getendValue:(NSError**)err;

- (NSNumber*)getallDayValue;

- (NSString*)getfrequencyValue;



@end

