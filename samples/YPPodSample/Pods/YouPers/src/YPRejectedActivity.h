#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPActivity.h"

@class YPDate;
@class YPActivity;


@interface YPRejectedActivity : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPDate* timestamp;  

@property(nonatomic) YPActivity* activity;  

- (id) _id: (NSString*) _id
     timestamp: (YPDate*) timestamp
     activity: (YPActivity*) activity;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPDate*)gettimestampValue:(NSError**)err;

- (YPActivity*)getactivityValue:(NSError**)err;



@end

