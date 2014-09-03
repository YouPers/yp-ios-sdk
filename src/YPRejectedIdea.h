#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPIdea.h"

@class YPDate;
@class YPIdea;


@interface YPRejectedIdea : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPDate* timestamp;  

@property(nonatomic) YPIdea* idea;  

- (id) _id: (NSString*) _id
     timestamp: (YPDate*) timestamp
     idea: (YPIdea*) idea;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPDate*)gettimestampValue:(NSError**)err;

- (YPIdea*)getideaValue:(NSError**)err;



@end

