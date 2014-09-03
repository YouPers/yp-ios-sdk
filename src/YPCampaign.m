#import "YPDate.h"
#import "YPCampaign.h"

@implementation YPCampaign

-(id)_id: (NSString*) _id
    title: (NSString*) title
    start: (YPDate*) start
    end: (YPDate*) end
    topic: (YPTopic*) topic
    organization: (YPOrganization*) organization
    participants: (NSString*) participants
    location: (NSString*) location
    city: (NSString*) city
    slogan: (NSString*) slogan
    paymentStatus: (NSString*) paymentStatus
    productType: (NSString*) productType
    campaignLeads: (NSArray*) campaignLeads
    avatar: (NSString*) avatar
    updated: (YPDate*) updated
    created: (YPDate*) created

{
    __id = _id;
    _title = title;
    _start = start;
    _end = end;
    _topic = topic;
    _organization = organization;
    _participants = participants;
    _location = location;
    _city = city;
    _slogan = slogan;
    _paymentStatus = paymentStatus;
    _productType = productType;
    _campaignLeads = campaignLeads;
    _avatar = avatar;
    _updated = updated;
    _created = created;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    _title = dict[@"title"];
    id start_dict = dict[@"start"];
        if(start_dict != nil)
        {
            if([start_dict isKindOfClass:[NSString class]])
            {
                _start = [[YPDate alloc]initWithObjectId:start_dict];
            }
            else
            {
                _start = [[YPDate alloc]initWithValues:start_dict];
            }
        }
        id end_dict = dict[@"end"];
        if(end_dict != nil)
        {
            if([end_dict isKindOfClass:[NSString class]])
            {
                _end = [[YPDate alloc]initWithObjectId:end_dict];
            }
            else
            {
                _end = [[YPDate alloc]initWithValues:end_dict];
            }
        }
        id topic_dict = dict[@"topic"];
        if(topic_dict != nil)
        {
            if([topic_dict isKindOfClass:[NSString class]])
            {
                _topic = [[YPTopic alloc]initWithObjectId:topic_dict];
            }
            else
            {
                _topic = [[YPTopic alloc]initWithValues:topic_dict];
            }
        }
        id organization_dict = dict[@"organization"];
        if(organization_dict != nil)
        {
            if([organization_dict isKindOfClass:[NSString class]])
            {
                _organization = [[YPOrganization alloc]initWithObjectId:organization_dict];
            }
            else
            {
                _organization = [[YPOrganization alloc]initWithValues:organization_dict];
            }
        }
        _participants = dict[@"participants"];
    _location = dict[@"location"];
    _city = dict[@"city"];
    _slogan = dict[@"slogan"];
    _paymentStatus = dict[@"paymentStatus"];
    _productType = dict[@"productType"];
    id campaignLeads_dict = dict[@"campaignLeads"];
        if([campaignLeads_dict isKindOfClass:[NSArray class]])
        {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)campaignLeads_dict count]];

            if([(NSArray*)campaignLeads_dict count] > 0)
            {
            	YPUser* d;
            	
                for (NSDictionary* dict in (NSArray*)campaignLeads_dict)
                {
                    if([dict isKindOfClass:[NSString class]])
                    {
                    	d = [[YPUser alloc] initWithObjectId:(NSString*)dict];
                    }
                    else
                    {
                    	d = [[YPUser alloc] initWithValues:dict];
                    }
                    
                    [objs addObject:d];
                }

                _campaignLeads = [[NSArray alloc] initWithArray:objs];
            }
            else
            {
                _campaignLeads = [[NSArray alloc] init];
            }
        }
        else
        {
            _campaignLeads = [[NSArray alloc] init];
        }
        _avatar = dict[@"avatar"];
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
        if(_title != nil) dict[@"title"] = _title ;
        if(_start != nil)
    {
        if([_start isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *start in (NSArray*)_start)
            {
                [array addObject:[(YPObject*)start asDictionary]];
            }

            dict[@"start"] = array;
        }
        else if(_start && [_start isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_start toString];
            if(dateString)
            {
                dict[@"start"] = dateString;
            }
        }
        else
        {
        if(_start != nil) dict[@"start"] = [(YPObject*)_start asDictionary];
        }
    }
    if(_end != nil)
    {
        if([_end isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *end in (NSArray*)_end)
            {
                [array addObject:[(YPObject*)end asDictionary]];
            }

            dict[@"end"] = array;
        }
        else if(_end && [_end isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_end toString];
            if(dateString)
            {
                dict[@"end"] = dateString;
            }
        }
        else
        {
        if(_end != nil) dict[@"end"] = [(YPObject*)_end asDictionary];
        }
    }
    if(_topic != nil)
    {
        if([_topic isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPTopic *topic in (NSArray*)_topic)
            {
                [array addObject:[(YPObject*)topic asDictionary]];
            }

            dict[@"topic"] = array;
        }
        else if(_topic && [_topic isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_topic toString];
            if(dateString)
            {
                dict[@"topic"] = dateString;
            }
        }
        else
        {
        if(_topic != nil) dict[@"topic"] = [(YPObject*)_topic asDictionary];
        }
    }
    if(_organization != nil)
    {
        if([_organization isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPOrganization *organization in (NSArray*)_organization)
            {
                [array addObject:[(YPObject*)organization asDictionary]];
            }

            dict[@"organization"] = array;
        }
        else if(_organization && [_organization isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_organization toString];
            if(dateString)
            {
                dict[@"organization"] = dateString;
            }
        }
        else
        {
        if(_organization != nil) dict[@"organization"] = [(YPObject*)_organization asDictionary];
        }
    }
    if(_participants != nil) dict[@"participants"] = _participants ;
        if(_location != nil) dict[@"location"] = _location ;
        if(_city != nil) dict[@"city"] = _city ;
        if(_slogan != nil) dict[@"slogan"] = _slogan ;
        if(_paymentStatus != nil) dict[@"paymentStatus"] = _paymentStatus ;
        if(_productType != nil) dict[@"productType"] = _productType ;
        if(_campaignLeads != nil)
    {
        if([_campaignLeads isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPUser *campaignLeads in (NSArray*)_campaignLeads)
            {
                [array addObject:[(YPObject*)campaignLeads asDictionary]];
            }

            dict[@"campaignLeads"] = array;
        }
        else if(_campaignLeads && [_campaignLeads isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_campaignLeads toString];
            if(dateString)
            {
                dict[@"campaignLeads"] = dateString;
            }
        }
        else
        {
        if(_campaignLeads != nil) dict[@"campaignLeads"] = [(YPObject*)_campaignLeads asDictionary];
        }
    }
    if(_avatar != nil) dict[@"avatar"] = _avatar ;
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


- (NSString*)gettitleValue
{
    return _title;
}


- (YPDate*)getstartValue:(NSError**)err
{
    if(!_start.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _start;
}


- (YPDate*)getendValue:(NSError**)err
{
    if(!_end.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _end;
}


- (YPTopic*)gettopicValue:(NSError**)err
{
    if(!_topic.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _topic;
}


- (YPOrganization*)getorganizationValue:(NSError**)err
{
    if(!_organization.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _organization;
}


- (NSString*)getparticipantsValue
{
    return _participants;
}


- (NSString*)getlocationValue
{
    return _location;
}


- (NSString*)getcityValue
{
    return _city;
}


- (NSString*)getsloganValue
{
    return _slogan;
}


- (NSString*)getpaymentStatusValue
{
    return _paymentStatus;
}


- (NSString*)getproductTypeValue
{
    return _productType;
}


- (NSArray*)getcampaignLeadsValue
{
    return _campaignLeads;
}


- (NSString*)getavatarValue
{
    return _avatar;
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

