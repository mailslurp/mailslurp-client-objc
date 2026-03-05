#import "OAIRulesetControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAICreateRulesetOptions.h"
#import "OAIInboxRulesetTestResult.h"
#import "OAIPageRulesetDto.h"
#import "OAIRulesetDto.h"
#import "OAIRulesetTestOptions.h"
#import "OAITestInboxRulesetSendingOptions.h"
#import "OAITestNewInboxRulesetOptions.h"
#import "OAITestRulesetReceivingOptions.h"
#import "OAITestRulesetReceivingResult.h"
#import "OAITestRulesetSendingResult.h"


@interface OAIRulesetControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIRulesetControllerApi

NSString* kOAIRulesetControllerApiErrorDomain = @"OAIRulesetControllerApiErrorDomain";
NSInteger kOAIRulesetControllerApiMissingParamErrorCode = 234513;

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
/// Create a ruleset
/// Create a new inbox or phone number rule for forwarding, blocking, and allowing emails or SMS when sending and receiving
///  @param createRulesetOptions  
///
///  @param inboxId Inbox id to attach ruleset to (optional)
///
///  @param phoneId Phone id to attach ruleset to (optional)
///
///  @returns OAIRulesetDto*
///
-(NSURLSessionTask*) createNewRulesetWithCreateRulesetOptions: (OAICreateRulesetOptions*) createRulesetOptions
    inboxId: (NSString*) inboxId
    phoneId: (NSString*) phoneId
    completionHandler: (void (^)(OAIRulesetDto* output, NSError* error)) handler {
    // verify the required parameter 'createRulesetOptions' is set
    if (createRulesetOptions == nil) {
        NSParameterAssert(createRulesetOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createRulesetOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIRulesetControllerApiErrorDomain code:kOAIRulesetControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/rulesets"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
    }
    if (phoneId != nil) {
        queryParams[@"phoneId"] = phoneId;
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
    bodyParam = createRulesetOptions;

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
                              responseType: @"OAIRulesetDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRulesetDto*)data, error);
                                }
                            }];
}

///
/// Delete a ruleset
/// Delete ruleset
///  @param _id ID of ruleset 
///
///  @returns void
///
-(NSURLSessionTask*) deleteRulesetWithId: (NSString*) _id
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRulesetControllerApiErrorDomain code:kOAIRulesetControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/rulesets/{id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
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
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Delete rulesets
/// Delete rulesets. Accepts optional inboxId or phoneId filters.
///  @param inboxId Optional inbox id to attach ruleset to (optional)
///
///  @param phoneId  (optional)
///
///  @returns void
///
-(NSURLSessionTask*) deleteRulesetsWithInboxId: (NSString*) inboxId
    phoneId: (NSString*) phoneId
    completionHandler: (void (^)(NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/rulesets"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
    }
    if (phoneId != nil) {
        queryParams[@"phoneId"] = phoneId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
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
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Get a ruleset
/// Get ruleset
///  @param _id ID of ruleset 
///
///  @returns OAIRulesetDto*
///
-(NSURLSessionTask*) getRulesetWithId: (NSString*) _id
    completionHandler: (void (^)(OAIRulesetDto* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRulesetControllerApiErrorDomain code:kOAIRulesetControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/rulesets/{id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

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
                              responseType: @"OAIRulesetDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRulesetDto*)data, error);
                                }
                            }];
}

///
/// List rulesets block and allow lists
/// List all rulesets attached to an inbox or phone or account
///  @param inboxId Optional inbox id to get rulesets from (optional)
///
///  @param phoneId Optional phone id to get rulesets from (optional)
///
///  @param page Optional page index in inbox ruleset list pagination (optional, default to @0)
///
///  @param size Optional page size in inbox ruleset list pagination (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @param searchFilter Optional search filter (optional)
///
///  @param since Filter by created at after the given timestamp (optional)
///
///  @param before Filter by created at before the given timestamp (optional)
///
///  @returns OAIPageRulesetDto*
///
-(NSURLSessionTask*) getRulesetsWithInboxId: (NSString*) inboxId
    phoneId: (NSString*) phoneId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageRulesetDto* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/rulesets"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
    }
    if (phoneId != nil) {
        queryParams[@"phoneId"] = phoneId;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (size != nil) {
        queryParams[@"size"] = size;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (searchFilter != nil) {
        queryParams[@"searchFilter"] = searchFilter;
    }
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
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
                              responseType: @"OAIPageRulesetDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageRulesetDto*)data, error);
                                }
                            }];
}

