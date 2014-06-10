#import "YPStatsApi.h"
#import "YPFile.h"
#import "YPApiClient.h"



@implementation YPStatsApi
static NSString * basePath = @"http://localhost:8000";

+(YPStatsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static YPStatsApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[YPStatsApi alloc] init];
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


-(NSNumber*) getStatsWithCompletionBlock:(NSString*) type
        scopeType:(NSString*) scopeType
        scopeId:(NSString*) scopeId
        range:(NSString*) range
        completionHandler: (void (^)(NSString* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/stats", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(type != nil)
        queryParams[@"type"] = type;
    if(scopeType != nil)
        queryParams[@"scopeType"] = scopeType;
    if(scopeId != nil)
        queryParams[@"scopeId"] = scopeId;
    if(range != nil)
        queryParams[@"range"] = range;
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];


    id bodyDictionary = nil;
        if(type == nil) {
        // error
    }
    YPApiClient* client = [YPApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                              method:@"GET" 
                                         queryParams:queryParams 
                                                body:bodyDictionary 
                                        headerParams:headerParams
                                  requestContentType: requestContentType
                                 responseContentType: responseContentType
                                     completionBlock:^(NSString *data, NSError *error) {
                         if (error) {
                             completionBlock(nil, error);
                             return;
                         }
                        NSString *result = data ? [[NSString alloc]initWithString: data] : nil;
                        completionBlock(result, nil);
                     }];
    

}


@end
