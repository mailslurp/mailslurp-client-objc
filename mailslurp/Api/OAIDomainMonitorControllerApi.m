#import "OAIDomainMonitorControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAICheckEmailAuthStackResults.h"
#import "OAICreateDomainMonitorAlertSinkOptions.h"
#import "OAICreateDomainMonitorOptions.h"
#import "OAIDomainMonitorAlertSinkDto.h"
#import "OAIDomainMonitorDto.h"
#import "OAIDomainMonitorInsightsDto.h"
#import "OAIDomainMonitorRunComparisonDto.h"
#import "OAIDomainMonitorRunDto.h"
#import "OAIDomainMonitorRunDueResult.h"
#import "OAIDomainMonitorRunNowResult.h"
#import "OAIDomainMonitorSeriesDto.h"
#import "OAIDomainMonitorSummaryDto.h"
#import "OAIUpdateDomainMonitorOptions.h"


@interface OAIDomainMonitorControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIDomainMonitorControllerApi

NSString* kOAIDomainMonitorControllerApiErrorDomain = @"OAIDomainMonitorControllerApiErrorDomain";
NSInteger kOAIDomainMonitorControllerApiMissingParamErrorCode = 234513;

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
/// Compare two monitor runs
/// 
///  @param monitorId  
///
///  @param runId  
///
///  @param otherRunId  
///
///  @returns OAIDomainMonitorRunComparisonDto*
///
-(NSURLSessionTask*) compareDomainMonitorRunsWithMonitorId: (NSString*) monitorId
    runId: (NSString*) runId
    otherRunId: (NSString*) otherRunId
    completionHandler: (void (^)(OAIDomainMonitorRunComparisonDto* output, NSError* error)) handler {
    // verify the required parameter 'monitorId' is set
    if (monitorId == nil) {
        NSParameterAssert(monitorId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"monitorId"] };
            NSError* error = [NSError errorWithDomain:kOAIDomainMonitorControllerApiErrorDomain code:kOAIDomainMonitorControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'runId' is set
    if (runId == nil) {
        NSParameterAssert(runId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"runId"] };
            NSError* error = [NSError errorWithDomain:kOAIDomainMonitorControllerApiErrorDomain code:kOAIDomainMonitorControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'otherRunId' is set
    if (otherRunId == nil) {
        NSParameterAssert(otherRunId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"otherRunId"] };
            NSError* error = [NSError errorWithDomain:kOAIDomainMonitorControllerApiErrorDomain code:kOAIDomainMonitorControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/domain-monitor/monitors/{monitorId}/runs/{runId}/compare/{otherRunId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (monitorId != nil) {
        pathParams[@"monitorId"] = monitorId;
    }
    if (runId != nil) {
        pathParams[@"runId"] = runId;
    }
    if (otherRunId != nil) {
        pathParams[@"otherRunId"] = otherRunId;
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
                              responseType: @"OAIDomainMonitorRunComparisonDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDomainMonitorRunComparisonDto*)data, error);
                                }
                            }];
}

///
/// Create domain monitor
/// 
///  @param createDomainMonitorOptions  
///
///  @returns OAIDomainMonitorDto*
///
-(NSURLSessionTask*) createDomainMonitorWithCreateDomainMonitorOptions: (OAICreateDomainMonitorOptions*) createDomainMonitorOptions
    completionHandler: (void (^)(OAIDomainMonitorDto* output, NSError* error)) handler {
    // verify the required parameter 'createDomainMonitorOptions' is set
    if (createDomainMonitorOptions == nil) {
        NSParameterAssert(createDomainMonitorOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createDomainMonitorOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIDomainMonitorControllerApiErrorDomain code:kOAIDomainMonitorControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/domain-monitor/monitors"];

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
    bodyParam = createDomainMonitorOptions;

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
                              responseType: @"OAIDomainMonitorDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDomainMonitorDto*)data, error);
                                }
                            }];
}

///
/// Create alert sink for monitor
/// 
///  @param monitorId  
///
///  @param createDomainMonitorAlertSinkOptions  
///
///  @returns OAIDomainMonitorAlertSinkDto*
///
-(NSURLSessionTask*) createDomainMonitorAlertSinkWithMonitorId: (NSString*) monitorId
    createDomainMonitorAlertSinkOptions: (OAICreateDomainMonitorAlertSinkOptions*) createDomainMonitorAlertSinkOptions
    completionHandler: (void (^)(OAIDomainMonitorAlertSinkDto* output, NSError* error)) handler {
    // verify the required parameter 'monitorId' is set
    if (monitorId == nil) {
        NSParameterAssert(monitorId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"monitorId"] };
            NSError* error = [NSError errorWithDomain:kOAIDomainMonitorControllerApiErrorDomain code:kOAIDomainMonitorControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'createDomainMonitorAlertSinkOptions' is set
    if (createDomainMonitorAlertSinkOptions == nil) {
        NSParameterAssert(createDomainMonitorAlertSinkOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createDomainMonitorAlertSinkOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIDomainMonitorControllerApiErrorDomain code:kOAIDomainMonitorControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/domain-monitor/monitors/{monitorId}/alert-sinks"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (monitorId != nil) {
        pathParams[@"monitorId"] = monitorId;
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
    bodyParam = createDomainMonitorAlertSinkOptions;

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
                              responseType: @"OAIDomainMonitorAlertSinkDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDomainMonitorAlertSinkDto*)data, error);
                                }
                            }];
}

///
/// Delete domain monitor
/// 
///  @param monitorId  
///
///  @returns void
///
-(NSURLSessionTask*) deleteDomainMonitorWithMonitorId: (NSString*) monitorId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'monitorId' is set
    if (monitorId == nil) {
        NSParameterAssert(monitorId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"monitorId"] };
            NSError* error = [NSError errorWithDomain:kOAIDomainMonitorControllerApiErrorDomain code:kOAIDomainMonitorControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/domain-monitor/monitors/{monitorId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (monitorId != nil) {
        pathParams[@"monitorId"] = monitorId;
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
/// Delete monitor alert sink
/// 
///  @param monitorId  
///
///  @param sinkId  
///
///  @returns void
///
-(NSURLSessionTask*) deleteDomainMonitorAlertSinkWithMonitorId: (NSString*) monitorId
    sinkId: (NSString*) sinkId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'monitorId' is set
    if (monitorId == nil) {
        NSParameterAssert(monitorId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"monitorId"] };
            NSError* error = [NSError errorWithDomain:kOAIDomainMonitorControllerApiErrorDomain code:kOAIDomainMonitorControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'sinkId' is set
    if (sinkId == nil) {
        NSParameterAssert(sinkId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sinkId"] };
            NSError* error = [NSError errorWithDomain:kOAIDomainMonitorControllerApiErrorDomain code:kOAIDomainMonitorControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/domain-monitor/monitors/{monitorId}/alert-sinks/{sinkId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (monitorId != nil) {
        pathParams[@"monitorId"] = monitorId;
    }
    if (sinkId != nil) {
        pathParams[@"sinkId"] = sinkId;
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
/// Get domain monitor
/// 
///  @param monitorId  
///
///  @returns OAIDomainMonitorDto*
///
-(NSURLSessionTask*) getDomainMonitorWithMonitorId: (NSString*) monitorId
    completionHandler: (void (^)(OAIDomainMonitorDto* output, NSError* error)) handler {
    // verify the required parameter 'monitorId' is set
    if (monitorId == nil) {
        NSParameterAssert(monitorId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"monitorId"] };
            NSError* error = [NSError errorWithDomain:kOAIDomainMonitorControllerApiErrorDomain code:kOAIDomainMonitorControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/domain-monitor/monitors/{monitorId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (monitorId != nil) {
        pathParams[@"monitorId"] = monitorId;
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
                              responseType: @"OAIDomainMonitorDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDomainMonitorDto*)data, error);
                                }
                            }];
}

///
/// List alert sinks for monitor
/// 
///  @param monitorId  
///
///  @returns NSArray<OAIDomainMonitorAlertSinkDto>*
///
-(NSURLSessionTask*) getDomainMonitorAlertSinksWithMonitorId: (NSString*) monitorId
    completionHandler: (void (^)(NSArray<OAIDomainMonitorAlertSinkDto>* output, NSError* error)) handler {
    // verify the required parameter 'monitorId' is set
    if (monitorId == nil) {
        NSParameterAssert(monitorId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"monitorId"] };
            NSError* error = [NSError errorWithDomain:kOAIDomainMonitorControllerApiErrorDomain code:kOAIDomainMonitorControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/domain-monitor/monitors/{monitorId}/alert-sinks"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (monitorId != nil) {
        pathParams[@"monitorId"] = monitorId;
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
                              responseType: @"NSArray<OAIDomainMonitorAlertSinkDto>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIDomainMonitorAlertSinkDto>*)data, error);
                                }
                            }];
}

///
/// Get current auth stack for monitor domain
/// 
///  @param monitorId  
///
///  @param dkimSelector  (optional)
///
///  @returns OAICheckEmailAuthStackResults*
///
-(NSURLSessionTask*) getDomainMonitorAuthStackWithMonitorId: (NSString*) monitorId
    dkimSelector: (NSString*) dkimSelector
    completionHandler: (void (^)(OAICheckEmailAuthStackResults* output, NSError* error)) handler {
    // verify the required parameter 'monitorId' is set
    if (monitorId == nil) {
        NSParameterAssert(monitorId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"monitorId"] };
            NSError* error = [NSError errorWithDomain:kOAIDomainMonitorControllerApiErrorDomain code:kOAIDomainMonitorControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/domain-monitor/monitors/{monitorId}/auth-stack"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (monitorId != nil) {
        pathParams[@"monitorId"] = monitorId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (dkimSelector != nil) {
        queryParams[@"dkimSelector"] = dkimSelector;
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
                              responseType: @"OAICheckEmailAuthStackResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICheckEmailAuthStackResults*)data, error);
                                }
                            }];
}

///
/// Get monitor insights
/// 
///  @param monitorId  
///
///  @param since  (optional)
///
///  @param before  (optional)
///
///  @returns OAIDomainMonitorInsightsDto*
///
-(NSURLSessionTask*) getDomainMonitorInsightsWithMonitorId: (NSString*) monitorId
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIDomainMonitorInsightsDto* output, NSError* error)) handler {
    // verify the required parameter 'monitorId' is set
    if (monitorId == nil) {
        NSParameterAssert(monitorId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"monitorId"] };
            NSError* error = [NSError errorWithDomain:kOAIDomainMonitorControllerApiErrorDomain code:kOAIDomainMonitorControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/domain-monitor/monitors/{monitorId}/insights"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (monitorId != nil) {
        pathParams[@"monitorId"] = monitorId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"OAIDomainMonitorInsightsDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDomainMonitorInsightsDto*)data, error);
                                }
                            }];
}

///
/// Get monitor run
/// 
///  @param monitorId  
///
///  @param runId  
///
///  @returns OAIDomainMonitorRunDto*
///
-(NSURLSessionTask*) getDomainMonitorRunWithMonitorId: (NSString*) monitorId
    runId: (NSString*) runId
    completionHandler: (void (^)(OAIDomainMonitorRunDto* output, NSError* error)) handler {
    // verify the required parameter 'monitorId' is set
    if (monitorId == nil) {
        NSParameterAssert(monitorId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"monitorId"] };
            NSError* error = [NSError errorWithDomain:kOAIDomainMonitorControllerApiErrorDomain code:kOAIDomainMonitorControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'runId' is set
    if (runId == nil) {
        NSParameterAssert(runId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"runId"] };
            NSError* error = [NSError errorWithDomain:kOAIDomainMonitorControllerApiErrorDomain code:kOAIDomainMonitorControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/domain-monitor/monitors/{monitorId}/runs/{runId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (monitorId != nil) {
        pathParams[@"monitorId"] = monitorId;
    }
    if (runId != nil) {
        pathParams[@"runId"] = runId;
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
                              responseType: @"OAIDomainMonitorRunDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDomainMonitorRunDto*)data, error);
                                }
                            }];
}

///
/// List monitor runs
/// 
///  @param monitorId  
///
///  @param since  (optional)
///
///  @param before  (optional)
///
///  @param status  (optional)
///
///  @param limit  (optional)
///
///  @returns NSArray<OAIDomainMonitorRunDto>*
///
-(NSURLSessionTask*) getDomainMonitorRunsWithMonitorId: (NSString*) monitorId
    since: (NSDate*) since
    before: (NSDate*) before
    status: (NSString*) status
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSArray<OAIDomainMonitorRunDto>* output, NSError* error)) handler {
    // verify the required parameter 'monitorId' is set
    if (monitorId == nil) {
        NSParameterAssert(monitorId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"monitorId"] };
            NSError* error = [NSError errorWithDomain:kOAIDomainMonitorControllerApiErrorDomain code:kOAIDomainMonitorControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/domain-monitor/monitors/{monitorId}/runs"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (monitorId != nil) {
        pathParams[@"monitorId"] = monitorId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    if (status != nil) {
        queryParams[@"status"] = status;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
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
                              responseType: @"NSArray<OAIDomainMonitorRunDto>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIDomainMonitorRunDto>*)data, error);
                                }
                            }];
}

///
/// Get monitor trend series
/// 
///  @param monitorId  
///
///  @param since  (optional)
///
///  @param before  (optional)
///
///  @param bucket  (optional, default to @"DAY")
///
///  @returns OAIDomainMonitorSeriesDto*
///
-(NSURLSessionTask*) getDomainMonitorSeriesWithMonitorId: (NSString*) monitorId
    since: (NSDate*) since
    before: (NSDate*) before
    bucket: (NSString*) bucket
    completionHandler: (void (^)(OAIDomainMonitorSeriesDto* output, NSError* error)) handler {
    // verify the required parameter 'monitorId' is set
    if (monitorId == nil) {
        NSParameterAssert(monitorId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"monitorId"] };
            NSError* error = [NSError errorWithDomain:kOAIDomainMonitorControllerApiErrorDomain code:kOAIDomainMonitorControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/domain-monitor/monitors/{monitorId}/series"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (monitorId != nil) {
        pathParams[@"monitorId"] = monitorId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    if (bucket != nil) {
        queryParams[@"bucket"] = bucket;
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
                              responseType: @"OAIDomainMonitorSeriesDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDomainMonitorSeriesDto*)data, error);
                                }
                            }];
}

