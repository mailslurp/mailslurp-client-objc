#import "OAIMissedEmailControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIMissedEmail.h"
#import "OAIPageMissedEmailProjection.h"
#import "OAIPageUnknownMissedEmailProjection.h"


@interface OAIMissedEmailControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIMissedEmailControllerApi

NSString* kOAIMissedEmailControllerApiErrorDomain = @"OAIMissedEmailControllerApiErrorDomain";
NSInteger kOAIMissedEmailControllerApiMissingParamErrorCode = 234513;

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
/// Get all MissedEmails in paginated format
/// 
///  @param before Filter by created at before the given timestamp (optional)
///
///  @param inboxId Optional inbox ID filter (optional)
///
///  @param page Optional page index in list pagination (optional, default to @0)
///
///  @param searchFilter Optional search filter (optional)
///
///  @param since Filter by created at after the given timestamp (optional)
///
///  @param size Optional page size in list pagination (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @returns OAIPageMissedEmailProjection*
///
-(NSURLSessionTask*) getAllMissedEmailsWithBefore: (NSDate*) before
    inboxId: (NSString*) inboxId
    page: (NSNumber*) page
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIPageMissedEmailProjection* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/missed-emails"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (searchFilter != nil) {
        queryParams[@"searchFilter"] = searchFilter;
    }
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (size != nil) {
        queryParams[@"size"] = size;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
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
                              responseType: @"OAIPageMissedEmailProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageMissedEmailProjection*)data, error);
                                }
                            }];
}

///
/// Get all unknown missed emails in paginated format
/// Unknown missed emails are emails that were sent to MailSlurp but could not be assigned to an existing inbox.
///  @param before Filter by created at before the given timestamp (optional)
///
///  @param inboxId Optional inbox ID filter (optional)
///
///  @param page Optional page index in list pagination (optional, default to @0)
///
///  @param searchFilter Optional search filter (optional)
///
///  @param since Filter by created at after the given timestamp (optional)
///
///  @param size Optional page size in list pagination (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @returns OAIPageUnknownMissedEmailProjection*
///
-(NSURLSessionTask*) getAllUnknownMissedEmailsWithBefore: (NSDate*) before
    inboxId: (NSString*) inboxId
    page: (NSNumber*) page
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIPageUnknownMissedEmailProjection* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/missed-emails/unknown"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (searchFilter != nil) {
        queryParams[@"searchFilter"] = searchFilter;
    }
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (size != nil) {
        queryParams[@"size"] = size;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
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
                              responseType: @"OAIPageUnknownMissedEmailProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageUnknownMissedEmailProjection*)data, error);
                                }
                            }];
}

///
/// Get MissedEmail
/// 
///  @param missedEmailId missedEmailId 
///
///  @returns OAIMissedEmail*
///
-(NSURLSessionTask*) getMissedEmailWithMissedEmailId: (NSString*) missedEmailId
    completionHandler: (void (^)(OAIMissedEmail* output, NSError* error)) handler {
    // verify the required parameter 'missedEmailId' is set
    if (missedEmailId == nil) {
        NSParameterAssert(missedEmailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"missedEmailId"] };
            NSError* error = [NSError errorWithDomain:kOAIMissedEmailControllerApiErrorDomain code:kOAIMissedEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/missed-emails/{missedEmailId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (missedEmailId != nil) {
        pathParams[@"missedEmailId"] = missedEmailId;
    }

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
                              responseType: @"OAIMissedEmail*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMissedEmail*)data, error);
                                }
                            }];
}

///
/// Wait for Nth missed email
/// Wait for 0 based index missed email
///  @param before Filter by created at before the given timestamp (optional)
///
///  @param inboxId Optional inbox ID filter (optional)
///
///  @param index Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index=1 (optional)
///
///  @param since Filter by created at after the given timestamp (optional)
///
///  @param timeout Optional timeout milliseconds (optional)
///
///  @returns OAIMissedEmail*
///
-(NSURLSessionTask*) waitForNthMissedEmailWithBefore: (NSDate*) before
    inboxId: (NSString*) inboxId
    index: (NSNumber*) index
    since: (NSDate*) since
    timeout: (NSNumber*) timeout
    completionHandler: (void (^)(OAIMissedEmail* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/missed-emails/waitForNthMissedEmail"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
    }
    if (index != nil) {
        queryParams[@"index"] = index;
    }
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (timeout != nil) {
        queryParams[@"timeout"] = timeout;
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
                              responseType: @"OAIMissedEmail*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMissedEmail*)data, error);
                                }
                            }];
}



@end
