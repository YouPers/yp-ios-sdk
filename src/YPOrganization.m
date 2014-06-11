#import "YPDate.h"
#import "YPOrganization.h"

@implementation YPOrganization

-(id)_id: (NSString*) _id
    address: (YPAddress*) address
    contact: (YPContact*) contact
    name: (NSString*) name
    legalForm: (NSString*) legalForm
    sector: (NSString*) sector
    administrators: (NSArray*) administrators
    avatar: (NSString*) avatar
    updated: (YPDate*) updated
    created: (YPDate*) created

{
    __id = _id;
    _address = address;
    _contact = contact;
    _name = name;
    _legalForm = legalForm;
    _sector = sector;
    _administrators = administrators;
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
    id address_dict = dict[@"address"];
        if(address_dict != nil)
        {
            if([address_dict isKindOfClass:[NSString class]])
            {
                _address = [[YPAddress alloc]initWithObjectId:address_dict];
            }
            else
            {
                _address = [[YPAddress alloc]initWithValues:address_dict];
            }
        }
        id contact_dict = dict[@"contact"];
        if(contact_dict != nil)
        {
            if([contact_dict isKindOfClass:[NSString class]])
            {
                _contact = [[YPContact alloc]initWithObjectId:contact_dict];
            }
            else
            {
                _contact = [[YPContact alloc]initWithValues:contact_dict];
            }
        }
        _name = dict[@"name"];
    _legalForm = dict[@"legalForm"];
    _sector = dict[@"sector"];
    id administrators_dict = dict[@"administrators"];
        if([administrators_dict isKindOfClass:[NSArray class]])
        {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)administrators_dict count]];

            if([(NSArray*)administrators_dict count] > 0)
            {
            	YPUser* d;
            	
                for (NSDictionary* dict in (NSArray*)administrators_dict)
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

                _administrators = [[NSArray alloc] initWithArray:objs];
            }
            else
            {
                _administrators = [[NSArray alloc] init];
            }
        }
        else
        {
            _administrators = [[NSArray alloc] init];
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
        if(_address != nil)
    {
        if([_address isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPAddress *address in (NSArray*)_address)
            {
                [array addObject:[(YPObject*)address asDictionary]];
            }

            dict[@"address"] = array;
        }
        else if(_address && [_address isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_address toString];
            if(dateString)
            {
                dict[@"address"] = dateString;
            }
        }
        else
        {
        if(_address != nil) dict[@"address"] = [(YPObject*)_address asDictionary];
        }
    }
    if(_contact != nil)
    {
        if([_contact isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPContact *contact in (NSArray*)_contact)
            {
                [array addObject:[(YPObject*)contact asDictionary]];
            }

            dict[@"contact"] = array;
        }
        else if(_contact && [_contact isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_contact toString];
            if(dateString)
            {
                dict[@"contact"] = dateString;
            }
        }
        else
        {
        if(_contact != nil) dict[@"contact"] = [(YPObject*)_contact asDictionary];
        }
    }
    if(_name != nil) dict[@"name"] = _name ;
        if(_legalForm != nil) dict[@"legalForm"] = _legalForm ;
        if(_sector != nil) dict[@"sector"] = _sector ;
        if(_administrators != nil)
    {
        if([_administrators isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPUser *administrators in (NSArray*)_administrators)
            {
                [array addObject:[(YPObject*)administrators asDictionary]];
            }

            dict[@"administrators"] = array;
        }
        else if(_administrators && [_administrators isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_administrators toString];
            if(dateString)
            {
                dict[@"administrators"] = dateString;
            }
        }
        else
        {
        if(_administrators != nil) dict[@"administrators"] = [(YPObject*)_administrators asDictionary];
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


- (YPAddress*)getaddressValue:(NSError**)err
{
    if(!_address.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _address;
}


- (YPContact*)getcontactValue:(NSError**)err
{
    if(!_contact.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _contact;
}


- (NSString*)getnameValue
{
    return _name;
}


- (NSString*)getlegalFormValue
{
    return _legalForm;
}


- (NSString*)getsectorValue
{
    return _sector;
}


- (NSArray*)getadministratorsValue
{
    return _administrators;
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

