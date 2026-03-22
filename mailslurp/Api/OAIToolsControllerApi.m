#import "OAIToolsControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAnalyzeDmarcReportOptions.h"
#import "OAIAnalyzeDmarcReportResults.h"
#import "OAIAnalyzeEmailHeadersOptions.h"
#import "OAIAnalyzeEmailHeadersResults.h"
#import "OAICheckCampaignProbeOptions.h"
#import "OAICheckCampaignProbeResults.h"
#import "OAICheckDnsPropagationOptions.h"
#import "OAICheckDnsPropagationResults.h"
#import "OAICheckDomainMonitorOptions.h"
#import "OAICheckDomainMonitorResults.h"
#import "OAICheckEmailAuditOptions.h"
#import "OAICheckEmailAuthStackOptions.h"
#import "OAICheckEmailAuthStackResults.h"
#import "OAICheckEmailBlacklistOptions.h"
#import "OAICheckEmailBlacklistResults.h"
#import "OAICheckEmailFeaturesClientSupportOptions.h"
#import "OAICheckEmailFeaturesClientSupportResults.h"
#import "OAIEmailAuditAnalysisResult.h"
#import "OAIFakeEmailPreview.h"
#import "OAIFakeEmailResult.h"
#import "OAIGenerateBimiRecordOptions.h"
#import "OAIGenerateBimiRecordResults.h"
#import "OAIGenerateDmarcRecordOptions.h"
#import "OAIGenerateDmarcRecordResults.h"
#import "OAIGenerateMtaStsRecordOptions.h"
#import "OAIGenerateMtaStsRecordResults.h"
#import "OAIGenerateSpfRecordOptions.h"
#import "OAIGenerateSpfRecordResults.h"
#import "OAIGenerateTlsReportingRecordOptions.h"
#import "OAIGenerateTlsReportingRecordResults.h"
#import "OAILookupBimiDomainOptions.h"
#import "OAILookupBimiDomainResults.h"
#import "OAILookupDkimDomainOptions.h"
#import "OAILookupDkimDomainResults.h"
#import "OAILookupDmarcDomainOptions.h"
#import "OAILookupDmarcDomainResults.h"
#import "OAILookupMtaStsDomainOptions.h"
#import "OAILookupMtaStsDomainResults.h"
#import "OAILookupMxRecordsOptions.h"
#import "OAILookupMxRecordsResults.h"
#import "OAILookupPtrOptions.h"
#import "OAILookupPtrResults.h"
#import "OAILookupSpfDomainOptions.h"
#import "OAILookupSpfDomainResults.h"
#import "OAILookupTlsReportingDomainOptions.h"
#import "OAILookupTlsReportingDomainResults.h"
#import "OAINewFakeEmailAddressResult.h"
#import "OAITestSmtpServerOptions.h"
#import "OAITestSmtpServerResults.h"


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
/// Parse and summarize a DMARC aggregate XML report
/// 
///  @param analyzeDmarcReportOptions  
///
///  @returns OAIAnalyzeDmarcReportResults*
///
-(NSURLSessionTask*) analyzeDmarcReportWithAnalyzeDmarcReportOptions: (OAIAnalyzeDmarcReportOptions*) analyzeDmarcReportOptions
    completionHandler: (void (^)(OAIAnalyzeDmarcReportResults* output, NSError* error)) handler {
    // verify the required parameter 'analyzeDmarcReportOptions' is set
    if (analyzeDmarcReportOptions == nil) {
        NSParameterAssert(analyzeDmarcReportOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"analyzeDmarcReportOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/analyze-dmarc-report"];

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
    bodyParam = analyzeDmarcReportOptions;

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
                              responseType: @"OAIAnalyzeDmarcReportResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAnalyzeDmarcReportResults*)data, error);
                                }
                            }];
}

///
/// Analyze email headers for auth results and delivery path
/// 
///  @param analyzeEmailHeadersOptions  
///
///  @returns OAIAnalyzeEmailHeadersResults*
///
-(NSURLSessionTask*) analyzeEmailHeadersWithAnalyzeEmailHeadersOptions: (OAIAnalyzeEmailHeadersOptions*) analyzeEmailHeadersOptions
    completionHandler: (void (^)(OAIAnalyzeEmailHeadersResults* output, NSError* error)) handler {
    // verify the required parameter 'analyzeEmailHeadersOptions' is set
    if (analyzeEmailHeadersOptions == nil) {
        NSParameterAssert(analyzeEmailHeadersOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"analyzeEmailHeadersOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/analyze-email-headers"];

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
    bodyParam = analyzeEmailHeadersOptions;

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
                              responseType: @"OAIAnalyzeEmailHeadersResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAnalyzeEmailHeadersResults*)data, error);
                                }
                            }];
}

