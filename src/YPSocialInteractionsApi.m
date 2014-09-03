#import "YPSocialInteractionsApi.h"
    #import "YPFile.h"
    #import "YPApiClient.h"
    #import "YPSocialInteraction.h"
    


    @implementation YPSocialInteractionsApi
    static NSString * basePath = @"http://localhost:8000";

    +(YPSocialInteractionsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static YPSocialInteractionsApi* singletonAPI = nil;

    if (singletonAPI == nil) {
    singletonAPI = [[YPSocialInteractionsApi alloc] init];
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


    -(NSNumber*) getSocialInteractionByIdWithCompletionBlock:(NSString*) _id
        populate:(NSString*) populate
        completionHandler: (void (^)(YPSocialInteraction* output, YPError* error))completionBlock{

        NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/socialInteractions/{id}", basePath];

        // remove format in URL if needed
        if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [YPApiClient escape:_id]];
        NSString* requestContentType = @"application/json";
        NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
        if(populate != nil)
        queryParams[@"populate"] = populate;
        NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];


        id bodyDictionary = nil;
        if(_id == nil) {
                // error
                }
            YPApiClient* client = [YPApiClient sharedClientFromPool:basePath];

        return [client dictionary:requestUrl
                    method:@"GET"
                    queryParams:queryParams
                    body:bodyDictionary
                    headerParams:headerParams
                    requestContentType:requestContentType
                    responseContentType:responseContentType
                    completionBlock:^(NSDictionary *data, YPError *error) {
                    if (error) {
                    completionBlock(nil, error);return;
                    }
                    YPSocialInteraction *result = nil;
                        if (data) {
                        result = [[YPSocialInteraction alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
                

        }
    -(NSNumber*) getSocialInteractionsWithCompletionBlock:(NSString*) sort
        limit:(NSNumber*) limit
        filter:(NSString*) filter
        populate:(NSString*) populate
        populatedeep:(NSString*) populatedeep
        dismissed:(NSNumber*) dismissed
        rejected:(NSNumber*) rejected
        authored:(NSNumber*) authored
        targetId:(NSString*) targetId
        authorType:(NSString*) authorType
        discriminators:(NSString*) discriminators
        refDocId:(NSString*) refDocId
        mode:(NSString*) mode
        completionHandler: (void (^)(NSArray* output, YPError* error))completionBlock{

        NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/socialInteractions", basePath];

        // remove format in URL if needed
        if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

        NSString* requestContentType = @"application/json";
        NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
        if(sort != nil)
        queryParams[@"sort"] = sort;
        if(limit != nil)
        queryParams[@"limit"] = limit;
        if(filter != nil)
        queryParams[@"filter"] = filter;
        if(populate != nil)
        queryParams[@"populate"] = populate;
        if(populatedeep != nil)
        queryParams[@"populatedeep"] = populatedeep;
        if(dismissed != nil)
        queryParams[@"dismissed"] = dismissed;
        if(rejected != nil)
        queryParams[@"rejected"] = rejected;
        if(authored != nil)
        queryParams[@"authored"] = authored;
        if(targetId != nil)
        queryParams[@"targetId"] = targetId;
        if(authorType != nil)
        queryParams[@"authorType"] = authorType;
        if(discriminators != nil)
        queryParams[@"discriminators"] = discriminators;
        if(refDocId != nil)
        queryParams[@"refDocId"] = refDocId;
        if(mode != nil)
        queryParams[@"mode"] = mode;
        NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];


        id bodyDictionary = nil;
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
                for (NSDictionary* dict in (NSArray*)data) {
                    YPSocialInteraction* d = [[YPSocialInteraction alloc]initWithValues: dict];
                [objs addObject:d];
                }
                completionBlock(objs, nil);
                }
                }];
        

        }
    -(NSNumber*) deleteSocialInteractionWithCompletionBlock:(NSString*) _id
        mode:(NSString*) mode
        reason:(NSString*) reason
        completionHandler: (void (^)(YPError* error))completionBlock{

        NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/socialInteractions/{id}", basePath];

        // remove format in URL if needed
        if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [YPApiClient escape:_id]];
        NSString* requestContentType = @"application/json";
        NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
        if(mode != nil)
        queryParams[@"mode"] = mode;
        if(reason != nil)
        queryParams[@"reason"] = reason;
        NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];


        id bodyDictionary = nil;
        if(_id == nil) {
                // error
                }
            YPApiClient* client = [YPApiClient sharedClientFromPool:basePath];

        return [client stringWithCompletionBlock:requestUrl
                    method:@"DELETE"
                    queryParams:queryParams
                    body:bodyDictionary
                    headerParams:headerParams
                    requestContentType: requestContentType
                    responseContentType: responseContentType
                    completionBlock:^(NSString *data, YPError *error) {
                    if (error) {
                    completionBlock(error);
                    return;
                    }
                    completionBlock(nil);
                    }];
                

        }
    
@end
