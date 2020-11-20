#import "OAIWaitForControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIEmail.h"
#import "OAIEmailPreview.h"
#import "OAIMatchOptions.h"
#import "OAIWaitForConditions.h"


@interface OAIWaitForControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIWaitForControllerApi

NSString* kOAIWaitForControllerApiErrorDomain = @"OAIWaitForControllerApiErrorDomain";
NSInteger kOAIWaitForControllerApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Wait for conditions to be met
/// Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met
///  @param waitForConditions Conditions to wait for (optional)
///
///  @returns NSArray<OAIEmailPreview>*
///
-(NSURLSessionTask*) waitForWithWaitForConditions: (OAIWaitForConditions*) waitForConditions
    completionHandler: (void (^)(NSArray<OAIEmailPreview>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/waitFor"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = waitForConditions;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<OAIEmailPreview>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIEmailPreview>*)data, error);
                                }
                            }];
}

///
/// Wait for and return count number of emails 
/// If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.
///  @param count Number of emails to wait for. Must be greater that 1 (optional)
///
///  @param inboxId Id of the inbox we are fetching emails from (optional)
///
///  @param timeout Max milliseconds to wait (optional)
///
///  @param unreadOnly Optional filter for unread only (optional, default to @(NO))
///
///  @returns NSArray<OAIEmailPreview>*
///
-(NSURLSessionTask*) waitForEmailCountWithCount: (NSNumber*) count
    inboxId: (NSString*) inboxId
    timeout: (NSNumber*) timeout
    unreadOnly: (NSNumber*) unreadOnly
    completionHandler: (void (^)(NSArray<OAIEmailPreview>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/waitForEmailCount"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (count != nil) {
        queryParams[@"count"] = count;
    }
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
    }
    if (timeout != nil) {
        queryParams[@"timeout"] = timeout;
    }
    if (unreadOnly != nil) {
        queryParams[@"unreadOnly"] = [unreadOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<OAIEmailPreview>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIEmailPreview>*)data, error);
                                }
                            }];
}

///
/// Fetch inbox's latest email or if empty wait for an email to arrive
/// Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set `unreadOnly=true` or see the other receive methods such as `waitForNthEmail` or `waitForEmailCount`.
///  @param inboxId Id of the inbox we are fetching emails from (optional)
///
///  @param timeout Max milliseconds to wait (optional)
///
///  @param unreadOnly Optional filter for unread only. (optional, default to @(NO))
///
///  @returns OAIEmail*
///
-(NSURLSessionTask*) waitForLatestEmailWithInboxId: (NSString*) inboxId
    timeout: (NSNumber*) timeout
    unreadOnly: (NSNumber*) unreadOnly
    completionHandler: (void (^)(OAIEmail* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/waitForLatestEmail"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
    }
    if (timeout != nil) {
        queryParams[@"timeout"] = timeout;
    }
    if (unreadOnly != nil) {
        queryParams[@"unreadOnly"] = [unreadOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIEmail*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmail*)data, error);
                                }
                            }];
}

///
/// Wait or return list of emails that match simple matching patterns
/// Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options.
///  @param matchOptions matchOptions 
///
///  @param count Number of emails to wait for. Must be greater that 1 (optional)
///
///  @param inboxId Id of the inbox we are fetching emails from (optional)
///
///  @param timeout Max milliseconds to wait (optional)
///
///  @param unreadOnly Optional filter for unread only (optional, default to @(NO))
///
///  @returns NSArray<OAIEmailPreview>*
///
-(NSURLSessionTask*) waitForMatchingEmailWithMatchOptions: (OAIMatchOptions*) matchOptions
    count: (NSNumber*) count
    inboxId: (NSString*) inboxId
    timeout: (NSNumber*) timeout
    unreadOnly: (NSNumber*) unreadOnly
    completionHandler: (void (^)(NSArray<OAIEmailPreview>* output, NSError* error)) handler {
    // verify the required parameter 'matchOptions' is set
    if (matchOptions == nil) {
        NSParameterAssert(matchOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"matchOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIWaitForControllerApiErrorDomain code:kOAIWaitForControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/waitForMatchingEmails"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (count != nil) {
        queryParams[@"count"] = count;
    }
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
    }
    if (timeout != nil) {
        queryParams[@"timeout"] = timeout;
    }
    if (unreadOnly != nil) {
        queryParams[@"unreadOnly"] = [unreadOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = matchOptions;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<OAIEmailPreview>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIEmailPreview>*)data, error);
                                }
                            }];
}

///
/// Wait for or fetch the email with a given index in the inbox specified
/// If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.
///  @param inboxId Id of the inbox you are fetching emails from (optional)
///
///  @param index Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index=1 (optional, default to @0)
///
///  @param timeout Max milliseconds to wait for the nth email if not already present (optional)
///
///  @param unreadOnly Optional filter for unread only (optional, default to @(NO))
///
///  @returns OAIEmail*
///
-(NSURLSessionTask*) waitForNthEmailWithInboxId: (NSString*) inboxId
    index: (NSNumber*) index
    timeout: (NSNumber*) timeout
    unreadOnly: (NSNumber*) unreadOnly
    completionHandler: (void (^)(OAIEmail* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/waitForNthEmail"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
    }
    if (index != nil) {
        queryParams[@"index"] = index;
    }
    if (timeout != nil) {
        queryParams[@"timeout"] = timeout;
    }
    if (unreadOnly != nil) {
        queryParams[@"unreadOnly"] = [unreadOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIEmail*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmail*)data, error);
                                }
                            }];
}



@end