///
/// Run a one-shot free campaign probe preflight check
/// 
///  @param checkCampaignProbeOptions  
///
///  @returns OAICheckCampaignProbeResults*
///
-(NSURLSessionTask*) checkCampaignProbeWithCheckCampaignProbeOptions: (OAICheckCampaignProbeOptions*) checkCampaignProbeOptions
    completionHandler: (void (^)(OAICheckCampaignProbeResults* output, NSError* error)) handler {
    // verify the required parameter 'checkCampaignProbeOptions' is set
    if (checkCampaignProbeOptions == nil) {
        NSParameterAssert(checkCampaignProbeOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"checkCampaignProbeOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/check-campaign-probe"];

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
    bodyParam = checkCampaignProbeOptions;

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
                              responseType: @"OAICheckCampaignProbeResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICheckCampaignProbeResults*)data, error);
                                }
                            }];
}

///
/// Check DNS propagation for a host and record type across configured resolvers
/// 
///  @param checkDnsPropagationOptions  
///
///  @returns OAICheckDnsPropagationResults*
///
-(NSURLSessionTask*) checkDnsPropagationWithCheckDnsPropagationOptions: (OAICheckDnsPropagationOptions*) checkDnsPropagationOptions
    completionHandler: (void (^)(OAICheckDnsPropagationResults* output, NSError* error)) handler {
    // verify the required parameter 'checkDnsPropagationOptions' is set
    if (checkDnsPropagationOptions == nil) {
        NSParameterAssert(checkDnsPropagationOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"checkDnsPropagationOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/check-dns-propagation"];

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
    bodyParam = checkDnsPropagationOptions;

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
                              responseType: @"OAICheckDnsPropagationResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICheckDnsPropagationResults*)data, error);
                                }
                            }];
}

///
/// Run a one-shot free domain monitor posture check
/// 
///  @param checkDomainMonitorOptions  
///
///  @returns OAICheckDomainMonitorResults*
///
-(NSURLSessionTask*) checkDomainMonitorWithCheckDomainMonitorOptions: (OAICheckDomainMonitorOptions*) checkDomainMonitorOptions
    completionHandler: (void (^)(OAICheckDomainMonitorResults* output, NSError* error)) handler {
    // verify the required parameter 'checkDomainMonitorOptions' is set
    if (checkDomainMonitorOptions == nil) {
        NSParameterAssert(checkDomainMonitorOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"checkDomainMonitorOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/check-domain-monitor"];

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
    bodyParam = checkDomainMonitorOptions;

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
                              responseType: @"OAICheckDomainMonitorResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICheckDomainMonitorResults*)data, error);
                                }
                            }];
}

///
/// Run a one-shot free email audit across links, images, HTML, and client support
/// 
///  @param checkEmailAuditOptions  
///
///  @returns OAIEmailAuditAnalysisResult*
///
-(NSURLSessionTask*) checkEmailAuditWithCheckEmailAuditOptions: (OAICheckEmailAuditOptions*) checkEmailAuditOptions
    completionHandler: (void (^)(OAIEmailAuditAnalysisResult* output, NSError* error)) handler {
    // verify the required parameter 'checkEmailAuditOptions' is set
    if (checkEmailAuditOptions == nil) {
        NSParameterAssert(checkEmailAuditOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"checkEmailAuditOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/check-email-audit"];

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
    bodyParam = checkEmailAuditOptions;

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
                              responseType: @"OAIEmailAuditAnalysisResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmailAuditAnalysisResult*)data, error);
                                }
                            }];
}

///
/// Run a one-shot combined SPF, DKIM, DMARC, BIMI, MX, MTA-STS, and TLS-RPT check
/// 
///  @param checkEmailAuthStackOptions  
///
///  @returns OAICheckEmailAuthStackResults*
///
-(NSURLSessionTask*) checkEmailAuthStackWithCheckEmailAuthStackOptions: (OAICheckEmailAuthStackOptions*) checkEmailAuthStackOptions
    completionHandler: (void (^)(OAICheckEmailAuthStackResults* output, NSError* error)) handler {
    // verify the required parameter 'checkEmailAuthStackOptions' is set
    if (checkEmailAuthStackOptions == nil) {
        NSParameterAssert(checkEmailAuthStackOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"checkEmailAuthStackOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/check-email-auth-stack"];

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
    bodyParam = checkEmailAuthStackOptions;

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
                              responseType: @"OAICheckEmailAuthStackResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICheckEmailAuthStackResults*)data, error);
                                }
                            }];
}

