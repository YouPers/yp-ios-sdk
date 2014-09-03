#import <Foundation/Foundation.h>
#import "YPObject.h"
#import "YPRejectedIdea.h"
#import "YPStarredIdea.h"
#import "YPRejectedActivitie.h"
#import "YPEmail.h"
#import "YPFocus.h"

@class YPRejectedIdea;
@class YPStarredIdea;
@class YPRejectedActivitie;
@class YPEmail;
@class YPFocus;


@interface YPPrefs : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) YPEmail* email;  

@property(nonatomic) NSArray* defaultWorkWeek;  

@property(nonatomic) NSString* personalGoal;  

@property(nonatomic) NSArray* focus;  

@property(nonatomic) NSArray* starredIdeas;  

@property(nonatomic) NSArray* rejectedIdeas;  

@property(nonatomic) NSArray* rejectedActivities;  

@property(nonatomic) NSString* firstDayOfWeek;  

@property(nonatomic) NSString* timezone;  

@property(nonatomic) NSString* calendarNotification;  

- (id) _id: (NSString*) _id
     email: (YPEmail*) email
     defaultWorkWeek: (NSArray*) defaultWorkWeek
     personalGoal: (NSString*) personalGoal
     focus: (NSArray*) focus
     starredIdeas: (NSArray*) starredIdeas
     rejectedIdeas: (NSArray*) rejectedIdeas
     rejectedActivities: (NSArray*) rejectedActivities
     firstDayOfWeek: (NSString*) firstDayOfWeek
     timezone: (NSString*) timezone
     calendarNotification: (NSString*) calendarNotification;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (YPEmail*)getemailValue:(NSError**)err;

- (NSArray*)getdefaultWorkWeekValue;

- (NSString*)getpersonalGoalValue;

- (NSArray*)getfocusValue;

- (NSArray*)getstarredIdeasValue;

- (NSArray*)getrejectedIdeasValue;

- (NSArray*)getrejectedActivitiesValue;

- (NSString*)getfirstDayOfWeekValue;

- (NSString*)gettimezoneValue;

- (NSString*)getcalendarNotificationValue;



@end

