#import "OAIDevicePreviewsControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAICancelDevicePreviewRunOptions.h"
#import "OAICancelDevicePreviewRunResult.h"
#import "OAICreateDevicePreviewFeedbackOptions.h"
#import "OAICreateDevicePreviewOptions.h"
#import "OAICreateDevicePreviewRunResult.h"
#import "OAIDeleteDevicePreviewRunResult.h"
#import "OAIDevicePreviewFeedbackDto.h"
#import "OAIDevicePreviewFeedbackListDto.h"
#import "OAIDevicePreviewProviderProgressDto.h"
#import "OAIDevicePreviewRunDto.h"
#import "OAIDevicePreviewRunResultsDto.h"
#import "OAIPageDevicePreviewRunProjection.h"
#import "OAIUpdateDevicePreviewFeedbackOptions.h"


@interface OAIDevicePreviewsControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIDevicePreviewsControllerApi

NSString* kOAIDevicePreviewsControllerApiErrorDomain = @"OAIDevicePreviewsControllerApiErrorDomain";
NSInteger kOAIDevicePreviewsControllerApiMissingParamErrorCode = 234513;

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
/// Cancel a running device preview run
/// 
///  @param runId  
///
///  @param cancelDevicePreviewRunOptions  (optional)
///
///  @returns OAICancelDevicePreviewRunResult*
///
-(NSURLSessionTask*) cancelDevicePreviewRunWithRunId: (NSString*) runId
    cancelDevicePreviewRunOptions: (OAICancelDevicePreviewRunOptions*) cancelDevicePreviewRunOptions
    completionHandler: (void (^)(OAICancelDevicePreviewRunResult* output, NSError* error)) handler {
    // verify the required parameter 'runId' is set
    if (runId == nil) {
        NSParameterAssert(runId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"runId"] };
            NSError* error = [NSError errorWithDomain:kOAIDevicePreviewsControllerApiErrorDomain code:kOAIDevicePreviewsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/device-previews/{runId}/cancel"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = cancelDevicePreviewRunOptions;

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
                              responseType: @"OAICancelDevicePreviewRunResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICancelDevicePreviewRunResult*)data, error);
                                }
                            }];
}

///
/// Create device preview feedback
/// 
///  @param createDevicePreviewFeedbackOptions  
///
///  @returns OAIDevicePreviewFeedbackDto*
///
-(NSURLSessionTask*) createDevicePreviewFeedbackWithCreateDevicePreviewFeedbackOptions: (OAICreateDevicePreviewFeedbackOptions*) createDevicePreviewFeedbackOptions
    completionHandler: (void (^)(OAIDevicePreviewFeedbackDto* output, NSError* error)) handler {
    // verify the required parameter 'createDevicePreviewFeedbackOptions' is set
    if (createDevicePreviewFeedbackOptions == nil) {
        NSParameterAssert(createDevicePreviewFeedbackOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createDevicePreviewFeedbackOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIDevicePreviewsControllerApiErrorDomain code:kOAIDevicePreviewsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/device-previews/feedback"];

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
    bodyParam = createDevicePreviewFeedbackOptions;

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
                              responseType: @"OAIDevicePreviewFeedbackDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDevicePreviewFeedbackDto*)data, error);
                                }
                            }];
}

///
/// Create a new device preview run for an email
/// 
///  @param emailId  
///
///  @param createDevicePreviewOptions  (optional)
///
///  @returns OAICreateDevicePreviewRunResult*
///
-(NSURLSessionTask*) createDevicePreviewRunWithEmailId: (NSString*) emailId
    createDevicePreviewOptions: (OAICreateDevicePreviewOptions*) createDevicePreviewOptions
    completionHandler: (void (^)(OAICreateDevicePreviewRunResult* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIDevicePreviewsControllerApiErrorDomain code:kOAIDevicePreviewsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/device-previews"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
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
    bodyParam = createDevicePreviewOptions;

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
                              responseType: @"OAICreateDevicePreviewRunResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICreateDevicePreviewRunResult*)data, error);
                                }
                            }];
}

///
/// Delete local device preview run data
/// 
///  @param runId  
///
///  @returns OAIDeleteDevicePreviewRunResult*
///
-(NSURLSessionTask*) deleteDevicePreviewRunWithRunId: (NSString*) runId
    completionHandler: (void (^)(OAIDeleteDevicePreviewRunResult* output, NSError* error)) handler {
    // verify the required parameter 'runId' is set
    if (runId == nil) {
        NSParameterAssert(runId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"runId"] };
            NSError* error = [NSError errorWithDomain:kOAIDevicePreviewsControllerApiErrorDomain code:kOAIDevicePreviewsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/device-previews/{runId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"OAIDeleteDevicePreviewRunResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeleteDevicePreviewRunResult*)data, error);
                                }
                            }];
}