///
/// Check whether a domain or IP appears on configured DNS blacklists
/// 
///  @param checkEmailBlacklistOptions  
///
///  @returns OAICheckEmailBlacklistResults*
///
-(NSURLSessionTask*) checkEmailBlacklistWithCheckEmailBlacklistOptions: (OAICheckEmailBlacklistOptions*) checkEmailBlacklistOptions
    completionHandler: (void (^)(OAICheckEmailBlacklistResults* output, NSError* error)) handler {
    // verify the required parameter 'checkEmailBlacklistOptions' is set
    if (checkEmailBlacklistOptions == nil) {
        NSParameterAssert(checkEmailBlacklistOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"checkEmailBlacklistOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/check-email-blacklists"];

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
    bodyParam = checkEmailBlacklistOptions;

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
                              responseType: @"OAICheckEmailBlacklistResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICheckEmailBlacklistResults*)data, error);
                                }
                            }];
}

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
/// Create a new email address using the fake email domains
/// 
///  @returns OAINewFakeEmailAddressResult*
///
-(NSURLSessionTask*) createNewFakeEmailAddressWithCompletionHandler: 
    (void (^)(OAINewFakeEmailAddressResult* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/fake-email"];

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
                              responseType: @"OAINewFakeEmailAddressResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAINewFakeEmailAddressResult*)data, error);
                                }
                            }];
}

