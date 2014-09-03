#import "YPDate.h"
#import "YPErrorObject.h"

@implementation YPErrorObject

-(id)message: (NSString*) message
    code: (NSString*) code
    stacktrace: (NSString*) stacktrace

{
    _message = message;
    _code = code;
    _stacktrace = stacktrace;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    _message = dict[@"message"];
    _code = dict[@"code"];
    _stacktrace = dict[@"stacktrace"];
    

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_message != nil) dict[@"message"] = _message ;
        if(_code != nil) dict[@"code"] = _code ;
        if(_stacktrace != nil) dict[@"stacktrace"] = _stacktrace ;
        NSDictionary* output = [dict copy];
    return output;
}

/*- (void) createObj:(NSDictionary*)dict {
    NSLog(dict);
}*/

- (NSString*)getmessageValue
{
    return _message;
}


- (NSString*)getcodeValue
{
    return _code;
}


- (NSString*)getstacktraceValue
{
    return _stacktrace;
}


@end

