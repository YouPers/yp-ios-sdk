#import "YPDate.h"
#import "YPUserPreferences.h"

@implementation YPUserPreferences

-(id)_id: (NSString*) _id
    defaultUserWeekForScheduling: (YPDefaultUserWeekForScheduling*) defaultUserWeekForScheduling
    email: (YPEmail*) email
    personalGoal: (NSString*) personalGoal
    focus: (NSArray*) focus
    starredActivities: (NSArray*) starredActivities
    rejectedActivities: (NSArray*) rejectedActivities
    rejectedActivityPlans: (NSArray*) rejectedActivityPlans
    firstDayOfWeek: (NSString*) firstDayOfWeek
    timezone: (NSString*) timezone
    calendarNotification: (NSString*) calendarNotification
    lastDiaryEntry: (YPDate*) lastDiaryEntry
    doNotAskAgainForDiaryEntry: (NSNumber*) doNotAskAgainForDiaryEntry

{
    __id = _id;
    _defaultUserWeekForScheduling = defaultUserWeekForScheduling;
    _email = email;
    _personalGoal = personalGoal;
    _focus = focus;
    _starredActivities = starredActivities;
    _rejectedActivities = rejectedActivities;
    _rejectedActivityPlans = rejectedActivityPlans;
    _firstDayOfWeek = firstDayOfWeek;
    _timezone = timezone;
    _calendarNotification = calendarNotification;
    _lastDiaryEntry = lastDiaryEntry;
    _doNotAskAgainForDiaryEntry = doNotAskAgainForDiaryEntry;
    return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super initWithValues:dict];
    if(self) {
    __id = dict[@"id"];
    id defaultUserWeekForScheduling_dict = dict[@"defaultUserWeekForScheduling"];
        if(defaultUserWeekForScheduling_dict != nil)
        {
            if([defaultUserWeekForScheduling_dict isKindOfClass:[NSString class]])
            {
                _defaultUserWeekForScheduling = [[YPDefaultUserWeekForScheduling alloc]initWithObjectId:defaultUserWeekForScheduling_dict];
            }
            else
            {
                _defaultUserWeekForScheduling = [[YPDefaultUserWeekForScheduling alloc]initWithValues:defaultUserWeekForScheduling_dict];
            }
        }
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
        id starredActivities_dict = dict[@"starredActivities"];
        if([starredActivities_dict isKindOfClass:[NSArray class]])
        {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)starredActivities_dict count]];

            if([(NSArray*)starredActivities_dict count] > 0)
            {
            	YPStarredActivity* d;
            	
                for (NSDictionary* dict in (NSArray*)starredActivities_dict)
                {
                    if([dict isKindOfClass:[NSString class]])
                    {
                    	d = [[YPStarredActivity alloc] initWithObjectId:(NSString*)dict];
                    }
                    else
                    {
                    	d = [[YPStarredActivity alloc] initWithValues:dict];
                    }
                    
                    [objs addObject:d];
                }

                _starredActivities = [[NSArray alloc] initWithArray:objs];
            }
            else
            {
                _starredActivities = [[NSArray alloc] init];
            }
        }
        else
        {
            _starredActivities = [[NSArray alloc] init];
        }
        id rejectedActivities_dict = dict[@"rejectedActivities"];
        if([rejectedActivities_dict isKindOfClass:[NSArray class]])
        {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)rejectedActivities_dict count]];

            if([(NSArray*)rejectedActivities_dict count] > 0)
            {
            	YPRejectedActivity* d;
            	
                for (NSDictionary* dict in (NSArray*)rejectedActivities_dict)
                {
                    if([dict isKindOfClass:[NSString class]])
                    {
                    	d = [[YPRejectedActivity alloc] initWithObjectId:(NSString*)dict];
                    }
                    else
                    {
                    	d = [[YPRejectedActivity alloc] initWithValues:dict];
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
        id rejectedActivityPlans_dict = dict[@"rejectedActivityPlans"];
        if([rejectedActivityPlans_dict isKindOfClass:[NSArray class]])
        {
            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)rejectedActivityPlans_dict count]];

            if([(NSArray*)rejectedActivityPlans_dict count] > 0)
            {
            	YPRejectedActivityPlan* d;
            	
                for (NSDictionary* dict in (NSArray*)rejectedActivityPlans_dict)
                {
                    if([dict isKindOfClass:[NSString class]])
                    {
                    	d = [[YPRejectedActivityPlan alloc] initWithObjectId:(NSString*)dict];
                    }
                    else
                    {
                    	d = [[YPRejectedActivityPlan alloc] initWithValues:dict];
                    }
                    
                    [objs addObject:d];
                }

                _rejectedActivityPlans = [[NSArray alloc] initWithArray:objs];
            }
            else
            {
                _rejectedActivityPlans = [[NSArray alloc] init];
            }
        }
        else
        {
            _rejectedActivityPlans = [[NSArray alloc] init];
        }
        _firstDayOfWeek = dict[@"firstDayOfWeek"];
    _timezone = dict[@"timezone"];
    _calendarNotification = dict[@"calendarNotification"];
    id lastDiaryEntry_dict = dict[@"lastDiaryEntry"];
        if(lastDiaryEntry_dict != nil)
        {
            if([lastDiaryEntry_dict isKindOfClass:[NSString class]])
            {
                _lastDiaryEntry = [[YPDate alloc]initWithObjectId:lastDiaryEntry_dict];
            }
            else
            {
                _lastDiaryEntry = [[YPDate alloc]initWithValues:lastDiaryEntry_dict];
            }
        }
        _doNotAskAgainForDiaryEntry = dict[@"doNotAskAgainForDiaryEntry"];
    

    }

    return self;
}

