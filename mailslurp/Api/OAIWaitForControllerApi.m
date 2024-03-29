#import "OAIWaitForControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIEmail.h"
#import "OAIEmailPreview.h"
#import "OAIMatchOptions.h"
#import "OAISmsDto.h"
#import "OAISmsPreview.h"
#import "OAIWaitForConditions.h"
#import "OAIWaitForSingleSmsOptions.h"
#import "OAIWaitForSmsConditions.h"


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
/// Wait for an email to match the provided filter conditions such as subject contains keyword.
/// Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met
///  @param waitForConditions  
///
///  @returns NSArray<OAIEmailPreview>*
///
-(NSURLSessionTask*) waitForWithWaitForConditions: (OAIWaitForConditions*) waitForConditions
    completionHandler: (void (^)(NSArray<OAIEmailPreview>* output, NSError* error)) handler {
    // verify the required parameter 'waitForConditions' is set
    if (waitForConditions == nil) {
        NSParameterAssert(waitForConditions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"waitForConditions"] };
            NSError* error = [NSError errorWithDomain:kOAIWaitForControllerApiErrorDomain code:kOAIWaitForControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/waitFor"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
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
/// Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
/// If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.
///  @param inboxId Id of the inbox we are fetching emails from 
///
///  @param count Number of emails to wait for. Must be greater that 1 
///
///  @param timeout Max milliseconds to wait (optional)
///
///  @param unreadOnly Optional filter for unread only (optional, default to @(NO))
///
///  @param before Filter for emails that were received before the given timestamp (optional)
///
///  @param since Filter for emails that were received after the given timestamp (optional)
///
///  @param sort Sort direction (optional)
///
///  @param delay Max milliseconds delay between calls (optional)
///
///  @returns NSArray<OAIEmailPreview>*
///
-(NSURLSessionTask*) waitForEmailCountWithInboxId: (NSString*) inboxId
    count: (NSNumber*) count
    timeout: (NSNumber*) timeout
    unreadOnly: (NSNumber*) unreadOnly
    before: (NSDate*) before
    since: (NSDate*) since
    sort: (NSString*) sort
    delay: (NSNumber*) delay
    completionHandler: (void (^)(NSArray<OAIEmailPreview>* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIWaitForControllerApiErrorDomain code:kOAIWaitForControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'count' is set
    if (count == nil) {
        NSParameterAssert(count);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"count"] };
            NSError* error = [NSError errorWithDomain:kOAIWaitForControllerApiErrorDomain code:kOAIWaitForControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/waitForEmailCount"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
    }
    if (count != nil) {
        queryParams[@"count"] = count;
    }
    if (timeout != nil) {
        queryParams[@"timeout"] = timeout;
    }
    if (unreadOnly != nil) {
        queryParams[@"unreadOnly"] = [unreadOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (delay != nil) {
        queryParams[@"delay"] = delay;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
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
///  @param before Filter for emails that were before after the given timestamp (optional)
///
///  @param since Filter for emails that were received after the given timestamp (optional)
///
///  @param sort Sort direction (optional)
///
///  @param delay Max milliseconds delay between calls (optional)
///
///  @returns OAIEmail*
///
-(NSURLSessionTask*) waitForLatestEmailWithInboxId: (NSString*) inboxId
    timeout: (NSNumber*) timeout
    unreadOnly: (NSNumber*) unreadOnly
    before: (NSDate*) before
    since: (NSDate*) since
    sort: (NSString*) sort
    delay: (NSNumber*) delay
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
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (delay != nil) {
        queryParams[@"delay"] = delay;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
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
/// Wait for the latest SMS message to match the provided filter conditions such as body contains keyword.
/// Wait until a phone number meets given conditions or return immediately if already met
///  @param waitForSingleSmsOptions  
///
///  @returns OAISmsDto*
///
-(NSURLSessionTask*) waitForLatestSmsWithWaitForSingleSmsOptions: (OAIWaitForSingleSmsOptions*) waitForSingleSmsOptions
    completionHandler: (void (^)(OAISmsDto* output, NSError* error)) handler {
    // verify the required parameter 'waitForSingleSmsOptions' is set
    if (waitForSingleSmsOptions == nil) {
        NSParameterAssert(waitForSingleSmsOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"waitForSingleSmsOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIWaitForControllerApiErrorDomain code:kOAIWaitForControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/waitForLatestSms"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
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
    bodyParam = waitForSingleSmsOptions;

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
                              responseType: @"OAISmsDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISmsDto*)data, error);
                                }
                            }];
}

///
/// Wait or return list of emails that match simple matching patterns
/// Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
///  @param inboxId Id of the inbox we are fetching emails from 
///
///  @param count Number of emails to wait for. Must be greater or equal to 1 
///
///  @param matchOptions  
///
///  @param before Filter for emails that were received before the given timestamp (optional)
///
///  @param since Filter for emails that were received after the given timestamp (optional)
///
///  @param sort Sort direction (optional)
///
///  @param delay Max milliseconds delay between calls (optional)
///
///  @param timeout Max milliseconds to wait (optional)
///
///  @param unreadOnly Optional filter for unread only (optional, default to @(NO))
///
///  @returns NSArray<OAIEmailPreview>*
///
-(NSURLSessionTask*) waitForMatchingEmailsWithInboxId: (NSString*) inboxId
    count: (NSNumber*) count
    matchOptions: (OAIMatchOptions*) matchOptions
    before: (NSDate*) before
    since: (NSDate*) since
    sort: (NSString*) sort
    delay: (NSNumber*) delay
    timeout: (NSNumber*) timeout
    unreadOnly: (NSNumber*) unreadOnly
    completionHandler: (void (^)(NSArray<OAIEmailPreview>* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIWaitForControllerApiErrorDomain code:kOAIWaitForControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'count' is set
    if (count == nil) {
        NSParameterAssert(count);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"count"] };
            NSError* error = [NSError errorWithDomain:kOAIWaitForControllerApiErrorDomain code:kOAIWaitForControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

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
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
    }
    if (count != nil) {
        queryParams[@"count"] = count;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (delay != nil) {
        queryParams[@"delay"] = delay;
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
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
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
/// Wait for or return the first email that matches provided MatchOptions array
/// Perform a search of emails in an inbox with the given patterns. If a result if found then return or else retry the search until a result is found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
///  @param inboxId Id of the inbox we are matching an email for 
///
///  @param matchOptions  
///
///  @param timeout Max milliseconds to wait (optional)
///
///  @param unreadOnly Optional filter for unread only (optional, default to @(NO))
///
///  @param since Filter for emails that were received after the given timestamp (optional)
///
///  @param before Filter for emails that were received before the given timestamp (optional)
///
///  @param sort Sort direction (optional)
///
///  @param delay Max milliseconds delay between calls (optional)
///
///  @returns OAIEmail*
///
-(NSURLSessionTask*) waitForMatchingFirstEmailWithInboxId: (NSString*) inboxId
    matchOptions: (OAIMatchOptions*) matchOptions
    timeout: (NSNumber*) timeout
    unreadOnly: (NSNumber*) unreadOnly
    since: (NSDate*) since
    before: (NSDate*) before
    sort: (NSString*) sort
    delay: (NSNumber*) delay
    completionHandler: (void (^)(OAIEmail* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIWaitForControllerApiErrorDomain code:kOAIWaitForControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

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

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/waitForMatchingFirstEmail"];

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
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (delay != nil) {
        queryParams[@"delay"] = delay;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
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
                              responseType: @"OAIEmail*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmail*)data, error);
                                }
                            }];
}

///
/// Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.
/// If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.
///  @param inboxId Id of the inbox you are fetching emails from (optional)
///
///  @param index Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index=1 (optional, default to @0)
///
///  @param timeout Max milliseconds to wait for the nth email if not already present (optional)
///
///  @param unreadOnly Optional filter for unread only (optional, default to @(NO))
///
///  @param since Filter for emails that were received after the given timestamp (optional)
///
///  @param before Filter for emails that were received before the given timestamp (optional)
///
///  @param sort Sort direction (optional)
///
///  @param delay Max milliseconds delay between calls (optional)
///
///  @returns OAIEmail*
///
-(NSURLSessionTask*) waitForNthEmailWithInboxId: (NSString*) inboxId
    index: (NSNumber*) index
    timeout: (NSNumber*) timeout
    unreadOnly: (NSNumber*) unreadOnly
    since: (NSDate*) since
    before: (NSDate*) before
    sort: (NSString*) sort
    delay: (NSNumber*) delay
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
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (delay != nil) {
        queryParams[@"delay"] = delay;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
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
/// Wait for an SMS message to match the provided filter conditions such as body contains keyword.
/// Generic waitFor method that will wait until a phone number meets given conditions or return immediately if already met
///  @param waitForSmsConditions  
///
///  @returns NSArray<OAISmsPreview>*
///
-(NSURLSessionTask*) waitForSmsWithWaitForSmsConditions: (OAIWaitForSmsConditions*) waitForSmsConditions
    completionHandler: (void (^)(NSArray<OAISmsPreview>* output, NSError* error)) handler {
    // verify the required parameter 'waitForSmsConditions' is set
    if (waitForSmsConditions == nil) {
        NSParameterAssert(waitForSmsConditions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"waitForSmsConditions"] };
            NSError* error = [NSError errorWithDomain:kOAIWaitForControllerApiErrorDomain code:kOAIWaitForControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/waitForSms"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
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
    bodyParam = waitForSmsConditions;

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
                              responseType: @"NSArray<OAISmsPreview>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAISmsPreview>*)data, error);
                                }
                            }];
}



@end