///
/// Delete a fake email address using the fake email domains
/// Delete a fake email address using the fake email domains
///  @param emailAddress  
///
///  @returns void
///
-(NSURLSessionTask*) deleteNewFakeEmailAddressWithEmailAddress: (NSString*) emailAddress
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'emailAddress' is set
    if (emailAddress == nil) {
        NSParameterAssert(emailAddress);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailAddress"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/fake-email"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (emailAddress != nil) {
        queryParams[@"emailAddress"] = emailAddress;
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
/// Create an SPF record
/// 
///  @param generateSpfRecordOptions  
///
///  @returns OAIGenerateSpfRecordResults*
///
-(NSURLSessionTask*) generateSpfRecordWithGenerateSpfRecordOptions: (OAIGenerateSpfRecordOptions*) generateSpfRecordOptions
    completionHandler: (void (^)(OAIGenerateSpfRecordResults* output, NSError* error)) handler {
    // verify the required parameter 'generateSpfRecordOptions' is set
    if (generateSpfRecordOptions == nil) {
        NSParameterAssert(generateSpfRecordOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"generateSpfRecordOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/generate-spf-record"];

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
    bodyParam = generateSpfRecordOptions;

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
                              responseType: @"OAIGenerateSpfRecordResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGenerateSpfRecordResults*)data, error);
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
/// 
/// 
///  @param emailAddress  
///
///  @returns OAIFakeEmailResult*
///
-(NSURLSessionTask*) getFakeEmailByEmailAddressWithEmailAddress: (NSString*) emailAddress
    completionHandler: (void (^)(OAIFakeEmailResult* output, NSError* error)) handler {
    // verify the required parameter 'emailAddress' is set
    if (emailAddress == nil) {
        NSParameterAssert(emailAddress);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailAddress"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/fake-email/byEmailAddress"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (emailAddress != nil) {
        queryParams[@"emailAddress"] = emailAddress;
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
                              responseType: @"OAIFakeEmailResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIFakeEmailResult*)data, error);
                                }
                            }];
}

///
/// Get a fake email by its ID
/// Get a fake email by its ID
///  @param _id  
///
///  @returns OAIFakeEmailResult*
///
-(NSURLSessionTask*) getFakeEmailByIdWithId: (NSString*) _id
    completionHandler: (void (^)(OAIFakeEmailResult* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/fake-email"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        queryParams[@"id"] = _id;
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
                              responseType: @"OAIFakeEmailResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIFakeEmailResult*)data, error);
                                }
                            }];
}

///
/// Get raw fake email content
/// Retrieve the raw content of a fake email by its ID
///  @param _id  
///
///  @returns NSString*
///
-(NSURLSessionTask*) getFakeEmailRawWithId: (NSString*) _id
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/fake-email/html"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        queryParams[@"id"] = _id;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/plain;charset=utf-8", @"text/html;charset=utf-8", @"text/plain; charset=utf-8", @"text/html; charset=utf-8"]];
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
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Get fake emails for an address
/// Get fake emails for an address
///  @param emailAddress  
///
///  @param page  (optional)
///
///  @returns NSArray<OAIFakeEmailPreview>*
///
-(NSURLSessionTask*) getFakeEmailsForAddressWithEmailAddress: (NSString*) emailAddress
    page: (NSNumber*) page
    completionHandler: (void (^)(NSArray<OAIFakeEmailPreview>* output, NSError* error)) handler {
    // verify the required parameter 'emailAddress' is set
    if (emailAddress == nil) {
        NSParameterAssert(emailAddress);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailAddress"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/fake-emails"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (emailAddress != nil) {
        queryParams[@"emailAddress"] = emailAddress;
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
                              responseType: @"NSArray<OAIFakeEmailPreview>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIFakeEmailPreview>*)data, error);
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
/// Lookup and validate a DKIM record
/// 
///  @param lookupDkimDomainOptions  
///
///  @returns OAILookupDkimDomainResults*
///
-(NSURLSessionTask*) lookupDkimDomainWithLookupDkimDomainOptions: (OAILookupDkimDomainOptions*) lookupDkimDomainOptions
    completionHandler: (void (^)(OAILookupDkimDomainResults* output, NSError* error)) handler {
    // verify the required parameter 'lookupDkimDomainOptions' is set
    if (lookupDkimDomainOptions == nil) {
        NSParameterAssert(lookupDkimDomainOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"lookupDkimDomainOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/lookup-dkim-domain"];

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
    bodyParam = lookupDkimDomainOptions;

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
                              responseType: @"OAILookupDkimDomainResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAILookupDkimDomainResults*)data, error);
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
/// Lookup a MX records for a domain
/// 
///  @param lookupMxRecordsOptions  
///
///  @returns OAILookupMxRecordsResults*
///
-(NSURLSessionTask*) lookupMxRecordWithLookupMxRecordsOptions: (OAILookupMxRecordsOptions*) lookupMxRecordsOptions
    completionHandler: (void (^)(OAILookupMxRecordsResults* output, NSError* error)) handler {
    // verify the required parameter 'lookupMxRecordsOptions' is set
    if (lookupMxRecordsOptions == nil) {
        NSParameterAssert(lookupMxRecordsOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"lookupMxRecordsOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/lookup-mx-records"];

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
    bodyParam = lookupMxRecordsOptions;

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
                              responseType: @"OAILookupMxRecordsResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAILookupMxRecordsResults*)data, error);
                                }
                            }];
}

///
/// Lookup PTR records for an IP address
/// 
///  @param lookupPtrOptions  
///
///  @returns OAILookupPtrResults*
///
-(NSURLSessionTask*) lookupPtrWithLookupPtrOptions: (OAILookupPtrOptions*) lookupPtrOptions
    completionHandler: (void (^)(OAILookupPtrResults* output, NSError* error)) handler {
    // verify the required parameter 'lookupPtrOptions' is set
    if (lookupPtrOptions == nil) {
        NSParameterAssert(lookupPtrOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"lookupPtrOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/lookup-ptr"];

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
    bodyParam = lookupPtrOptions;

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
                              responseType: @"OAILookupPtrResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAILookupPtrResults*)data, error);
                                }
                            }];
}

///
/// Lookup and validate an SPF record
/// 
///  @param lookupSpfDomainOptions  
///
///  @returns OAILookupSpfDomainResults*
///
-(NSURLSessionTask*) lookupSpfDomainWithLookupSpfDomainOptions: (OAILookupSpfDomainOptions*) lookupSpfDomainOptions
    completionHandler: (void (^)(OAILookupSpfDomainResults* output, NSError* error)) handler {
    // verify the required parameter 'lookupSpfDomainOptions' is set
    if (lookupSpfDomainOptions == nil) {
        NSParameterAssert(lookupSpfDomainOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"lookupSpfDomainOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/lookup-spf-domain"];

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
    bodyParam = lookupSpfDomainOptions;

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
                              responseType: @"OAILookupSpfDomainResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAILookupSpfDomainResults*)data, error);
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

///
/// Run a conservative SMTP connectivity, TLS, and AUTH diagnostic
/// 
///  @param testSmtpServerOptions  
///
///  @returns OAITestSmtpServerResults*
///
-(NSURLSessionTask*) testSmtpServerWithTestSmtpServerOptions: (OAITestSmtpServerOptions*) testSmtpServerOptions
    completionHandler: (void (^)(OAITestSmtpServerResults* output, NSError* error)) handler {
    // verify the required parameter 'testSmtpServerOptions' is set
    if (testSmtpServerOptions == nil) {
        NSParameterAssert(testSmtpServerOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testSmtpServerOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIToolsControllerApiErrorDomain code:kOAIToolsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/tools/test-smtp-server"];

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
    bodyParam = testSmtpServerOptions;

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
                              responseType: @"OAITestSmtpServerResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITestSmtpServerResults*)data, error);
                                }
                            }];
}



@end
