#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPUser.h"
#import "YPObjectId.h"

@class YPDate;
@class YPUser;
@class YPObjectId;


@interface YPDiaryEntry : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPUser* owner;  

@property(nonatomic) NSString* type;  

@property(nonatomic) NSString* image;  

@property(nonatomic) YPObjectId* refId;  

@property(nonatomic) NSString* text;  

@property(nonatomic) NSString* title;  

@property(nonatomic) NSNumber* feedback;  

@property(nonatomic) YPDate* dateBegin;  

@property(nonatomic) YPDate* dateEnd;  

@property(nonatomic) YPDate* updated;  

@property(nonatomic) YPDate* created;  

- (id) _id: (NSString*) _id
     owner: (YPUser*) owner
     type: (NSString*) type
     image: (NSString*) image
     refId: (YPObjectId*) refId
     text: (NSString*) text
     title: (NSString*) title
     feedback: (NSNumber*) feedback
     dateBegin: (YPDate*) dateBegin
     dateEnd: (YPDate*) dateEnd
     updated: (YPDate*) updated
     created: (YPDate*) created;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPUser*)getownerValue:(NSError**)err;

- (NSString*)gettypeValue;

- (NSString*)getimageValue;

- (YPObjectId*)getrefIdValue:(NSError**)err;

- (NSString*)gettextValue;

- (NSString*)gettitleValue;

- (NSNumber*)getfeedbackValue;

- (YPDate*)getdateBeginValue:(NSError**)err;

- (YPDate*)getdateEndValue:(NSError**)err;

- (YPDate*)getupdatedValue:(NSError**)err;

- (YPDate*)getcreatedValue:(NSError**)err;



@end

