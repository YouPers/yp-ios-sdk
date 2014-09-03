#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"

@class YPDate;


@interface YPEndby : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) NSString* type;  

@property(nonatomic) YPDate* on;  

@property(nonatomic) NSNumber* after;  

- (id) _id: (NSString*) _id
     type: (NSString*) type
     on: (YPDate*) on
     after: (NSNumber*) after;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (NSString*)gettypeValue;

- (YPDate*)getonValue:(NSError**)err;

- (NSNumber*)getafterValue;



@end

