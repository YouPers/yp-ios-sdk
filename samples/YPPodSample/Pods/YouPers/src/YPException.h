#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"

@class YPDate;


@interface YPException : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPDate* type;  

- (id) _id: (NSString*) _id
     type: (YPDate*) type;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPDate*)gettypeValue:(NSError**)err;



@end

