#import "YPObjectId.h"

@implementation YPObjectId

- (id) initWithValues:(NSDictionary*)dict
{
    _isLoaded = TRUE;
    return self;
}

- (NSDictionary*) asDictionary{
    return [NSDictionary init];
}

- (NSString*)description {
    return [NSString stringWithFormat:@"%@ %@", [super description], [self asDictionary]];
}

-(id) initWithObjectId:(NSString*)objectId
{
    _isLoaded = FALSE;

    self = [super init];
    if(self) {
        __idObj = objectId;
    }

    return self;
}

@end
