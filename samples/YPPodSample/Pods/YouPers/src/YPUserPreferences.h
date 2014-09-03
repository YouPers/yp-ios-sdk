#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPDate.h"
#import "YPRejectedActivityPlan.h"
#import "YPStarredActivity.h"
#import "YPRejectedActivity.h"
#import "YPEmail.h"
#import "YPFocus.h"
#import "YPDefaultUserWeekForScheduling.h"

@class YPDate;
@class YPRejectedActivityPlan;
@class YPStarredActivity;
@class YPRejectedActivity;
@class YPEmail;
@class YPFocus;
@class YPDefaultUserWeekForScheduling;


@interface YPUserPreferences : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPDefaultUserWeekForScheduling* defaultUserWeekForScheduling;  

@property(nonatomic) YPEmail* email;  

@property(nonatomic) NSString* personalGoal;  

@property(nonatomic) NSArray* focus;  

@property(nonatomic) NSArray* starredActivities;  

@property(nonatomic) NSArray* rejectedActivities;  

@property(nonatomic) NSArray* rejectedActivityPlans;  

@property(nonatomic) NSString* firstDayOfWeek;  

@property(nonatomic) NSString* timezone;  

@property(nonatomic) NSString* calendarNotification;  

@property(nonatomic) YPDate* lastDiaryEntry;  

@property(nonatomic) NSNumber* doNotAskAgainForDiaryEntry;  

- (id) _id: (NSString*) _id
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
     doNotAskAgainForDiaryEntry: (NSNumber*) doNotAskAgainForDiaryEntry;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPDefaultUserWeekForScheduling*)getdefaultUserWeekForSchedulingValue:(NSError**)err;

- (YPEmail*)getemailValue:(NSError**)err;

- (NSString*)getpersonalGoalValue;

- (NSArray*)getfocusValue;

- (NSArray*)getstarredActivitiesValue;

- (NSArray*)getrejectedActivitiesValue;

- (NSArray*)getrejectedActivityPlansValue;

- (NSString*)getfirstDayOfWeekValue;

- (NSString*)gettimezoneValue;

- (NSString*)getcalendarNotificationValue;

- (YPDate*)getlastDiaryEntryValue:(NSError**)err;

- (NSNumber*)getdoNotAskAgainForDiaryEntryValue;



@end

