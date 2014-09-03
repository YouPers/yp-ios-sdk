#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPObjectId.h"

@class YPDate;
@class YPObjectId;


@interface YPTargetSpace : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) NSString* type;  

@property(nonatomic) YPObjectId* targetId;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     type: (NSString*) type
     targetId: (YPObjectId*) targetId
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (NSString*)gettypeValue;

- (YPObjectId*)gettargetIdValue:(NSError**)err;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

