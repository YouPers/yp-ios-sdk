#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPObjectId.h"

@class YPObjectId;


@interface YPRefDoc : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPObjectId* docId;  

@property(nonatomic) NSString* model;  

- (id) _id: (NSString*) _id
     docId: (YPObjectId*) docId
     model: (NSString*) model;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPObjectId*)getdocIdValue:(NSError**)err;

- (NSString*)getmodelValue;



@end

