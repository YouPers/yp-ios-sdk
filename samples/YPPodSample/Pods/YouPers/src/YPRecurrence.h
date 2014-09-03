#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPEndby.h"
#import "YPException.h"

@class YPEndby;
@class YPException;


@interface YPRecurrence : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPEndby* endby;  

@property(nonatomic) NSNumber* every;  

@property(nonatomic) NSArray* exceptions;  

- (id) _id: (NSString*) _id
     endby: (YPEndby*) endby
     every: (NSNumber*) every
     exceptions: (NSArray*) exceptions;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPEndby*)getendbyValue:(NSError**)err;

- (NSNumber*)geteveryValue;

- (NSArray*)getexceptionsValue;



@end