///
/// Return active run for email or create one when none exists
/// 
///  @param emailId  
///
///  @param createDevicePreviewOptions  (optional)
///
///  @returns OAICreateDevicePreviewRunResult*
///
-(NSURLSessionTask*) ensureDevicePreviewRunWithEmailId: (NSString*) emailId
    createDevicePreviewOptions: (OAICreateDevicePreviewOptions*) createDevicePreviewOptions
    completionHandler: (void (^)(OAICreateDevicePreviewRunResult* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIDevicePreviewsControllerApiErrorDomain code:kOAIDevicePreviewsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/device-previews/latest"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
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
    bodyParam = createDevicePreviewOptions;

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
                              responseType: @"OAICreateDevicePreviewRunResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICreateDevicePreviewRunResult*)data, error);
                                }
                            }];
}

///
/// Get a single device preview feedback item
/// 
///  @param feedbackId  
///
///  @returns OAIDevicePreviewFeedbackDto*
///
-(NSURLSessionTask*) getDevicePreviewFeedbackWithFeedbackId: (NSString*) feedbackId
    completionHandler: (void (^)(OAIDevicePreviewFeedbackDto* output, NSError* error)) handler {
    // verify the required parameter 'feedbackId' is set
    if (feedbackId == nil) {
        NSParameterAssert(feedbackId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"feedbackId"] };
            NSError* error = [NSError errorWithDomain:kOAIDevicePreviewsControllerApiErrorDomain code:kOAIDevicePreviewsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/device-previews/feedback/{feedbackId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (feedbackId != nil) {
        pathParams[@"feedbackId"] = feedbackId;
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
                              responseType: @"OAIDevicePreviewFeedbackDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDevicePreviewFeedbackDto*)data, error);
                                }
                            }];
}

///
/// List device preview feedback
/// 
///  @param page  (optional)
///
///  @param size  (optional)
///
///  @param source  (optional)
///
///  @param runId  (optional)
///
///  @param status  (optional)
///
///  @param provider  (optional)
///
///  @param category  (optional)
///
///  @param search  (optional)
///
///  @returns OAIDevicePreviewFeedbackListDto*
///
-(NSURLSessionTask*) getDevicePreviewFeedbackItemsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    source: (NSString*) source
    runId: (NSString*) runId
    status: (NSString*) status
    provider: (NSString*) provider
    category: (NSString*) category
    search: (NSString*) search
    completionHandler: (void (^)(OAIDevicePreviewFeedbackListDto* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/device-previews/feedback"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (size != nil) {
        queryParams[@"size"] = size;
    }
    if (source != nil) {
        queryParams[@"source"] = source;
    }
    if (runId != nil) {
        queryParams[@"runId"] = runId;
    }
    if (status != nil) {
        queryParams[@"status"] = status;
    }
    if (provider != nil) {
        queryParams[@"provider"] = provider;
    }
    if (category != nil) {
        queryParams[@"category"] = category;
    }
    if (search != nil) {
        queryParams[@"search"] = search;
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
                              responseType: @"OAIDevicePreviewFeedbackListDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDevicePreviewFeedbackListDto*)data, error);
                                }
                            }];
}

///
/// Get device preview run status
/// 
///  @param runId  
///
///  @returns OAIDevicePreviewRunDto*
///
-(NSURLSessionTask*) getDevicePreviewRunWithRunId: (NSString*) runId
    completionHandler: (void (^)(OAIDevicePreviewRunDto* output, NSError* error)) handler {
    // verify the required parameter 'runId' is set
    if (runId == nil) {
        NSParameterAssert(runId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"runId"] };
            NSError* error = [NSError errorWithDomain:kOAIDevicePreviewsControllerApiErrorDomain code:kOAIDevicePreviewsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/device-previews/{runId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"OAIDevicePreviewRunDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDevicePreviewRunDto*)data, error);
                                }
                            }];
}

///
/// Get provider-level progress for a device preview run
/// 
///  @param runId  
///
///  @param provider  
///
///  @returns OAIDevicePreviewProviderProgressDto*
///
-(NSURLSessionTask*) getDevicePreviewRunProviderProgressWithRunId: (NSString*) runId
    provider: (NSString*) provider
    completionHandler: (void (^)(OAIDevicePreviewProviderProgressDto* output, NSError* error)) handler {
    // verify the required parameter 'runId' is set
    if (runId == nil) {
        NSParameterAssert(runId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"runId"] };
            NSError* error = [NSError errorWithDomain:kOAIDevicePreviewsControllerApiErrorDomain code:kOAIDevicePreviewsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'provider' is set
    if (provider == nil) {
        NSParameterAssert(provider);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"provider"] };
            NSError* error = [NSError errorWithDomain:kOAIDevicePreviewsControllerApiErrorDomain code:kOAIDevicePreviewsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/device-previews/{runId}/providers/{provider}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (runId != nil) {
        pathParams[@"runId"] = runId;
    }
    if (provider != nil) {
        pathParams[@"provider"] = provider;
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
                              responseType: @"OAIDevicePreviewProviderProgressDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDevicePreviewProviderProgressDto*)data, error);
                                }
                            }];
}

