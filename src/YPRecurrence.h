#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPEndby.h"
#import "YPDate.h"

@class YPEndby;
@class YPDate;


@interface YPRecurrence : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPEndby* endby;  

@property(nonatomic) NSArray* byday;  

@property(nonatomic) NSNumber* every;  

@property(nonatomic) NSArray* exceptions;  

- (id) _id: (NSString*) _id
     endby: (YPEndby*) endby
     byday: (NSArray*) byday
     every: (NSNumber*) every
     exceptions: (NSArray*) exceptions;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPEndby*)getendbyValue:(NSError**)err;

- (NSArray*)getbydayValue;

- (NSNumber*)geteveryValue;

- (NSArray*)getexceptionsValue;



@end

