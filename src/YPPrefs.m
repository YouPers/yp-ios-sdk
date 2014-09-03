#import "YPDate.h"
#import "YPPrefs.h"

@implementation YPPrefs

-(id)_id: (NSString*) _id
    email: (YPEmail*) email
    defaultWorkWeek: (NSArray*) defaultWorkWeek
    personalGoal: (NSString*) personalGoal
    focus: (NSArray*) focus
    starredIdeas: (NSArray*) starredIdeas
    rejectedIdeas: (NSArray*) rejectedIdeas
    rejectedActivities: (NSArray*) rejectedActivities
    firstDayOfWeek: (NSString*) firstDayOfWeek
    timezone: (NSString*) timezone
    calendarNotification: (NSString*) calendarNotification

{
    __id = _id;
    _email = email;
    _defaultWorkWeek = defaultWorkWeek;
    _personalGoal = personalGoal;
    _focus = focus;
    _starredIdeas = starredIdeas;
    _rejectedIdeas = rejectedIdeas;
    _rejectedActivities = rejectedActivities;
    _firstDayOfWeek = firstDayOfWeek;
    _timezone = timezone;
    _calendarNotification = calendarNotification;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    id email_dict = dict[@"email"];
        if(email_dict != nil)
        {
            if([email_dict isKindOfClass:[NSString class]])
            {
                _email = [[YPEmail alloc]initWithObjectId:email_dict];
            }
            else
            {
                _email = [[YPEmail alloc]initWithValues:email_dict];
            }
        }
        _defaultWorkWeek = dict[@"defaultWorkWeek"];
    _personalGoal = dict[@"personalGoal"];
    id focus_dict = dict[@"focus"];
        if([focus_dict isKindOfClass:[NSArray class]])
        {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)focus_dict count]];

            if([(NSArray*)focus_dict count] > 0)
            {
            	YPFocus* d;
            	
                for (NSDictionary* dict in (NSArray*)focus_dict)
                {
                    if([dict isKindOfClass:[NSString class]])
                    {
                    	d = [[YPFocus alloc] initWithObjectId:(NSString*)dict];
                    }
                    else
                    {
                    	d = [[YPFocus alloc] initWithValues:dict];
                    }
                    
                    [objs addObject:d];
                }

                _focus = [[NSArray alloc] initWithArray:objs];
            }
            else
            {
                _focus = [[NSArray alloc] init];
            }
        }
        else
        {
            _focus = [[NSArray alloc] init];
        }
        id starredIdeas_dict = dict[@"starredIdeas"];
        if([starredIdeas_dict isKindOfClass:[NSArray class]])
        {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)starredIdeas_dict count]];

            if([(NSArray*)starredIdeas_dict count] > 0)
            {
            	YPStarredIdea* d;
            	
                for (NSDictionary* dict in (NSArray*)starredIdeas_dict)
                {
                    if([dict isKindOfClass:[NSString class]])
                    {
                    	d = [[YPStarredIdea alloc] initWithObjectId:(NSString*)dict];
                    }
                    else
                    {
                    	d = [[YPStarredIdea alloc] initWithValues:dict];
                    }
                    
                    [objs addObject:d];
                }

                _starredIdeas = [[NSArray alloc] initWithArray:objs];
            }
            else
            {
                _starredIdeas = [[NSArray alloc] init];
            }
        }
        else
        {
            _starredIdeas = [[NSArray alloc] init];
        }
        id rejectedIdeas_dict = dict[@"rejectedIdeas"];
        if([rejectedIdeas_dict isKindOfClass:[NSArray class]])
        {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)rejectedIdeas_dict count]];

            if([(NSArray*)rejectedIdeas_dict count] > 0)
            {
            	YPRejectedIdea* d;
            	
                for (NSDictionary* dict in (NSArray*)rejectedIdeas_dict)
                {
                    if([dict isKindOfClass:[NSString class]])
                    {
                    	d = [[YPRejectedIdea alloc] initWithObjectId:(NSString*)dict];
                    }
                    else
                    {
                    	d = [[YPRejectedIdea alloc] initWithValues:dict];
                    }
                    
                    [objs addObject:d];
                }

                _rejectedIdeas = [[NSArray alloc] initWithArray:objs];
            }
            else
            {
                _rejectedIdeas = [[NSArray alloc] init];
            }
        }
        else
        {
            _rejectedIdeas = [[NSArray alloc] init];
        }
        id rejectedActivities_dict = dict[@"rejectedActivities"];
        if([rejectedActivities_dict isKindOfClass:[NSArray class]])
        {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)rejectedActivities_dict count]];

            if([(NSArray*)rejectedActivities_dict count] > 0)
            {
            	YPRejectedActivitie* d;
            	
                for (NSDictionary* dict in (NSArray*)rejectedActivities_dict)
                {
                    if([dict isKindOfClass:[NSString class]])
                    {
                    	d = [[YPRejectedActivitie alloc] initWithObjectId:(NSString*)dict];
                    }
                    else
                    {
                    	d = [[YPRejectedActivitie alloc] initWithValues:dict];
                    }
                    
                    [objs addObject:d];
                }

                _rejectedActivities = [[NSArray alloc] initWithArray:objs];
            }
            else
            {
                _rejectedActivities = [[NSArray alloc] init];
            }
        }
        else
        {
            _rejectedActivities = [[NSArray alloc] init];
        }
        _firstDayOfWeek = dict[@"firstDayOfWeek"];
    _timezone = dict[@"timezone"];
    _calendarNotification = dict[@"calendarNotification"];
    

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
        if(_email != nil)
    {
        if([_email isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPEmail *email in (NSArray*)_email)
            {
                [array addObject:[(YPObject*)email asDictionary]];
            }

            dict[@"email"] = array;
        }
        else if(_email && [_email isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_email toString];
            if(dateString)
            {
                dict[@"email"] = dateString;
            }
        }
        else
        {
        if(_email != nil) dict[@"email"] = [(YPObject*)_email asDictionary];
        }
    }
    if(_defaultWorkWeek != nil) dict[@"defaultWorkWeek"] = _defaultWorkWeek ;
        if(_personalGoal != nil) dict[@"personalGoal"] = _personalGoal ;
        if(_focus != nil)
    {
        if([_focus isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPFocus *focus in (NSArray*)_focus)
            {
                [array addObject:[(YPObject*)focus asDictionary]];
            }

            dict[@"focus"] = array;
        }
        else if(_focus && [_focus isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_focus toString];
            if(dateString)
            {
                dict[@"focus"] = dateString;
            }
        }
        else
        {
        if(_focus != nil) dict[@"focus"] = [(YPObject*)_focus asDictionary];
        }
    }
    if(_starredIdeas != nil)
    {
        if([_starredIdeas isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPStarredIdea *starredIdeas in (NSArray*)_starredIdeas)
            {
                [array addObject:[(YPObject*)starredIdeas asDictionary]];
            }

            dict[@"starredIdeas"] = array;
        }
        else if(_starredIdeas && [_starredIdeas isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_starredIdeas toString];
            if(dateString)
            {
                dict[@"starredIdeas"] = dateString;
            }
        }
        else
        {
        if(_starredIdeas != nil) dict[@"starredIdeas"] = [(YPObject*)_starredIdeas asDictionary];
        }
    }
    if(_rejectedIdeas != nil)
    {
        if([_rejectedIdeas isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPRejectedIdea *rejectedIdeas in (NSArray*)_rejectedIdeas)
            {
                [array addObject:[(YPObject*)rejectedIdeas asDictionary]];
            }

            dict[@"rejectedIdeas"] = array;
        }
        else if(_rejectedIdeas && [_rejectedIdeas isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_rejectedIdeas toString];
            if(dateString)
            {
                dict[@"rejectedIdeas"] = dateString;
            }
        }
        else
        {
        if(_rejectedIdeas != nil) dict[@"rejectedIdeas"] = [(YPObject*)_rejectedIdeas asDictionary];
        }
    }
    if(_rejectedActivities != nil)
    {
        if([_rejectedActivities isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPRejectedActivitie *rejectedActivities in (NSArray*)_rejectedActivities)
            {
                [array addObject:[(YPObject*)rejectedActivities asDictionary]];
            }

            dict[@"rejectedActivities"] = array;
        }
        else if(_rejectedActivities && [_rejectedActivities isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_rejectedActivities toString];
            if(dateString)
            {
                dict[@"rejectedActivities"] = dateString;
            }
        }
        else
        {
        if(_rejectedActivities != nil) dict[@"rejectedActivities"] = [(YPObject*)_rejectedActivities asDictionary];
        }
    }
    if(_firstDayOfWeek != nil) dict[@"firstDayOfWeek"] = _firstDayOfWeek ;
        if(_timezone != nil) dict[@"timezone"] = _timezone ;
        if(_calendarNotification != nil) dict[@"calendarNotification"] = _calendarNotification ;
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


- (YPEmail*)getemailValue:(NSError**)err
{
    if(!_email.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _email;
}


- (NSArray*)getdefaultWorkWeekValue
{
    return _defaultWorkWeek;
}


- (NSString*)getpersonalGoalValue
{
    return _personalGoal;
}


- (NSArray*)getfocusValue
{
    return _focus;
}


- (NSArray*)getstarredIdeasValue
{
    return _starredIdeas;
}


- (NSArray*)getrejectedIdeasValue
{
    return _rejectedIdeas;
}


- (NSArray*)getrejectedActivitiesValue
{
    return _rejectedActivities;
}


- (NSString*)getfirstDayOfWeekValue
{
    return _firstDayOfWeek;
}


- (NSString*)gettimezoneValue
{
    return _timezone;
}


- (NSString*)getcalendarNotificationValue
{
    return _calendarNotification;
}


@end

