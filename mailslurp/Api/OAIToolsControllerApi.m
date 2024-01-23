#import "OAIToolsControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAICheckEmailFeaturesClientSupportOptions.h"
#import "OAICheckEmailFeaturesClientSupportResults.h"
#import "OAIGenerateBimiRecordOptions.h"
#import "OAIGenerateBimiRecordResults.h"
#import "OAIGenerateDmarcRecordOptions.h"
#import "OAIGenerateDmarcRecordResults.h"
#import "OAIGenerateMtaStsRecordOptions.h"
#import "OAIGenerateMtaStsRecordResults.h"
#import "OAIGenerateTlsReportingRecordOptions.h"
#import "OAIGenerateTlsReportingRecordResults.h"
#import "OAILookupBimiDomainOptions.h"
#import "OAILookupBimiDomainResults.h"
#import "OAILookupDmarcDomainOptions.h"
#import "OAILookupDmarcDomainResults.h"
#import "OAILookupMtaStsDomainOptions.h"
#import "OAILookupMtaStsDomainResults.h"
#import "OAILookupTlsReportingDomainOptions.h"
#import "OAILookupTlsReportingDomainResults.h"


@interface OAIToolsControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIToolsControllerApi

NSString* kOAIToolsControllerApiErrorDomain = @"OAIToolsControllerApiErrorDomain";
NSInteger kOAIToolsControllerApiMissingParamErrorCode = 234513;

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
/// Check email client support for email HTML and CSS features
/// 
///  @param checkEmailFeaturesClientSupportOptions  
///
///  @returns OAICheckEmailFeaturesClientSupportResults*
///
-(NSURLSessionTask*) checkEmailFeaturesClientSupportWithCheckEmailFeaturesClientSupportOptions: (OAICheckEmailFeaturesClientSupportOptions*) checkEmailFeaturesClientSupportOptions
    completionHandler: (void (^)(OAICheckEmailFeaturesClientSupportResults* output, NSError* error)) handler {
    // verify the required parameter 'checkEmailFeaturesClientSupportOptions' is set
    if (checkEmailFeaturesClientSupportOptions == nil) {
        NSParameterAssert(checkEmailFeaturesClientSupportOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"checkEmailFeaturesClientSupportOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/check-email-features-client-support"];

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
    bodyParam = checkEmailFeaturesClientSupportOptions;

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
                              responseType: @"OAICheckEmailFeaturesClientSupportResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICheckEmailFeaturesClientSupportResults*)data, error);
                                }
                            }];
}

///
/// Create a BIMI record policy
/// 
///  @param generateBimiRecordOptions  
///
///  @returns OAIGenerateBimiRecordResults*
///
-(NSURLSessionTask*) generateBimiRecordWithGenerateBimiRecordOptions: (OAIGenerateBimiRecordOptions*) generateBimiRecordOptions
    completionHandler: (void (^)(OAIGenerateBimiRecordResults* output, NSError* error)) handler {
    // verify the required parameter 'generateBimiRecordOptions' is set
    if (generateBimiRecordOptions == nil) {
        NSParameterAssert(generateBimiRecordOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"generateBimiRecordOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/generate-bimi-record"];

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
    bodyParam = generateBimiRecordOptions;

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
                              responseType: @"OAIGenerateBimiRecordResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGenerateBimiRecordResults*)data, error);
                                }
                            }];
}

///
/// Create a DMARC record policy
/// 
///  @param generateDmarcRecordOptions  
///
///  @returns OAIGenerateDmarcRecordResults*
///
-(NSURLSessionTask*) generateDmarcRecordWithGenerateDmarcRecordOptions: (OAIGenerateDmarcRecordOptions*) generateDmarcRecordOptions
    completionHandler: (void (^)(OAIGenerateDmarcRecordResults* output, NSError* error)) handler {
    // verify the required parameter 'generateDmarcRecordOptions' is set
    if (generateDmarcRecordOptions == nil) {
        NSParameterAssert(generateDmarcRecordOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"generateDmarcRecordOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/generate-dmarc-record"];

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
    bodyParam = generateDmarcRecordOptions;

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
                              responseType: @"OAIGenerateDmarcRecordResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGenerateDmarcRecordResults*)data, error);
                                }
                            }];
}

///
/// Create a TLS reporting record policy
/// 
///  @param generateMtaStsRecordOptions  
///
///  @returns OAIGenerateMtaStsRecordResults*
///
-(NSURLSessionTask*) generateMtaStsRecordWithGenerateMtaStsRecordOptions: (OAIGenerateMtaStsRecordOptions*) generateMtaStsRecordOptions
    completionHandler: (void (^)(OAIGenerateMtaStsRecordResults* output, NSError* error)) handler {
    // verify the required parameter 'generateMtaStsRecordOptions' is set
    if (generateMtaStsRecordOptions == nil) {
        NSParameterAssert(generateMtaStsRecordOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"generateMtaStsRecordOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/generate-mta-sts-record"];

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
    bodyParam = generateMtaStsRecordOptions;

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
                              responseType: @"OAIGenerateMtaStsRecordResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGenerateMtaStsRecordResults*)data, error);
                                }
                            }];
}