///
/// Get domain monitor summary
/// 
///  @param monitorId  
///
///  @param dkimSelector  (optional)
///
///  @returns OAIDomainMonitorSummaryDto*
///
-(NSURLSessionTask*) getDomainMonitorSummaryWithMonitorId: (NSString*) monitorId
    dkimSelector: (NSString*) dkimSelector
    completionHandler: (void (^)(OAIDomainMonitorSummaryDto* output, NSError* error)) handler {
    // verify the required parameter 'monitorId' is set
    if (monitorId == nil) {
        NSParameterAssert(monitorId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"monitorId"] };
            NSError* error = [NSError errorWithDomain:kOAIDomainMonitorControllerApiErrorDomain code:kOAIDomainMonitorControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/domain-monitor/monitors/{monitorId}/summary"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (monitorId != nil) {
        pathParams[@"monitorId"] = monitorId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (dkimSelector != nil) {
        queryParams[@"dkimSelector"] = dkimSelector;
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
                              responseType: @"OAIDomainMonitorSummaryDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDomainMonitorSummaryDto*)data, error);
                                }
                            }];
}

///
/// List domain monitors
/// 
///  @returns NSArray<OAIDomainMonitorDto>*
///
-(NSURLSessionTask*) getDomainMonitorsWithCompletionHandler: 
    (void (^)(NSArray<OAIDomainMonitorDto>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/domain-monitor/monitors"];

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
                              responseType: @"NSArray<OAIDomainMonitorDto>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIDomainMonitorDto>*)data, error);
                                }
                            }];
}

