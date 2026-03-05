#import "OAIDeliverabilityTestControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAICreateDeliverabilitySimulationJobOptions.h"
#import "OAICreateDeliverabilityTestOptions.h"
#import "OAIDeleteResult.h"
#import "OAIDeliverabilityAnalyticsSeriesDto.h"
#import "OAIDeliverabilityEntityResultPageDto.h"
#import "OAIDeliverabilityFailureHotspotsDto.h"
#import "OAIDeliverabilityPollStatusResultDto.h"
#import "OAIDeliverabilitySimulationJobDto.h"
#import "OAIDeliverabilitySimulationJobEventPageDto.h"
#import "OAIDeliverabilityTestDto.h"
#import "OAIDeliverabilityTestPageDto.h"
#import "OAIUpdateDeliverabilityTestOptions.h"


@interface OAIDeliverabilityTestControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIDeliverabilityTestControllerApi

NSString* kOAIDeliverabilityTestControllerApiErrorDomain = @"OAIDeliverabilityTestControllerApiErrorDomain";
NSInteger kOAIDeliverabilityTestControllerApiMissingParamErrorCode = 234513;

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
/// Cancel deliverability simulation job
/// Cancel a running or paused simulation job.
///  @param testId  
///
///  @param jobId  
///
///  @returns OAIDeliverabilitySimulationJobDto*
///
-(NSURLSessionTask*) cancelDeliverabilitySimulationJobWithTestId: (NSString*) testId
    jobId: (NSString*) jobId
    completionHandler: (void (^)(OAIDeliverabilitySimulationJobDto* output, NSError* error)) handler {
    // verify the required parameter 'testId' is set
    if (testId == nil) {
        NSParameterAssert(testId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'jobId' is set
    if (jobId == nil) {
        NSParameterAssert(jobId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"jobId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability/{testId}/simulation-jobs/{jobId}/cancel"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (testId != nil) {
        pathParams[@"testId"] = testId;
    }
    if (jobId != nil) {
        pathParams[@"jobId"] = jobId;
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
                              responseType: @"OAIDeliverabilitySimulationJobDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliverabilitySimulationJobDto*)data, error);
                                }
                            }];
}

///
/// Create deliverability simulation job
/// Create and start a simulation job for a running deliverability test. Only one active simulation job is allowed per user.
///  @param testId  
///
///  @param createDeliverabilitySimulationJobOptions  
///
///  @returns OAIDeliverabilitySimulationJobDto*
///
-(NSURLSessionTask*) createDeliverabilitySimulationJobWithTestId: (NSString*) testId
    createDeliverabilitySimulationJobOptions: (OAICreateDeliverabilitySimulationJobOptions*) createDeliverabilitySimulationJobOptions
    completionHandler: (void (^)(OAIDeliverabilitySimulationJobDto* output, NSError* error)) handler {
    // verify the required parameter 'testId' is set
    if (testId == nil) {
        NSParameterAssert(testId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'createDeliverabilitySimulationJobOptions' is set
    if (createDeliverabilitySimulationJobOptions == nil) {
        NSParameterAssert(createDeliverabilitySimulationJobOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createDeliverabilitySimulationJobOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability/{testId}/simulation-jobs"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (testId != nil) {
        pathParams[@"testId"] = testId;
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
    bodyParam = createDeliverabilitySimulationJobOptions;

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
                              responseType: @"OAIDeliverabilitySimulationJobDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliverabilitySimulationJobDto*)data, error);
                                }
                            }];
}

///
/// Create deliverability/load test
/// Create a deliverability test for inboxes or phone numbers using ALL, PATTERN, or EXPLICIT selector scope.
///  @param createDeliverabilityTestOptions  
///
///  @returns OAIDeliverabilityTestDto*
///
-(NSURLSessionTask*) createDeliverabilityTestWithCreateDeliverabilityTestOptions: (OAICreateDeliverabilityTestOptions*) createDeliverabilityTestOptions
    completionHandler: (void (^)(OAIDeliverabilityTestDto* output, NSError* error)) handler {
    // verify the required parameter 'createDeliverabilityTestOptions' is set
    if (createDeliverabilityTestOptions == nil) {
        NSParameterAssert(createDeliverabilityTestOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createDeliverabilityTestOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability"];

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
    bodyParam = createDeliverabilityTestOptions;

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
                              responseType: @"OAIDeliverabilityTestDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliverabilityTestDto*)data, error);
                                }
                            }];
}

///
/// Delete deliverability/load test
/// Delete test and all persisted entity-level results.
///  @param testId  
///
///  @returns OAIDeleteResult*
///
-(NSURLSessionTask*) deleteDeliverabilityTestWithTestId: (NSString*) testId
    completionHandler: (void (^)(OAIDeleteResult* output, NSError* error)) handler {
    // verify the required parameter 'testId' is set
    if (testId == nil) {
        NSParameterAssert(testId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability/{testId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (testId != nil) {
        pathParams[@"testId"] = testId;
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
                              responseType: @"OAIDeleteResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeleteResult*)data, error);
                                }
                            }];
}

///
/// Duplicate deliverability/load test
/// Create a fresh deliverability test using an existing test configuration, including selector scope, exclusions, and expectations.
///  @param testId  
///
///  @returns OAIDeliverabilityTestDto*
///
-(NSURLSessionTask*) duplicateDeliverabilityTestWithTestId: (NSString*) testId
    completionHandler: (void (^)(OAIDeliverabilityTestDto* output, NSError* error)) handler {
    // verify the required parameter 'testId' is set
    if (testId == nil) {
        NSParameterAssert(testId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability/{testId}/duplicate"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (testId != nil) {
        pathParams[@"testId"] = testId;
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
                              responseType: @"OAIDeliverabilityTestDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliverabilityTestDto*)data, error);
                                }
                            }];
}

///
/// Export deliverability/load test report as PDF
/// Export a PDF report for a terminal deliverability test (COMPLETE, FAILED, or STOPPED), including configuration, summary outcomes, and detailed entity-level results.
///  @param testId  
///
///  @returns void
///
-(NSURLSessionTask*) exportDeliverabilityTestReportWithTestId: (NSString*) testId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'testId' is set
    if (testId == nil) {
        NSParameterAssert(testId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability/{testId}/report/export"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (testId != nil) {
        pathParams[@"testId"] = testId;
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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Export deliverability/load test entity results as CSV
/// Export per-entity deliverability results including expectation-level pass/fail counts. The latest status is evaluated with the same polling safeguards before export.
///  @param testId  
///
///  @param matched  (optional)
///
///  @returns void
///
-(NSURLSessionTask*) exportDeliverabilityTestResultsWithTestId: (NSString*) testId
    matched: (NSNumber*) matched
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'testId' is set
    if (testId == nil) {
        NSParameterAssert(testId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability/{testId}/results/export"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (testId != nil) {
        pathParams[@"testId"] = testId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (matched != nil) {
        queryParams[@"matched"] = [matched isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Get deliverability analytics time series
/// Compare deliverability runs over a time range with bucketed chart metrics and run-level rows for table views.
///  @param since  (optional)
///
///  @param before  (optional)
///
///  @param scope  (optional)
///
///  @param bucket  (optional, default to @"DAY")
///
///  @param runLimit  (optional)
///
///  @returns OAIDeliverabilityAnalyticsSeriesDto*
///
-(NSURLSessionTask*) getDeliverabilityAnalyticsSeriesWithSince: (NSDate*) since
    before: (NSDate*) before
    scope: (NSString*) scope
    bucket: (NSString*) bucket
    runLimit: (NSNumber*) runLimit
    completionHandler: (void (^)(OAIDeliverabilityAnalyticsSeriesDto* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability/analytics/series"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    if (scope != nil) {
        queryParams[@"scope"] = scope;
    }
    if (bucket != nil) {
        queryParams[@"bucket"] = bucket;
    }
    if (runLimit != nil) {
        queryParams[@"runLimit"] = runLimit;
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
                              responseType: @"OAIDeliverabilityAnalyticsSeriesDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliverabilityAnalyticsSeriesDto*)data, error);
                                }
                            }];
}

///
/// Get deliverability failure hotspots
/// Find commonly failing entities and phone country/variant dimensions across deliverability runs in a time range.
///  @param since  (optional)
///
///  @param before  (optional)
///
///  @param scope  (optional)
///
///  @param limit  (optional)
///
///  @returns OAIDeliverabilityFailureHotspotsDto*
///
-(NSURLSessionTask*) getDeliverabilityFailureHotspotsWithSince: (NSDate*) since
    before: (NSDate*) before
    scope: (NSString*) scope
    limit: (NSNumber*) limit
    completionHandler: (void (^)(OAIDeliverabilityFailureHotspotsDto* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability/analytics/hotspots"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    if (scope != nil) {
        queryParams[@"scope"] = scope;
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
                              responseType: @"OAIDeliverabilityFailureHotspotsDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliverabilityFailureHotspotsDto*)data, error);
                                }
                            }];
}

///
/// Get deliverability simulation job
/// Get simulation job status and progress counters.
///  @param testId  
///
///  @param jobId  
///
///  @returns OAIDeliverabilitySimulationJobDto*
///
-(NSURLSessionTask*) getDeliverabilitySimulationJobWithTestId: (NSString*) testId
    jobId: (NSString*) jobId
    completionHandler: (void (^)(OAIDeliverabilitySimulationJobDto* output, NSError* error)) handler {
    // verify the required parameter 'testId' is set
    if (testId == nil) {
        NSParameterAssert(testId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'jobId' is set
    if (jobId == nil) {
        NSParameterAssert(jobId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"jobId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability/{testId}/simulation-jobs/{jobId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (testId != nil) {
        pathParams[@"testId"] = testId;
    }
    if (jobId != nil) {
        pathParams[@"jobId"] = jobId;
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
                              responseType: @"OAIDeliverabilitySimulationJobDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliverabilitySimulationJobDto*)data, error);
                                }
                            }];
}

///
/// Get deliverability simulation job events
/// Get paged simulation events including send successes and failures.
///  @param testId  
///
///  @param jobId  
///
///  @param page  (optional, default to @0)
///
///  @param size  (optional, default to @20)
///
///  @param sort  (optional, default to @"DESC")
///
///  @returns OAIDeliverabilitySimulationJobEventPageDto*
///
-(NSURLSessionTask*) getDeliverabilitySimulationJobEventsWithTestId: (NSString*) testId
    jobId: (NSString*) jobId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIDeliverabilitySimulationJobEventPageDto* output, NSError* error)) handler {
    // verify the required parameter 'testId' is set
    if (testId == nil) {
        NSParameterAssert(testId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'jobId' is set
    if (jobId == nil) {
        NSParameterAssert(jobId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"jobId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability/{testId}/simulation-jobs/{jobId}/events"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (testId != nil) {
        pathParams[@"testId"] = testId;
    }
    if (jobId != nil) {
        pathParams[@"jobId"] = jobId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
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
                              responseType: @"OAIDeliverabilitySimulationJobEventPageDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliverabilitySimulationJobEventPageDto*)data, error);
                                }
                            }];
}

///
/// Get deliverability/load test
/// Get deliverability test configuration and latest progress counters.
///  @param testId  
///
///  @returns OAIDeliverabilityTestDto*
///
-(NSURLSessionTask*) getDeliverabilityTestWithTestId: (NSString*) testId
    completionHandler: (void (^)(OAIDeliverabilityTestDto* output, NSError* error)) handler {
    // verify the required parameter 'testId' is set
    if (testId == nil) {
        NSParameterAssert(testId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability/{testId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (testId != nil) {
        pathParams[@"testId"] = testId;
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
                              responseType: @"OAIDeliverabilityTestDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliverabilityTestDto*)data, error);
                                }
                            }];
}

///
/// Get deliverability/load test entity results
/// Get paged per-entity expectation results with optional matched/unmatched filtering.
///  @param testId  
///
///  @param matched  (optional)
///
///  @param page  (optional, default to @0)
///
///  @param size  (optional, default to @20)
///
///  @param sort  (optional, default to @"ASC")
///
///  @returns OAIDeliverabilityEntityResultPageDto*
///
-(NSURLSessionTask*) getDeliverabilityTestResultsWithTestId: (NSString*) testId
    matched: (NSNumber*) matched
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIDeliverabilityEntityResultPageDto* output, NSError* error)) handler {
    // verify the required parameter 'testId' is set
    if (testId == nil) {
        NSParameterAssert(testId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability/{testId}/results"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (testId != nil) {
        pathParams[@"testId"] = testId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (matched != nil) {
        queryParams[@"matched"] = [matched isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIDeliverabilityEntityResultPageDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliverabilityEntityResultPageDto*)data, error);
                                }
                            }];
}

///
/// List deliverability/load tests
/// List deliverability tests for the authenticated account.
///  @param page Page index (optional, default to @0)
///
///  @param size Page size (optional, default to @20)
///
///  @param sort Sort direction (optional, default to @"DESC")
///
///  @returns OAIDeliverabilityTestPageDto*
///
-(NSURLSessionTask*) getDeliverabilityTestsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIDeliverabilityTestPageDto* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
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
                              responseType: @"OAIDeliverabilityTestPageDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliverabilityTestPageDto*)data, error);
                                }
                            }];
}

