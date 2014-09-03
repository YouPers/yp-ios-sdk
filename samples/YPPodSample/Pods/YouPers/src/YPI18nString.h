#import <Foundation/Foundation.h>
#import "YPObject.h"



@interface YPI18nString : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) NSString* de;  

@property(nonatomic) NSString* en;  

@property(nonatomic) NSString* fr;  

@property(nonatomic) NSString* it;  

- (id) _id: (NSString*) _id
     de: (NSString*) de
     en: (NSString*) en
     fr: (NSString*) fr
     it: (NSString*) it;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (NSString*)getdeValue;

- (NSString*)getenValue;

- (NSString*)getfrValue;

- (NSString*)getitValue;



@end