///
/// Run monitor now
/// 
///  @param monitorId  
///
///  @returns OAIDomainMonitorRunNowResult*
///
-(NSURLSessionTask*) runDomainMonitorNowWithMonitorId: (NSString*) monitorId
    completionHandler: (void (^)(OAIDomainMonitorRunNowResult* output, NSError* error)) handler {
    // verify the required parameter 'monitorId' is set
    if (monitorId == nil) {
        NSParameterAssert(monitorId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"monitorId"] };
            NSError* error = [NSError errorWithDomain:kOAIDomainMonitorControllerApiErrorDomain code:kOAIDomainMonitorControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/domain-monitor/monitors/{monitorId}/run-now"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (monitorId != nil) {
        pathParams[@"monitorId"] = monitorId;
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
                              responseType: @"OAIDomainMonitorRunNowResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDomainMonitorRunNowResult*)data, error);
                                }
                            }];
}

///
/// Run due monitors for user
/// 
///  @param maxRuns  (optional)
///
///  @returns OAIDomainMonitorRunDueResult*
///
-(NSURLSessionTask*) runDueDomainMonitorsWithMaxRuns: (NSNumber*) maxRuns
    completionHandler: (void (^)(OAIDomainMonitorRunDueResult* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/domain-monitor/monitors/run-due"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (maxRuns != nil) {
        queryParams[@"maxRuns"] = maxRuns;
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
                              responseType: @"OAIDomainMonitorRunDueResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDomainMonitorRunDueResult*)data, error);
                                }
                            }];
}

