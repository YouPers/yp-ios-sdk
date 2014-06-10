#import <Foundation/Foundation.h>
#import "YPObject.h"



@interface YPContact : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) NSString* firstname;  

@property(nonatomic) NSString* lastname;  

@property(nonatomic) NSString* position;  

@property(nonatomic) NSString* email;  

@property(nonatomic) NSString* phone;  

- (id) _id: (NSString*) _id
     firstname: (NSString*) firstname
     lastname: (NSString*) lastname
     position: (NSString*) position
     email: (NSString*) email
     phone: (NSString*) phone;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (NSString*)getfirstnameValue;

- (NSString*)getlastnameValue;

- (NSString*)getpositionValue;

- (NSString*)getemailValue;

- (NSString*)getphoneValue;



@end

