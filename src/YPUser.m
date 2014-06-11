#import "YPDate.h"
#import "YPUser.h"

@implementation YPUser

-(id)_id: (NSString*) _id
    firstname: (NSString*) firstname
    lastname: (NSString*) lastname
    fullname: (NSString*) fullname
    email: (NSString*) email
    avatar: (NSString*) avatar
    emailValidatedFlag: (NSNumber*) emailValidatedFlag
    username: (NSString*) username
    password:(NSString *)password
    roles: (NSArray*) roles
    hashed_password: (NSString*) hashed_password
    tempPasswordFlag: (NSNumber*) tempPasswordFlag
    campaign: (YPCampaign*) campaign
    profile: (YPProfile*) profile
    updated: (YPDate*) updated
    created: (YPDate*) created

{
    __id = _id;
    _firstname = firstname;
    _lastname = lastname;
    _fullname = fullname;
    _email = email;
    _avatar = avatar;
    _emailValidatedFlag = emailValidatedFlag;
    _username = username;
    _password = password;
    _roles = roles;
    _hashed_password = hashed_password;
    _tempPasswordFlag = tempPasswordFlag;
    _campaign = campaign;
    _profile = profile;
    _updated = updated;
    _created = created;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    _firstname = dict[@"firstname"];
    _lastname = dict[@"lastname"];
    _fullname = dict[@"fullname"];
    _email = dict[@"email"];
    _avatar = dict[@"avatar"];
    _emailValidatedFlag = dict[@"emailValidatedFlag"];
    _username = dict[@"username"];
    _password = dict[@"password"];
    _roles = dict[@"roles"];
    _hashed_password = dict[@"hashed_password"];
    _tempPasswordFlag = dict[@"tempPasswordFlag"];
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
        id profile_dict = dict[@"profile"];
        if(profile_dict != nil)
        {
            if([profile_dict isKindOfClass:[NSString class]])
            {
                _profile = [[YPProfile alloc]initWithObjectId:profile_dict];
            }
            else
            {
                _profile = [[YPProfile alloc]initWithValues:profile_dict];
            }
        }
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
        if(_firstname != nil) dict[@"firstname"] = _firstname ;
        if(_lastname != nil) dict[@"lastname"] = _lastname ;
        if(_fullname != nil) dict[@"fullname"] = _fullname ;
        if(_email != nil) dict[@"email"] = _email ;
        if(_avatar != nil) dict[@"avatar"] = _avatar ;
        if(_emailValidatedFlag != nil) dict[@"emailValidatedFlag"] = _emailValidatedFlag ;
        if(_username != nil) dict[@"username"] = _username ;
        if(_password != nil) dict[@"password"] = _password ;
        if(_roles != nil) dict[@"roles"] = _roles ;
        if(_hashed_password != nil) dict[@"hashed_password"] = _hashed_password ;
        if(_tempPasswordFlag != nil) dict[@"tempPasswordFlag"] = _tempPasswordFlag ;
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
    if(_profile != nil)
    {
        if([_profile isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPProfile *profile in (NSArray*)_profile)
            {
                [array addObject:[(YPObject*)profile asDictionary]];
            }

            dict[@"profile"] = array;
        }
        else if(_profile && [_profile isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_profile toString];
            if(dateString)
            {
                dict[@"profile"] = dateString;
            }
        }
        else
        {
        if(_profile != nil) dict[@"profile"] = [(YPObject*)_profile asDictionary];
        }
    }
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


- (NSString*)getfirstnameValue
{
    return _firstname;
}


- (NSString*)getlastnameValue
{
    return _lastname;
}


- (NSString*)getfullnameValue
{
    return _fullname;
}


- (NSString*)getemailValue
{
    return _email;
}


- (NSString*)getavatarValue
{
    return _avatar;
}


- (NSNumber*)getemailValidatedFlagValue
{
    return _emailValidatedFlag;
}


- (NSString*)getusernameValue
{
    return _username;
}

- (NSString*)getpasswordValue
{
    return _password;
}


- (NSArray*)getrolesValue
{
    return _roles;
}


- (NSString*)gethashed_passwordValue
{
    return _hashed_password;
}


- (NSNumber*)gettempPasswordFlagValue
{
    return _tempPasswordFlag;
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


- (YPProfile*)getprofileValue:(NSError**)err
{
    if(!_profile.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _profile;
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