-(NSDictionary*) asDictionary
{
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
        if(_defaultUserWeekForScheduling != nil)
    {
        if([_defaultUserWeekForScheduling isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDefaultUserWeekForScheduling *defaultUserWeekForScheduling in (NSArray*)_defaultUserWeekForScheduling)
            {
                [array addObject:[(YPObject*)defaultUserWeekForScheduling asDictionary]];
            }

            dict[@"defaultUserWeekForScheduling"] = array;
        }
        else if(_defaultUserWeekForScheduling && [_defaultUserWeekForScheduling isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_defaultUserWeekForScheduling toString];
            if(dateString)
            {
                dict[@"defaultUserWeekForScheduling"] = dateString;
            }
        }
        else
        {
        if(_defaultUserWeekForScheduling != nil) dict[@"defaultUserWeekForScheduling"] = [(YPObject*)_defaultUserWeekForScheduling asDictionary];
        }
    }
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
    if(_starredActivities != nil)
    {
        if([_starredActivities isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPStarredActivity *starredActivities in (NSArray*)_starredActivities)
            {
                [array addObject:[(YPObject*)starredActivities asDictionary]];
            }

            dict[@"starredActivities"] = array;
        }
        else if(_starredActivities && [_starredActivities isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_starredActivities toString];
            if(dateString)
            {
                dict[@"starredActivities"] = dateString;
            }
        }
        else
        {
        if(_starredActivities != nil) dict[@"starredActivities"] = [(YPObject*)_starredActivities asDictionary];
        }
    }
    if(_rejectedActivities != nil)
    {
        if([_rejectedActivities isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPRejectedActivity *rejectedActivities in (NSArray*)_rejectedActivities)
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
    if(_rejectedActivityPlans != nil)
    {
        if([_rejectedActivityPlans isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPRejectedActivityPlan *rejectedActivityPlans in (NSArray*)_rejectedActivityPlans)
            {
                [array addObject:[(YPObject*)rejectedActivityPlans asDictionary]];
            }

            dict[@"rejectedActivityPlans"] = array;
        }
        else if(_rejectedActivityPlans && [_rejectedActivityPlans isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_rejectedActivityPlans toString];
            if(dateString)
            {
                dict[@"rejectedActivityPlans"] = dateString;
            }
        }
        else
        {
        if(_rejectedActivityPlans != nil) dict[@"rejectedActivityPlans"] = [(YPObject*)_rejectedActivityPlans asDictionary];
        }
    }
    if(_firstDayOfWeek != nil) dict[@"firstDayOfWeek"] = _firstDayOfWeek ;
        if(_timezone != nil) dict[@"timezone"] = _timezone ;
        if(_calendarNotification != nil) dict[@"calendarNotification"] = _calendarNotification ;
        if(_lastDiaryEntry != nil)
    {
        if([_lastDiaryEntry isKindOfClass:[NSArray class]])
        {
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( YPDate *lastDiaryEntry in (NSArray*)_lastDiaryEntry)
            {
                [array addObject:[(YPObject*)lastDiaryEntry asDictionary]];
            }

            dict[@"lastDiaryEntry"] = array;
        }
        else if(_lastDiaryEntry && [_lastDiaryEntry isKindOfClass:[YPDate class]])
        {
            NSString * dateString = [(YPDate*)_lastDiaryEntry toString];
            if(dateString)
            {
                dict[@"lastDiaryEntry"] = dateString;
            }
        }
        else
        {
        if(_lastDiaryEntry != nil) dict[@"lastDiaryEntry"] = [(YPObject*)_lastDiaryEntry asDictionary];
        }
    }
    if(_doNotAskAgainForDiaryEntry != nil) dict[@"doNotAskAgainForDiaryEntry"] = _doNotAskAgainForDiaryEntry ;
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


- (YPDefaultUserWeekForScheduling*)getdefaultUserWeekForSchedulingValue:(NSError**)err
{
    if(!_defaultUserWeekForScheduling.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _defaultUserWeekForScheduling;
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


- (NSString*)getpersonalGoalValue
{
    return _personalGoal;
}


- (NSArray*)getfocusValue
{
    return _focus;
}


- (NSArray*)getstarredActivitiesValue
{
    return _starredActivities;
}


- (NSArray*)getrejectedActivitiesValue
{
    return _rejectedActivities;
}


- (NSArray*)getrejectedActivityPlansValue
{
    return _rejectedActivityPlans;
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


- (YPDate*)getlastDiaryEntryValue:(NSError**)err
{
    if(!_lastDiaryEntry.isLoaded)
    {
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"The object is not loaded"};
        *err = [NSError errorWithDomain:@"com.youpers" code:101 userInfo:userInfo];
    }
    return _lastDiaryEntry;
}


- (NSNumber*)getdoNotAskAgainForDiaryEntryValue
{
    return _doNotAskAgainForDiaryEntry;
}


@end

