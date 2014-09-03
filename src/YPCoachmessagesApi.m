#import "YPCoachmessagesApi.h"
    #import "YPFile.h"
    #import "YPApiClient.h"
    


    @implementation YPCoachmessagesApi
    static NSString * basePath = @"http://localhost:8000";

    +(YPCoachmessagesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static YPCoachmessagesApi* singletonAPI = nil;

    if (singletonAPI == nil) {
    singletonAPI = [[YPCoachmessagesApi alloc] init];
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


    -(NSNumber*) coachMessagesGetWithCompletionBlock:(NSString*) uistate
        debug:(NSNumber*) debug
        completionHandler: (void (^)(NSArray* output, YPError* error))completionBlock{

        NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/coachmessages", basePath];

        // remove format in URL if needed
        if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

        NSString* requestContentType = @"application/json";
        NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
        if(uistate != nil)
        queryParams[@"uistate"] = uistate;
        if(debug != nil)
        queryParams[@"debug"] = debug;
        NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];


        id bodyDictionary = nil;
        if(uistate == nil) {
                // error
                }
            YPApiClient* client = [YPApiClient sharedClientFromPool:basePath];

        return [client dictionary: requestUrl
            method: @"GET"
            queryParams: queryParams
            body: bodyDictionary
            headerParams: headerParams
            requestContentType: requestContentType
            responseContentType: responseContentType
            completionBlock: ^(NSDictionary *data, YPError *error) {
            if (error) {
            completionBlock(nil, error);return;
            }

            if([data isKindOfClass:[NSArray class]]){
                NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                for (NSString* str in (NSArray*)data) {
                    // NSString

                    NSString* d = [[NSString alloc]initWithString: str];
                [objs addObject:d];
                }
                completionBlock(objs, nil);
                }
                }];
        

        }
    
@end