///
/// Create a TLS reporting record policy
/// 
///  @param generateTlsReportingRecordOptions  
///
///  @returns OAIGenerateTlsReportingRecordResults*
///
-(NSURLSessionTask*) generateTlsReportingRecordWithGenerateTlsReportingRecordOptions: (OAIGenerateTlsReportingRecordOptions*) generateTlsReportingRecordOptions
    completionHandler: (void (^)(OAIGenerateTlsReportingRecordResults* output, NSError* error)) handler {
    // verify the required parameter 'generateTlsReportingRecordOptions' is set
    if (generateTlsReportingRecordOptions == nil) {
        NSParameterAssert(generateTlsReportingRecordOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"generateTlsReportingRecordOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/generate-tls-reporting-record"];

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
    bodyParam = generateTlsReportingRecordOptions;

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
                              responseType: @"OAIGenerateTlsReportingRecordResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGenerateTlsReportingRecordResults*)data, error);
                                }
                            }];
}

///
/// Lookup a BIMI record policy
/// 
///  @param lookupBimiDomainOptions  
///
///  @returns OAILookupBimiDomainResults*
///
-(NSURLSessionTask*) lookupBimiDomainWithLookupBimiDomainOptions: (OAILookupBimiDomainOptions*) lookupBimiDomainOptions
    completionHandler: (void (^)(OAILookupBimiDomainResults* output, NSError* error)) handler {
    // verify the required parameter 'lookupBimiDomainOptions' is set
    if (lookupBimiDomainOptions == nil) {
        NSParameterAssert(lookupBimiDomainOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"lookupBimiDomainOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/lookup-bimi-domain"];

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
    bodyParam = lookupBimiDomainOptions;

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
                              responseType: @"OAILookupBimiDomainResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAILookupBimiDomainResults*)data, error);
                                }
                            }];
}

///
/// Lookup a DMARC record policy
/// 
///  @param lookupDmarcDomainOptions  
///
///  @returns OAILookupDmarcDomainResults*
///
-(NSURLSessionTask*) lookupDmarcDomainWithLookupDmarcDomainOptions: (OAILookupDmarcDomainOptions*) lookupDmarcDomainOptions
    completionHandler: (void (^)(OAILookupDmarcDomainResults* output, NSError* error)) handler {
    // verify the required parameter 'lookupDmarcDomainOptions' is set
    if (lookupDmarcDomainOptions == nil) {
        NSParameterAssert(lookupDmarcDomainOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"lookupDmarcDomainOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/lookup-dmarc-domain"];

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
    bodyParam = lookupDmarcDomainOptions;

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
                              responseType: @"OAILookupDmarcDomainResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAILookupDmarcDomainResults*)data, error);
                                }
                            }];
}

///
/// Lookup a MTA-STS domain policy
/// 
///  @param lookupMtaStsDomainOptions  
///
///  @returns OAILookupMtaStsDomainResults*
///
-(NSURLSessionTask*) lookupMtaStsDomainWithLookupMtaStsDomainOptions: (OAILookupMtaStsDomainOptions*) lookupMtaStsDomainOptions
    completionHandler: (void (^)(OAILookupMtaStsDomainResults* output, NSError* error)) handler {
    // verify the required parameter 'lookupMtaStsDomainOptions' is set
    if (lookupMtaStsDomainOptions == nil) {
        NSParameterAssert(lookupMtaStsDomainOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"lookupMtaStsDomainOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/lookup-mta-sts-domain"];

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
    bodyParam = lookupMtaStsDomainOptions;

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
                              responseType: @"OAILookupMtaStsDomainResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAILookupMtaStsDomainResults*)data, error);
                                }
                            }];
}

///
/// Lookup a TLS reporting domain policy
/// 
///  @param lookupTlsReportingDomainOptions  
///
///  @returns OAILookupTlsReportingDomainResults*
///
-(NSURLSessionTask*) lookupTlsReportingDomainWithLookupTlsReportingDomainOptions: (OAILookupTlsReportingDomainOptions*) lookupTlsReportingDomainOptions
    completionHandler: (void (^)(OAILookupTlsReportingDomainResults* output, NSError* error)) handler {
    // verify the required parameter 'lookupTlsReportingDomainOptions' is set
    if (lookupTlsReportingDomainOptions == nil) {
        NSParameterAssert(lookupTlsReportingDomainOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"lookupTlsReportingDomainOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/lookup-tls-reporting-domain"];

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
    bodyParam = lookupTlsReportingDomainOptions;

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
                              responseType: @"OAILookupTlsReportingDomainResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAILookupTlsReportingDomainResults*)data, error);
                                }
                            }];
}



@end