///
/// Get device preview run results
/// 
///  @param runId  
///
///  @returns OAIDevicePreviewRunResultsDto*
///
-(NSURLSessionTask*) getDevicePreviewRunResultsWithRunId: (NSString*) runId
    completionHandler: (void (^)(OAIDevicePreviewRunResultsDto* output, NSError* error)) handler {
    // verify the required parameter 'runId' is set
    if (runId == nil) {
        NSParameterAssert(runId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"runId"] };
            NSError* error = [NSError errorWithDomain:kOAIDevicePreviewsControllerApiErrorDomain code:kOAIDevicePreviewsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/device-previews/{runId}/results"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"OAIDevicePreviewRunResultsDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDevicePreviewRunResultsDto*)data, error);
                                }
                            }];
}

///
/// Get a seeded device preview screenshot image
/// 
///  @param runId  
///
///  @param screenshotId  
///
///  @returns NSData*
///
-(NSURLSessionTask*) getDevicePreviewRunScreenshotWithRunId: (NSString*) runId
    screenshotId: (NSString*) screenshotId
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'runId' is set
    if (runId == nil) {
        NSParameterAssert(runId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"runId"] };
            NSError* error = [NSError errorWithDomain:kOAIDevicePreviewsControllerApiErrorDomain code:kOAIDevicePreviewsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'screenshotId' is set
    if (screenshotId == nil) {
        NSParameterAssert(screenshotId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"screenshotId"] };
            NSError* error = [NSError errorWithDomain:kOAIDevicePreviewsControllerApiErrorDomain code:kOAIDevicePreviewsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/device-previews/{runId}/screenshots/{screenshotId}/image"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (runId != nil) {
        pathParams[@"runId"] = runId;
    }
    if (screenshotId != nil) {
        pathParams[@"screenshotId"] = screenshotId;
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
                              responseType: @"NSData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSData*)data, error);
                                }
                            }];
}

///
/// List previous device preview runs for an email
/// 
///  @param emailId  
///
///  @param limit  (optional, default to @50)
///
///  @returns NSArray<OAIDevicePreviewRunDto>*
///
-(NSURLSessionTask*) getDevicePreviewRunsWithEmailId: (NSString*) emailId
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSArray<OAIDevicePreviewRunDto>* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIDevicePreviewsControllerApiErrorDomain code:kOAIDevicePreviewsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/device-previews"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"NSArray<OAIDevicePreviewRunDto>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIDevicePreviewRunDto>*)data, error);
                                }
                            }];
}

///
/// List previous device preview runs for account
/// 
///  @param limit  (optional, default to @50)
///
///  @returns NSArray<OAIDevicePreviewRunDto>*
///
-(NSURLSessionTask*) getDevicePreviewRunsForAccountWithLimit: (NSNumber*) limit
    completionHandler: (void (^)(NSArray<OAIDevicePreviewRunDto>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/device-previews"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"NSArray<OAIDevicePreviewRunDto>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIDevicePreviewRunDto>*)data, error);
                                }
                            }];
}

///
/// List previous device preview runs for an email in paginated form
/// 
///  @param emailId  
///
///  @param page Optional page index in list pagination (optional, default to @0)
///
///  @param size Optional page size for paginated result list. (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"DESC")
///
///  @returns OAIPageDevicePreviewRunProjection*
///
-(NSURLSessionTask*) getDevicePreviewRunsOffsetPaginatedWithEmailId: (NSString*) emailId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIPageDevicePreviewRunProjection* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIDevicePreviewsControllerApiErrorDomain code:kOAIDevicePreviewsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/device-previews/offset-paginated"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
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
                              responseType: @"OAIPageDevicePreviewRunProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageDevicePreviewRunProjection*)data, error);
                                }
                            }];
}

///
/// Update device preview feedback
/// 
///  @param feedbackId  
///
///  @param updateDevicePreviewFeedbackOptions  
///
///  @returns OAIDevicePreviewFeedbackDto*
///
-(NSURLSessionTask*) updateDevicePreviewFeedbackWithFeedbackId: (NSString*) feedbackId
    updateDevicePreviewFeedbackOptions: (OAIUpdateDevicePreviewFeedbackOptions*) updateDevicePreviewFeedbackOptions
    completionHandler: (void (^)(OAIDevicePreviewFeedbackDto* output, NSError* error)) handler {
    // verify the required parameter 'feedbackId' is set
    if (feedbackId == nil) {
        NSParameterAssert(feedbackId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"feedbackId"] };
            NSError* error = [NSError errorWithDomain:kOAIDevicePreviewsControllerApiErrorDomain code:kOAIDevicePreviewsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'updateDevicePreviewFeedbackOptions' is set
    if (updateDevicePreviewFeedbackOptions == nil) {
        NSParameterAssert(updateDevicePreviewFeedbackOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"updateDevicePreviewFeedbackOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIDevicePreviewsControllerApiErrorDomain code:kOAIDevicePreviewsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/device-previews/feedback/{feedbackId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (feedbackId != nil) {
        pathParams[@"feedbackId"] = feedbackId;
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
    bodyParam = updateDevicePreviewFeedbackOptions;

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
                              responseType: @"OAIDevicePreviewFeedbackDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDevicePreviewFeedbackDto*)data, error);
                                }
                            }];
}



@end
