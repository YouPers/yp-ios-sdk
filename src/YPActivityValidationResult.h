#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPActivityEvent.h"

@class YPActivityEvent;


@interface YPActivityValidationResult : YPObject

@property(nonatomic) YPActivityEvent* event;  

@property(nonatomic) YPActivityEvent* conflictingEvent;  

- (id) event: (YPActivityEvent*) event
     conflictingEvent: (YPActivityEvent*) conflictingEvent;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (YPActivityEvent*)geteventValue:(NSError**)err;

- (YPActivityEvent*)getconflictingEventValue:(NSError**)err;



@end

