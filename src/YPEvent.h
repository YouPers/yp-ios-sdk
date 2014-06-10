#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"

@class YPDate;


@interface YPEvent : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) NSString* status;  

@property(nonatomic) YPDate* begin;  

@property(nonatomic) YPDate* end;  

@property(nonatomic) YPDate* doneTs;  

@property(nonatomic) NSNumber* feedback;  

@property(nonatomic) NSString* comment;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     status: (NSString*) status
     begin: (YPDate*) begin
     end: (YPDate*) end
     doneTs: (YPDate*) doneTs
     feedback: (NSNumber*) feedback
     comment: (NSString*) comment
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (NSString*)getstatusValue;

- (YPDate*)getbeginValue:(NSError**)err;

- (YPDate*)getendValue:(NSError**)err;

- (YPDate*)getdoneTsValue:(NSError**)err;

- (NSNumber*)getfeedbackValue;

- (NSString*)getcommentValue;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

