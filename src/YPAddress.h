#import <Foundation/Foundation.h>
#import "YPObject.h"



@interface YPAddress : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) NSString* street;  

@property(nonatomic) NSString* zipCode;  

@property(nonatomic) NSString* city;  

- (id) _id: (NSString*) _id
     street: (NSString*) street
     zipCode: (NSString*) zipCode
     city: (NSString*) city;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (NSString*)getstreetValue;

- (NSString*)getzipCodeValue;

- (NSString*)getcityValue;



@end

