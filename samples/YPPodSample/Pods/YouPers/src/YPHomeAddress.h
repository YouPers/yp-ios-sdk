#import <Foundation/Foundation.h>
#import "YPObject.h"



@interface YPHomeAddress : YPObject

@property(nonatomic) NSString* _id;  

@property(nonatomic) NSString* street;  

@property(nonatomic) NSString* houseNumber;  

@property(nonatomic) NSNumber* zipCode;  

@property(nonatomic) NSString* city;  

@property(nonatomic) NSString* country;  

- (id) _id: (NSString*) _id
     street: (NSString*) street
     houseNumber: (NSString*) houseNumber
     zipCode: (NSNumber*) zipCode
     city: (NSString*) city
     country: (NSString*) country;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;
//- (void)createObj:(NSDictionary*)dict;


- (NSString*)get_idValue;

- (NSString*)getstreetValue;

- (NSString*)gethouseNumberValue;

- (NSNumber*)getzipCodeValue;

- (NSString*)getcityValue;

- (NSString*)getcountryValue;



@end