///
/// Get latest deliverability simulation job
/// Get the most recent simulation job for a deliverability test.
///  @param testId  
///
///  @returns OAIDeliverabilitySimulationJobDto*
///
-(NSURLSessionTask*) getLatestDeliverabilitySimulationJobWithTestId: (NSString*) testId
    completionHandler: (void (^)(OAIDeliverabilitySimulationJobDto* output, NSError* error)) handler {
    // verify the required parameter 'testId' is set
    if (testId == nil) {
        NSParameterAssert(testId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability/{testId}/simulation-jobs/latest"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (testId != nil) {
        pathParams[@"testId"] = testId;
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
                              responseType: @"OAIDeliverabilitySimulationJobDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliverabilitySimulationJobDto*)data, error);
                                }
                            }];
}

///
/// Pause deliverability simulation job
/// Pause a running simulation job.
///  @param testId  
///
///  @param jobId  
///
///  @returns OAIDeliverabilitySimulationJobDto*
///
-(NSURLSessionTask*) pauseDeliverabilitySimulationJobWithTestId: (NSString*) testId
    jobId: (NSString*) jobId
    completionHandler: (void (^)(OAIDeliverabilitySimulationJobDto* output, NSError* error)) handler {
    // verify the required parameter 'testId' is set
    if (testId == nil) {
        NSParameterAssert(testId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'jobId' is set
    if (jobId == nil) {
        NSParameterAssert(jobId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"jobId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability/{testId}/simulation-jobs/{jobId}/pause"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (testId != nil) {
        pathParams[@"testId"] = testId;
    }
    if (jobId != nil) {
        pathParams[@"jobId"] = jobId;
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
                              responseType: @"OAIDeliverabilitySimulationJobDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliverabilitySimulationJobDto*)data, error);
                                }
                            }];
}

///
/// Pause deliverability/load test
/// Pause a RUNNING or SCHEDULED deliverability test.
///  @param testId  
///
///  @returns OAIDeliverabilityTestDto*
///
-(NSURLSessionTask*) pauseDeliverabilityTestWithTestId: (NSString*) testId
    completionHandler: (void (^)(OAIDeliverabilityTestDto* output, NSError* error)) handler {
    // verify the required parameter 'testId' is set
    if (testId == nil) {
        NSParameterAssert(testId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability/{testId}/pause"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (testId != nil) {
        pathParams[@"testId"] = testId;
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
                              responseType: @"OAIDeliverabilityTestDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliverabilityTestDto*)data, error);
                                }
                            }];
}

///
/// Poll deliverability/load test status
/// Poll test progress. Evaluation is throttled with a 5-second cache window to protect backing data stores.
///  @param testId  
///
///  @returns OAIDeliverabilityPollStatusResultDto*
///
-(NSURLSessionTask*) pollDeliverabilityTestStatusWithTestId: (NSString*) testId
    completionHandler: (void (^)(OAIDeliverabilityPollStatusResultDto* output, NSError* error)) handler {
    // verify the required parameter 'testId' is set
    if (testId == nil) {
        NSParameterAssert(testId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability/{testId}/status"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (testId != nil) {
        pathParams[@"testId"] = testId;
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
                              responseType: @"OAIDeliverabilityPollStatusResultDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliverabilityPollStatusResultDto*)data, error);
                                }
                            }];
}

