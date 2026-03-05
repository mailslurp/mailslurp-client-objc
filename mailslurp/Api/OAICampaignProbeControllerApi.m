#import "OAICampaignProbeControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAICampaignProbeDto.h"
#import "OAICampaignProbeInsightsDto.h"
#import "OAICampaignProbeRunDto.h"
#import "OAICampaignProbeRunDueResult.h"
#import "OAICampaignProbeRunNowResult.h"
#import "OAICampaignProbeSeriesDto.h"
#import "OAICreateCampaignProbeOptions.h"
#import "OAICreateCampaignProbeRunOptions.h"
#import "OAIUpdateCampaignProbeOptions.h"


@interface OAICampaignProbeControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAICampaignProbeControllerApi

NSString* kOAICampaignProbeControllerApiErrorDomain = @"OAICampaignProbeControllerApiErrorDomain";
NSInteger kOAICampaignProbeControllerApiMissingParamErrorCode = 234513;

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
/// Create campaign probe
/// 
///  @param createCampaignProbeOptions  
///
///  @returns OAICampaignProbeDto*
///
-(NSURLSessionTask*) createCampaignProbeWithCreateCampaignProbeOptions: (OAICreateCampaignProbeOptions*) createCampaignProbeOptions
    completionHandler: (void (^)(OAICampaignProbeDto* output, NSError* error)) handler {
    // verify the required parameter 'createCampaignProbeOptions' is set
    if (createCampaignProbeOptions == nil) {
        NSParameterAssert(createCampaignProbeOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createCampaignProbeOptions"] };
            NSError* error = [NSError errorWithDomain:kOAICampaignProbeControllerApiErrorDomain code:kOAICampaignProbeControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/campaign-probe/probes"];

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
    bodyParam = createCampaignProbeOptions;

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
                              responseType: @"OAICampaignProbeDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICampaignProbeDto*)data, error);
                                }
                            }];
}

///
/// Delete campaign probe
/// 
///  @param probeId  
///
///  @returns void
///
-(NSURLSessionTask*) deleteCampaignProbeWithProbeId: (NSString*) probeId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'probeId' is set
    if (probeId == nil) {
        NSParameterAssert(probeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"probeId"] };
            NSError* error = [NSError errorWithDomain:kOAICampaignProbeControllerApiErrorDomain code:kOAICampaignProbeControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/campaign-probe/probes/{probeId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (probeId != nil) {
        pathParams[@"probeId"] = probeId;
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
/// Get campaign probe
/// 
///  @param probeId  
///
///  @returns OAICampaignProbeDto*
///
-(NSURLSessionTask*) getCampaignProbeWithProbeId: (NSString*) probeId
    completionHandler: (void (^)(OAICampaignProbeDto* output, NSError* error)) handler {
    // verify the required parameter 'probeId' is set
    if (probeId == nil) {
        NSParameterAssert(probeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"probeId"] };
            NSError* error = [NSError errorWithDomain:kOAICampaignProbeControllerApiErrorDomain code:kOAICampaignProbeControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/campaign-probe/probes/{probeId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (probeId != nil) {
        pathParams[@"probeId"] = probeId;
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
                              responseType: @"OAICampaignProbeDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICampaignProbeDto*)data, error);
                                }
                            }];
}

///
/// Get campaign probe insights
/// 
///  @param probeId  
///
///  @param since  (optional)
///
///  @param before  (optional)
///
///  @returns OAICampaignProbeInsightsDto*
///
-(NSURLSessionTask*) getCampaignProbeInsightsWithProbeId: (NSString*) probeId
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAICampaignProbeInsightsDto* output, NSError* error)) handler {
    // verify the required parameter 'probeId' is set
    if (probeId == nil) {
        NSParameterAssert(probeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"probeId"] };
            NSError* error = [NSError errorWithDomain:kOAICampaignProbeControllerApiErrorDomain code:kOAICampaignProbeControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/campaign-probe/probes/{probeId}/insights"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (probeId != nil) {
        pathParams[@"probeId"] = probeId;
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
                              responseType: @"OAICampaignProbeInsightsDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICampaignProbeInsightsDto*)data, error);
                                }
                            }];
}

///
/// List campaign probe runs
/// 
///  @param probeId  
///
///  @param since  (optional)
///
///  @param before  (optional)
///
///  @param status  (optional)
///
///  @param limit  (optional)
///
///  @returns NSArray<OAICampaignProbeRunDto>*
///
-(NSURLSessionTask*) getCampaignProbeRunsWithProbeId: (NSString*) probeId
    since: (NSDate*) since
    before: (NSDate*) before
    status: (NSString*) status
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSArray<OAICampaignProbeRunDto>* output, NSError* error)) handler {
    // verify the required parameter 'probeId' is set
    if (probeId == nil) {
        NSParameterAssert(probeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"probeId"] };
            NSError* error = [NSError errorWithDomain:kOAICampaignProbeControllerApiErrorDomain code:kOAICampaignProbeControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/campaign-probe/probes/{probeId}/runs"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (probeId != nil) {
        pathParams[@"probeId"] = probeId;
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
                              responseType: @"NSArray<OAICampaignProbeRunDto>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAICampaignProbeRunDto>*)data, error);
                                }
                            }];
}

