#import "YPDate.h"
#import "YPAssessmentResult.h"

@implementation YPAssessmentResult

-(id)_id: (NSString*) _id
    owner: (YPUser*) owner
    campaign: (YPCampaign*) campaign
    assessment: (YPAssessment*) assessment
    dirty: (NSNumber*) dirty
    answers: (NSArray*) answers
    needForAction: (NSString*) needForAction
    updated: (YPDate*) updated
    created: (YPDate*) created

{
    __id = _id;
    _owner = owner;
    _campaign = campaign;
    _assessment = assessment;
    _dirty = dirty;
    _answers = answers;
    _needForAction = needForAction;
    _updated = updated;
    _created = created;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    id owner_dict = dict[@"owner"];
        if(owner_dict != nil)
        {
            if([owner_dict isKindOfClass:[NSString class]])
            {
                _owner = [[YPUser alloc]initWithObjectId:owner_dict];
            }
            else
            {
                _owner = [[YPUser alloc]initWithValues:owner_dict];
            }
        }
        id campaign_dict = dict[@"campaign"];
        if(campaign_dict != nil)
        {
            if([campaign_dict isKindOfClass:[NSString class]])
            {
                _campaign = [[YPCampaign alloc]initWithObjectId:campaign_dict];
            }
            else
            {
                _campaign = [[YPCampaign alloc]initWithValues:campaign_dict];
            }
        }
        id assessment_dict = dict[@"assessment"];
        if(assessment_dict != nil)
        {
            if([assessment_dict isKindOfClass:[NSString class]])
            {
                _assessment = [[YPAssessment alloc]initWithObjectId:assessment_dict];
            }
            else
            {
                _assessment = [[YPAssessment alloc]initWithValues:assessment_dict];
            }
        }
        _dirty = dict[@"dirty"];
    id answers_dict = dict[@"answers"];
        if([answers_dict isKindOfClass:[NSArray class]])
        {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)answers_dict count]];

            if([(NSArray*)answers_dict count] > 0)
            {
                for (NSDictionary* dict in (NSArray*)answers_dict)
                {
                    YPAnswer* d = [[YPAnswer alloc] initWithValues:dict];
                    [objs addObject:d];
                }

                _answers = [[NSArray alloc] initWithArray:objs];
            }
            else
            {
                _answers = [[NSArray alloc] init];
            }
        }
        else
        {
            _answers = [[NSArray alloc] init];
        }
        _needForAction = dict[@"needForAction"];
    id updated_dict = dict[@"updated"];
        if(updated_dict != nil)
        {
            if([updated_dict isKindOfClass:[NSString class]])
            {
                _updated = [[YPDate alloc]initWithObjectId:updated_dict];
            }
            else
            {
                _updated = [[YPDate alloc]initWithValues:updated_dict];
            }
        }
        id created_dict = dict[@"created"];
        if(created_dict != nil)
        {
            if([created_dict isKindOfClass:[NSString class]])
            {
                _created = [[YPDate alloc]initWithObjectId:created_dict];
            }
            else
            {
                _created = [[YPDate alloc]initWithValues:created_dict];
            }
        }
        

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
        if(_owner != nil)
    {
        if([_owner isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPUser *owner in (NSArray*)_owner)
            {
                [array addObject:[(YPObject*)owner asDictionary]];
            }

            dict[@"owner"] = array;
        }
        else if(_owner && [_owner isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_owner toString];
            if(dateString)
            {
                dict[@"owner"] = dateString;
            }
        }
        else
        {
        if(_owner != nil) dict[@"owner"] = [(YPObject*)_owner asDictionary];
        }
    }
    if(_campaign != nil)
    {
        if([_campaign isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPCampaign *campaign in (NSArray*)_campaign)
            {
                [array addObject:[(YPObject*)campaign asDictionary]];
            }

            dict[@"campaign"] = array;
        }
        else if(_campaign && [_campaign isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_campaign toString];
            if(dateString)
            {
                dict[@"campaign"] = dateString;
            }
        }
        else
        {
        if(_campaign != nil) dict[@"campaign"] = [(YPObject*)_campaign asDictionary];
        }
    }
    if(_assessment != nil)
    {
        if([_assessment isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPAssessment *assessment in (NSArray*)_assessment)
            {
                [array addObject:[(YPObject*)assessment asDictionary]];
            }

            dict[@"assessment"] = array;
        }
        else if(_assessment && [_assessment isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_assessment toString];
            if(dateString)
            {
                dict[@"assessment"] = dateString;
            }
        }
        else
        {
        if(_assessment != nil) dict[@"assessment"] = [(YPObject*)_assessment asDictionary];
        }
    }
    if(_dirty != nil) dict[@"dirty"] = _dirty ;
        if(_answers != nil)
    {
        if([_answers isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPAnswer *answers in (NSArray*)_answers)
            {
                [array addObject:[(YPObject*)answers asDictionary]];
            }

            dict[@"answers"] = array;
        }
        else if(_answers && [_answers isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_answers toString];
            if(dateString)
            {
                dict[@"answers"] = dateString;
            }
        }
        else
        {
        if(_answers != nil) dict[@"answers"] = [(YPObject*)_answers asDictionary];
        }
    }
    if(_needForAction != nil) dict[@"needForAction"] = _needForAction ;
        if(_updated != nil)
    {
        if([_updated isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *updated in (NSArray*)_updated)
            {
                [array addObject:[(YPObject*)updated asDictionary]];
            }

            dict[@"updated"] = array;
        }
        else if(_updated && [_updated isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_updated toString];
            if(dateString)
            {
                dict[@"updated"] = dateString;
            }
        }
        else
        {
        if(_updated != nil) dict[@"updated"] = [(YPObject*)_updated asDictionary];
        }
    }
    if(_created != nil)
    {
        if([_created isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *created in (NSArray*)_created)
            {
                [array addObject:[(YPObject*)created asDictionary]];
            }

            dict[@"created"] = array;
        }
        else if(_created && [_created isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_created toString];
            if(dateString)
            {
                dict[@"created"] = dateString;
            }
        }
        else
        {
        if(_created != nil) dict[@"created"] = [(YPObject*)_created asDictionary];
        }
    }
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


- (YPUser*)getownerValue:(NSError**)err
{
    if(!_owner.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _owner;
}


- (YPCampaign*)getcampaignValue:(NSError**)err
{
    if(!_campaign.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _campaign;
}


- (YPAssessment*)getassessmentValue:(NSError**)err
{
    if(!_assessment.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _assessment;
}


- (NSNumber*)getdirtyValue
{
    return _dirty;
}


- (NSArray*)getanswersValue
{
    return _answers;
}


- (NSString*)getneedForActionValue
{
    return _needForAction;
}


- (YPDate*)getupdatedValue:(NSError**)err
{
    if(!_updated.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _updated;
}


- (YPDate*)getcreatedValue:(NSError**)err
{
    if(!_created.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _created;
}


@end

