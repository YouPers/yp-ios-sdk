#import "YPDate.h"
#import "YPFeedback.h"

@implementation YPFeedback

-(id)_id: (NSString*) _id
    contactInfo: (NSString*) contactInfo
    feedbackCategory: (NSString*) feedbackCategory
    description: (NSString*) description
    navigator: (NSString*) navigator

{
    __id = _id;
    _contactInfo = contactInfo;
    _feedbackCategory = feedbackCategory;
    _description = description;
    _navigator = navigator;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    _contactInfo = dict[@"contactInfo"];
    _feedbackCategory = dict[@"feedbackCategory"];
    _description = dict[@"description"];
    _navigator = dict[@"navigator"];
    

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
        if(_contactInfo != nil) dict[@"contactInfo"] = _contactInfo ;
        if(_feedbackCategory != nil) dict[@"feedbackCategory"] = _feedbackCategory ;
        if(_description != nil) dict[@"description"] = _description ;
        if(_navigator != nil) dict[@"navigator"] = _navigator ;
        NSDictionary* output = [dict copy];
    return output;
}

/*- (void) createObj:(NSDictionary*)dict {
    NSLog(dict);
}*/

- (NSString*)get_idValue
{
    return __id;
}


- (NSString*)getcontactInfoValue
{
    return _contactInfo;
}


- (NSString*)getfeedbackCategoryValue
{
    return _feedbackCategory;
}


- (NSString*)getdescriptionValue
{
    return _description;
}


- (NSString*)getnavigatorValue
{
    return _navigator;
}


@end

