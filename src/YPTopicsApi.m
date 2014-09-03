#import "YPTopicsApi.h"
    #import "YPFile.h"
    #import "YPApiClient.h"
    #import "YPTopic.h"
    


    @implementation YPTopicsApi
    static NSString * basePath = @"http://localhost:8000";

    +(YPTopicsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static YPTopicsApi* singletonAPI = nil;

    if (singletonAPI == nil) {
    singletonAPI = [[YPTopicsApi alloc] init];
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


    -(NSNumber*) getTopicByIdWithCompletionBlock:(NSString*) _id
        populate:(NSString*) populate
        completionHandler: (void (^)(YPTopic* output, YPError* error))completionBlock{

        NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/topics/{id}", basePath];

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
                    YPTopic *result = nil;
                        if (data) {
                        result = [[YPTopic alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
                

        }
    -(NSNumber*) getTopicsWithCompletionBlock:(NSString*) sort
        limit:(NSNumber*) limit
        filter:(NSString*) filter
        populate:(NSString*) populate
        populatedeep:(NSString*) populatedeep
        completionHandler: (void (^)(NSArray* output, YPError* error))completionBlock{

        NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/topics", basePath];

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
                    YPTopic* d = [[YPTopic alloc]initWithValues: dict];
                [objs addObject:d];
                }
                completionBlock(objs, nil);
                }
                }];
        

        }
    -(NSNumber*) postTopicsWithCompletionBlock:(YPTopic*) body
        completionHandler: (void (^)(YPTopic* output, YPError* error))completionBlock{

        NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/topics", basePath];

        // remove format in URL if needed
        if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

        NSString* requestContentType = @"application/json";
        NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
        NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];


        id bodyDictionary = nil;
        if(body != nil && [body isKindOfClass:[NSArray class]]){
            NSMutableArray * objs = [[NSMutableArray alloc] init];
            for (id dict in (NSArray*)body) {
            if([dict respondsToSelector:@selector(asDictionary)]) {
            [objs addObject:[(YPObject*)dict asDictionary]];
            }
            else{
            [objs addObject:dict];
            }
            }
            bodyDictionary = objs;
            }
            else if([body respondsToSelector:@selector(asDictionary)]) {
            bodyDictionary = [(YPObject*)body asDictionary];
            }
            else if([body isKindOfClass:[NSString class]]) {
            // convert it to a dictionary
            NSError * error;
            NSString * str = (NSString*)body;
            NSDictionary *JSON =
            [NSJSONSerialization JSONObjectWithData:[str dataUsingEncoding:NSUTF8StringEncoding]
            options:NSJSONReadingMutableContainers
            error:&error];
            bodyDictionary = JSON;
            }
            else if([body isKindOfClass: [YPFile class]]) {
            requestContentType = @"form-data";
            bodyDictionary = body;
            }
            else{
            NSLog(@"don't know what to do with %@", body);
            }

        if(body == nil) {
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
                    YPTopic *result = nil;
                        if (data) {
                        result = [[YPTopic alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
                

        }
    -(NSNumber*) deleteTopicWithCompletionBlock:(NSString*) _id
        completionHandler: (void (^)(YPError* error))completionBlock{

        NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/topics/{id}", basePath];

        // remove format in URL if needed
        if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [YPApiClient escape:_id]];
        NSString* requestContentType = @"application/json";
        NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
    -(NSNumber*) deleteTopicsWithCompletionBlock: (void (^)(YPError* error))completionBlock{

        NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/topics", basePath];

        // remove format in URL if needed
        if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

        NSString* requestContentType = @"application/json";
        NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
        NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];


        id bodyDictionary = nil;
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