///
/// Test inbox rulesets for inbox
/// Test inbox rulesets for inbox
///  @param inboxId ID of inbox 
///
///  @param rulesetTestOptions  
///
///  @returns OAIInboxRulesetTestResult*
///
-(NSURLSessionTask*) testInboxRulesetsForInboxWithInboxId: (NSString*) inboxId
    rulesetTestOptions: (OAIRulesetTestOptions*) rulesetTestOptions
    completionHandler: (void (^)(OAIInboxRulesetTestResult* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIRulesetControllerApiErrorDomain code:kOAIRulesetControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'rulesetTestOptions' is set
    if (rulesetTestOptions == nil) {
        NSParameterAssert(rulesetTestOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rulesetTestOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIRulesetControllerApiErrorDomain code:kOAIRulesetControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/rulesets"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
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
    bodyParam = rulesetTestOptions;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInboxRulesetTestResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInboxRulesetTestResult*)data, error);
                                }
                            }];
}

///
/// Test new ruleset
/// Test new ruleset
///  @param testNewInboxRulesetOptions  
///
///  @returns OAIInboxRulesetTestResult*
///
-(NSURLSessionTask*) testNewRulesetWithTestNewInboxRulesetOptions: (OAITestNewInboxRulesetOptions*) testNewInboxRulesetOptions
    completionHandler: (void (^)(OAIInboxRulesetTestResult* output, NSError* error)) handler {
    // verify the required parameter 'testNewInboxRulesetOptions' is set
    if (testNewInboxRulesetOptions == nil) {
        NSParameterAssert(testNewInboxRulesetOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testNewInboxRulesetOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIRulesetControllerApiErrorDomain code:kOAIRulesetControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/rulesets"];

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
    bodyParam = testNewInboxRulesetOptions;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PATCH"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInboxRulesetTestResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInboxRulesetTestResult*)data, error);
                                }
                            }];
}

///
/// Test a ruleset
/// Test an inbox or phone ruleset
///  @param _id ID of ruleset 
///
///  @param rulesetTestOptions  
///
///  @returns OAIInboxRulesetTestResult*
///
-(NSURLSessionTask*) testRulesetWithId: (NSString*) _id
    rulesetTestOptions: (OAIRulesetTestOptions*) rulesetTestOptions
    completionHandler: (void (^)(OAIInboxRulesetTestResult* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIRulesetControllerApiErrorDomain code:kOAIRulesetControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'rulesetTestOptions' is set
    if (rulesetTestOptions == nil) {
        NSParameterAssert(rulesetTestOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rulesetTestOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIRulesetControllerApiErrorDomain code:kOAIRulesetControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/rulesets/{id}/test"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

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
    bodyParam = rulesetTestOptions;

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
                              responseType: @"OAIInboxRulesetTestResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInboxRulesetTestResult*)data, error);
                                }
                            }];
}

///
/// Test receiving with rulesets
/// Test whether inbound emails from an email address would be blocked or allowed by inbox rulesets or test if phone number can receive SMS
///  @param testRulesetReceivingOptions  
///
///  @returns OAITestRulesetReceivingResult*
///
-(NSURLSessionTask*) testRulesetReceivingWithTestRulesetReceivingOptions: (OAITestRulesetReceivingOptions*) testRulesetReceivingOptions
    completionHandler: (void (^)(OAITestRulesetReceivingResult* output, NSError* error)) handler {
    // verify the required parameter 'testRulesetReceivingOptions' is set
    if (testRulesetReceivingOptions == nil) {
        NSParameterAssert(testRulesetReceivingOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testRulesetReceivingOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIRulesetControllerApiErrorDomain code:kOAIRulesetControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/rulesets/test-receiving"];

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
    bodyParam = testRulesetReceivingOptions;

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
                              responseType: @"OAITestRulesetReceivingResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITestRulesetReceivingResult*)data, error);
                                }
                            }];
}

///
/// Test sending with rulesets
/// Test whether outbound emails to an email address would be blocked or allowed by inbox rulesets or whether a phone number can send SMS
///  @param testInboxRulesetSendingOptions  
///
///  @returns OAITestRulesetSendingResult*
///
-(NSURLSessionTask*) testRulesetSendingWithTestInboxRulesetSendingOptions: (OAITestInboxRulesetSendingOptions*) testInboxRulesetSendingOptions
    completionHandler: (void (^)(OAITestRulesetSendingResult* output, NSError* error)) handler {
    // verify the required parameter 'testInboxRulesetSendingOptions' is set
    if (testInboxRulesetSendingOptions == nil) {
        NSParameterAssert(testInboxRulesetSendingOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testInboxRulesetSendingOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIRulesetControllerApiErrorDomain code:kOAIRulesetControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/rulesets/test-sending"];

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
    bodyParam = testInboxRulesetSendingOptions;

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
                              responseType: @"OAITestRulesetSendingResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITestRulesetSendingResult*)data, error);
                                }
                            }];
}



@end
