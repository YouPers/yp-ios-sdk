#import <Foundation/Foundation.h>
#import "YPObject.h"

@interface YPDate : YPObject {
@private
    NSDate *_date;
}
@property(nonatomic, readonly) NSDate* date;

- (id) initWithValues: (NSString*)input;
-(NSString*) toString;
@end