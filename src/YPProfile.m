#import "YPDate.h"
#import "YPProfile.h"

@implementation YPProfile

-(id)_id: (NSString*) _id
    homeAddress: (YPHomeAddress*) homeAddress
    workAddress: (YPWorkAddress*) workAddress
    prefs: (YPPrefs*) prefs
    owner: (YPUser*) owner
    gender: (NSString*) gender
    birthDate: (YPDate*) birthDate
    campaign: (YPCampaign*) campaign
    maritalStatus: (NSString*) maritalStatus
    language: (NSString*) language
    updated: (YPDate*) updated
    created: (YPDate*) created

{
    __id = _id;
    _homeAddress = homeAddress;
    _workAddress = workAddress;
    _prefs = prefs;
    _owner = owner;
    _gender = gender;
    _birthDate = birthDate;
    _campaign = campaign;
    _maritalStatus = maritalStatus;
    _language = language;
    _updated = updated;
    _created = created;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    id homeAddress_dict = dict[@"homeAddress"];
        if(homeAddress_dict != nil)
        {
            if([homeAddress_dict isKindOfClass:[NSString class]])
            {
                _homeAddress = [[YPHomeAddress alloc]initWithObjectId:homeAddress_dict];
            }
            else
            {
                _homeAddress = [[YPHomeAddress alloc]initWithValues:homeAddress_dict];
            }
        }
        id workAddress_dict = dict[@"workAddress"];
        if(workAddress_dict != nil)
        {
            if([workAddress_dict isKindOfClass:[NSString class]])
            {
                _workAddress = [[YPWorkAddress alloc]initWithObjectId:workAddress_dict];
            }
            else
            {
                _workAddress = [[YPWorkAddress alloc]initWithValues:workAddress_dict];
            }
        }
        id prefs_dict = dict[@"prefs"];
        if(prefs_dict != nil)
        {
            if([prefs_dict isKindOfClass:[NSString class]])
            {
                _prefs = [[YPPrefs alloc]initWithObjectId:prefs_dict];
            }
            else
            {
                _prefs = [[YPPrefs alloc]initWithValues:prefs_dict];
            }
        }
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
        _gender = dict[@"gender"];
    id birthDate_dict = dict[@"birthDate"];
        if(birthDate_dict != nil)
        {
            if([birthDate_dict isKindOfClass:[NSString class]])
            {
                _birthDate = [[YPDate alloc]initWithObjectId:birthDate_dict];
            }
            else
            {
                _birthDate = [[YPDate alloc]initWithValues:birthDate_dict];
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
        _maritalStatus = dict[@"maritalStatus"];
    _language = dict[@"language"];
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
        if(_homeAddress != nil)
    {
        if([_homeAddress isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPHomeAddress *homeAddress in (NSArray*)_homeAddress)
            {
                [array addObject:[(YPObject*)homeAddress asDictionary]];
            }

            dict[@"homeAddress"] = array;
        }
        else if(_homeAddress && [_homeAddress isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_homeAddress toString];
            if(dateString)
            {
                dict[@"homeAddress"] = dateString;
            }
        }
        else
        {
        if(_homeAddress != nil) dict[@"homeAddress"] = [(YPObject*)_homeAddress asDictionary];
        }
    }
    if(_workAddress != nil)
    {
        if([_workAddress isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPWorkAddress *workAddress in (NSArray*)_workAddress)
            {
                [array addObject:[(YPObject*)workAddress asDictionary]];
            }

            dict[@"workAddress"] = array;
        }
        else if(_workAddress && [_workAddress isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_workAddress toString];
            if(dateString)
            {
                dict[@"workAddress"] = dateString;
            }
        }
        else
        {
        if(_workAddress != nil) dict[@"workAddress"] = [(YPObject*)_workAddress asDictionary];
        }
    }
    if(_prefs != nil)
    {
        if([_prefs isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPPrefs *prefs in (NSArray*)_prefs)
            {
                [array addObject:[(YPObject*)prefs asDictionary]];
            }

            dict[@"prefs"] = array;
        }
        else if(_prefs && [_prefs isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_prefs toString];
            if(dateString)
            {
                dict[@"prefs"] = dateString;
            }
        }
        else
        {
        if(_prefs != nil) dict[@"prefs"] = [(YPObject*)_prefs asDictionary];
        }
    }
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
    if(_gender != nil) dict[@"gender"] = _gender ;
        if(_birthDate != nil)
    {
        if([_birthDate isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *birthDate in (NSArray*)_birthDate)
            {
                [array addObject:[(YPObject*)birthDate asDictionary]];
            }

            dict[@"birthDate"] = array;
        }
        else if(_birthDate && [_birthDate isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_birthDate toString];
            if(dateString)
            {
                dict[@"birthDate"] = dateString;
            }
        }
        else
        {
        if(_birthDate != nil) dict[@"birthDate"] = [(YPObject*)_birthDate asDictionary];
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
    if(_maritalStatus != nil) dict[@"maritalStatus"] = _maritalStatus ;
        if(_language != nil) dict[@"language"] = _language ;
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


- (YPHomeAddress*)gethomeAddressValue:(NSError**)err
{
    if(!_homeAddress.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _homeAddress;
}


- (YPWorkAddress*)getworkAddressValue:(NSError**)err
{
    if(!_workAddress.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _workAddress;
}


- (YPPrefs*)getprefsValue:(NSError**)err
{
    if(!_prefs.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _prefs;
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


- (NSString*)getgenderValue
{
    return _gender;
}


- (YPDate*)getbirthDateValue:(NSError**)err
{
    if(!_birthDate.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _birthDate;
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


- (NSString*)getmaritalStatusValue
{
    return _maritalStatus;
}


- (NSString*)getlanguageValue
{
    return _language;
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