///
/// Get campaign probe trend series
/// 
///  @param probeId  
///
///  @param since  (optional)
///
///  @param before  (optional)
///
///  @param bucket  (optional, default to @"DAY")
///
///  @returns OAICampaignProbeSeriesDto*
///
-(NSURLSessionTask*) getCampaignProbeSeriesWithProbeId: (NSString*) probeId
    since: (NSDate*) since
    before: (NSDate*) before
    bucket: (NSString*) bucket
    completionHandler: (void (^)(OAICampaignProbeSeriesDto* output, NSError* error)) handler {
    // verify the required parameter 'probeId' is set
    if (probeId == nil) {
        NSParameterAssert(probeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"probeId"] };
            NSError* error = [NSError errorWithDomain:kOAICampaignProbeControllerApiErrorDomain code:kOAICampaignProbeControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/campaign-probe/probes/{probeId}/series"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (probeId != nil) {
        pathParams[@"probeId"] = probeId;
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
                              responseType: @"OAICampaignProbeSeriesDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICampaignProbeSeriesDto*)data, error);
                                }
                            }];
}

///
/// List campaign probes
/// 
///  @returns NSArray<OAICampaignProbeDto>*
///
-(NSURLSessionTask*) getCampaignProbesWithCompletionHandler: 
    (void (^)(NSArray<OAICampaignProbeDto>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/campaign-probe/probes"];

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
                              responseType: @"NSArray<OAICampaignProbeDto>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAICampaignProbeDto>*)data, error);
                                }
                            }];
}

///
/// Run campaign probe now
/// 
///  @param probeId  
///
///  @param createCampaignProbeRunOptions  
///
///  @returns OAICampaignProbeRunNowResult*
///
-(NSURLSessionTask*) runCampaignProbeNowWithProbeId: (NSString*) probeId
    createCampaignProbeRunOptions: (OAICreateCampaignProbeRunOptions*) createCampaignProbeRunOptions
    completionHandler: (void (^)(OAICampaignProbeRunNowResult* output, NSError* error)) handler {
    // verify the required parameter 'probeId' is set
    if (probeId == nil) {
        NSParameterAssert(probeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"probeId"] };
            NSError* error = [NSError errorWithDomain:kOAICampaignProbeControllerApiErrorDomain code:kOAICampaignProbeControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'createCampaignProbeRunOptions' is set
    if (createCampaignProbeRunOptions == nil) {
        NSParameterAssert(createCampaignProbeRunOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createCampaignProbeRunOptions"] };
            NSError* error = [NSError errorWithDomain:kOAICampaignProbeControllerApiErrorDomain code:kOAICampaignProbeControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/campaign-probe/probes/{probeId}/run-now"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (probeId != nil) {
        pathParams[@"probeId"] = probeId;
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
    bodyParam = createCampaignProbeRunOptions;

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
                              responseType: @"OAICampaignProbeRunNowResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICampaignProbeRunNowResult*)data, error);
                                }
                            }];
}

///
/// Run due campaign probes for user
/// 
///  @param maxRuns  (optional)
///
///  @returns OAICampaignProbeRunDueResult*
///
-(NSURLSessionTask*) runDueCampaignProbesWithMaxRuns: (NSNumber*) maxRuns
    completionHandler: (void (^)(OAICampaignProbeRunDueResult* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/campaign-probe/probes/run-due"];

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
                              responseType: @"OAICampaignProbeRunDueResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICampaignProbeRunDueResult*)data, error);
                                }
                            }];
}

///
/// Update campaign probe
/// 
///  @param probeId  
///
///  @param updateCampaignProbeOptions  
///
///  @returns OAICampaignProbeDto*
///
-(NSURLSessionTask*) updateCampaignProbeWithProbeId: (NSString*) probeId
    updateCampaignProbeOptions: (OAIUpdateCampaignProbeOptions*) updateCampaignProbeOptions
    completionHandler: (void (^)(OAICampaignProbeDto* output, NSError* error)) handler {
    // verify the required parameter 'probeId' is set
    if (probeId == nil) {
        NSParameterAssert(probeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"probeId"] };
            NSError* error = [NSError errorWithDomain:kOAICampaignProbeControllerApiErrorDomain code:kOAICampaignProbeControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'updateCampaignProbeOptions' is set
    if (updateCampaignProbeOptions == nil) {
        NSParameterAssert(updateCampaignProbeOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"updateCampaignProbeOptions"] };
            NSError* error = [NSError errorWithDomain:kOAICampaignProbeControllerApiErrorDomain code:kOAICampaignProbeControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/campaign-probe/probes/{probeId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (probeId != nil) {
        pathParams[@"probeId"] = probeId;
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
    bodyParam = updateCampaignProbeOptions;

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
                              responseType: @"OAICampaignProbeDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICampaignProbeDto*)data, error);
                                }
                            }];
}



@end