///
/// Resume deliverability simulation job
/// Resume a paused simulation job.
///  @param testId  
///
///  @param jobId  
///
///  @returns OAIDeliverabilitySimulationJobDto*
///
-(NSURLSessionTask*) resumeDeliverabilitySimulationJobWithTestId: (NSString*) testId
    jobId: (NSString*) jobId
    completionHandler: (void (^)(OAIDeliverabilitySimulationJobDto* output, NSError* error)) handler {
    // verify the required parameter 'testId' is set
    if (testId == nil) {
        NSParameterAssert(testId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'jobId' is set
    if (jobId == nil) {
        NSParameterAssert(jobId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"jobId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability/{testId}/simulation-jobs/{jobId}/resume"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (testId != nil) {
        pathParams[@"testId"] = testId;
    }
    if (jobId != nil) {
        pathParams[@"jobId"] = jobId;
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
                              responseType: @"OAIDeliverabilitySimulationJobDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliverabilitySimulationJobDto*)data, error);
                                }
                            }];
}

///
/// Start or resume deliverability/load test
/// Start a CREATED test or resume a PAUSED/SCHEDULED test.
///  @param testId  
///
///  @returns OAIDeliverabilityTestDto*
///
-(NSURLSessionTask*) startDeliverabilityTestWithTestId: (NSString*) testId
    completionHandler: (void (^)(OAIDeliverabilityTestDto* output, NSError* error)) handler {
    // verify the required parameter 'testId' is set
    if (testId == nil) {
        NSParameterAssert(testId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability/{testId}/start"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (testId != nil) {
        pathParams[@"testId"] = testId;
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
                              responseType: @"OAIDeliverabilityTestDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliverabilityTestDto*)data, error);
                                }
                            }];
}

///
/// Stop deliverability/load test
/// Stop a deliverability test and mark it terminal.
///  @param testId  
///
///  @returns OAIDeliverabilityTestDto*
///
-(NSURLSessionTask*) stopDeliverabilityTestWithTestId: (NSString*) testId
    completionHandler: (void (^)(OAIDeliverabilityTestDto* output, NSError* error)) handler {
    // verify the required parameter 'testId' is set
    if (testId == nil) {
        NSParameterAssert(testId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability/{testId}/stop"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (testId != nil) {
        pathParams[@"testId"] = testId;
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
                              responseType: @"OAIDeliverabilityTestDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliverabilityTestDto*)data, error);
                                }
                            }];
}

///
/// Update deliverability/load test
/// Update metadata, timeout, and expectations for a non-running non-terminal test.
///  @param testId  
///
///  @param updateDeliverabilityTestOptions  
///
///  @returns OAIDeliverabilityTestDto*
///
-(NSURLSessionTask*) updateDeliverabilityTestWithTestId: (NSString*) testId
    updateDeliverabilityTestOptions: (OAIUpdateDeliverabilityTestOptions*) updateDeliverabilityTestOptions
    completionHandler: (void (^)(OAIDeliverabilityTestDto* output, NSError* error)) handler {
    // verify the required parameter 'testId' is set
    if (testId == nil) {
        NSParameterAssert(testId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'updateDeliverabilityTestOptions' is set
    if (updateDeliverabilityTestOptions == nil) {
        NSParameterAssert(updateDeliverabilityTestOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"updateDeliverabilityTestOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliverabilityTestControllerApiErrorDomain code:kOAIDeliverabilityTestControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/test/deliverability/{testId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (testId != nil) {
        pathParams[@"testId"] = testId;
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
    bodyParam = updateDeliverabilityTestOptions;

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
                              responseType: @"OAIDeliverabilityTestDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliverabilityTestDto*)data, error);
                                }
                            }];
}



@end
