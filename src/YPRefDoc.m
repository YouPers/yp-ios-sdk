#import "YPDate.h"
#import "YPRefDoc.h"

@implementation YPRefDoc

-(id)_id: (NSString*) _id
    docId: (YPObjectId*) docId
    model: (NSString*) model
    doc: (NSString*) doc

{
    __id = _id;
    _docId = docId;
    _model = model;
    _doc = doc;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    id docId_dict = dict[@"docId"];
        if(docId_dict != nil)
        {
            if([docId_dict isKindOfClass:[NSString class]])
            {
                _docId = [[YPObjectId alloc]initWithObjectId:docId_dict];
            }
            else
            {
                _docId = [[YPObjectId alloc]initWithValues:docId_dict];
            }
        }
        _model = dict[@"model"];
    _doc = dict[@"doc"];
    

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
        if(_docId != nil)
    {
        if([_docId isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPObjectId *docId in (NSArray*)_docId)
            {
                [array addObject:[(YPObject*)docId asDictionary]];
            }

            dict[@"docId"] = array;
        }
        else if(_docId && [_docId isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_docId toString];
            if(dateString)
            {
                dict[@"docId"] = dateString;
            }
        }
        else
        {
        if(_docId != nil) dict[@"docId"] = [(YPObject*)_docId asDictionary];
        }
    }
    if(_model != nil) dict[@"model"] = _model ;
        if(_doc != nil) dict[@"doc"] = _doc ;
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


- (YPObjectId*)getdocIdValue:(NSError**)err
{
    if(!_docId.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _docId;
}


- (NSString*)getmodelValue
{
    return _model;
}


- (NSString*)getdocValue
{
    return _doc;
}


@end