///
/// Update domain monitor
/// 
///  @param monitorId  
///
///  @param updateDomainMonitorOptions  
///
///  @returns OAIDomainMonitorDto*
///
-(NSURLSessionTask*) updateDomainMonitorWithMonitorId: (NSString*) monitorId
    updateDomainMonitorOptions: (OAIUpdateDomainMonitorOptions*) updateDomainMonitorOptions
    completionHandler: (void (^)(OAIDomainMonitorDto* output, NSError* error)) handler {
    // verify the required parameter 'monitorId' is set
    if (monitorId == nil) {
        NSParameterAssert(monitorId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"monitorId"] };
            NSError* error = [NSError errorWithDomain:kOAIDomainMonitorControllerApiErrorDomain code:kOAIDomainMonitorControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'updateDomainMonitorOptions' is set
    if (updateDomainMonitorOptions == nil) {
        NSParameterAssert(updateDomainMonitorOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"updateDomainMonitorOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIDomainMonitorControllerApiErrorDomain code:kOAIDomainMonitorControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/domain-monitor/monitors/{monitorId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (monitorId != nil) {
        pathParams[@"monitorId"] = monitorId;
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
    bodyParam = updateDomainMonitorOptions;

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
                              responseType: @"OAIDomainMonitorDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDomainMonitorDto*)data, error);
                                }
                            }];
}



@end
