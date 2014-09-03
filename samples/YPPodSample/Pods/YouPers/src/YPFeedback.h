#import <Foundation/Foundation.h>
#import "YPObject.h"



@interface YPFeedback : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) NSString* contactInfo;  

@property(nonatomic) NSString* feedbackCategory;  

@property(nonatomic) NSString* description;  

@property(nonatomic) NSString* navigator;  

- (id) _id: (NSString*) _id
     contactInfo: (NSString*) contactInfo
     feedbackCategory: (NSString*) feedbackCategory
     description: (NSString*) description
     navigator: (NSString*) navigator;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (NSString*)getcontactInfoValue;

- (NSString*)getfeedbackCategoryValue;

- (NSString*)getdescriptionValue;

- (NSString*)getnavigatorValue;



@end

