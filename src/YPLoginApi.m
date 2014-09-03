#import "YPLoginApi.h"
    #import "YPFile.h"
    #import "YPApiClient.h"
    #import "YPUser.h"
    


    @implementation YPLoginApi
    static NSString * basePath = @"http://localhost:8000";

    +(YPLoginApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static YPLoginApi* singletonAPI = nil;

    if (singletonAPI == nil) {
    singletonAPI = [[YPLoginApi alloc] init];
    [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
    }

    +(void) setBasePath:(NSString*)path {
    basePath = path;
    }

    +(NSString*) getBasePath {
    return basePath;
    }

    -(YPApiClient*) apiClient {
    return [YPApiClient sharedClientFromPool:basePath];
    }

    -(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [[self apiClient] setHeaderValue:value forKey:key];
    }

    -(id) init {
    self = [super init];
    [self apiClient];
    return self;
    }

    -(void) setHeaderValue:(NSString*) value
    forKey:(NSString*)key {
    [[self apiClient] setHeaderValue:value forKey:key];
    }

    -(unsigned long) requestQueueSize {
    return [YPApiClient requestQueueSize];
    }


    -(NSNumber*) loginWithCompletionBlock:(NSString*) Authentication
        completionHandler: (void (^)(YPUser* output, YPError* error))completionBlock{

        NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/login", basePath];

        // remove format in URL if needed
        if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

        NSString* requestContentType = @"application/json";
        NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
        NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];


        if(Authentication != nil)
        headerParams[@"Authentication"] = Authentication;
        id bodyDictionary = nil;
        if(Authentication == nil) {
                // error
                }
            YPApiClient* client = [YPApiClient sharedClientFromPool:basePath];

        return [client dictionary:requestUrl
                    method:@"POST"
                    queryParams:queryParams
                    body:bodyDictionary
                    headerParams:headerParams
                    requestContentType:requestContentType
                    responseContentType:responseContentType
                    completionBlock:^(NSDictionary *data, YPError *error) {
                    if (error) {
                    completionBlock(nil, error);return;
                    }
                    YPUser *result = nil;
                        if (data) {
                        result = [[YPUser alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
                

        }
    
@end
