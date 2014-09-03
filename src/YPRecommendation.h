#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPIdea.h"

@class YPIdea;


@interface YPRecommendation : YPObject

@property(nonatomic) YPIdea* idea;  

@property(nonatomic) NSNumber* weight;  

- (id) idea: (YPIdea*) idea
     weight: (NSNumber*) weight;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (YPIdea*)getideaValue:(NSError**)err;

- (NSNumber*)getweightValue;



@end

