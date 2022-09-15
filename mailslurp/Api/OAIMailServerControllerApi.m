#import "OAIMailServerControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIDNSLookupOptions.h"
#import "OAIDNSLookupResults.h"
#import "OAIDescribeDomainOptions.h"
#import "OAIDescribeMailServerDomainResult.h"
#import "OAIEmailVerificationResult.h"
#import "OAIIPAddressResult.h"
#import "OAIVerifyEmailAddressOptions.h"


@interface OAIMailServerControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIMailServerControllerApi

NSString* kOAIMailServerControllerApiErrorDomain = @"OAIMailServerControllerApiErrorDomain";
NSInteger kOAIMailServerControllerApiMissingParamErrorCode = 234513;

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
/// Get DNS Mail Server records for a domain
/// 
///  @param describeDomainOptions  
///
///  @returns OAIDescribeMailServerDomainResult*
///
-(NSURLSessionTask*) describeMailServerDomainWithDescribeDomainOptions: (OAIDescribeDomainOptions*) describeDomainOptions
    completionHandler: (void (^)(OAIDescribeMailServerDomainResult* output, NSError* error)) handler {
    // verify the required parameter 'describeDomainOptions' is set
    if (describeDomainOptions == nil) {
        NSParameterAssert(describeDomainOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"describeDomainOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIMailServerControllerApiErrorDomain code:kOAIMailServerControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail-server/describe/domain"];

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
    bodyParam = describeDomainOptions;

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
                              responseType: @"OAIDescribeMailServerDomainResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDescribeMailServerDomainResult*)data, error);
                                }
                            }];
}

///
/// Lookup DNS records for a domain
/// 
///  @param dNSLookupOptions  
///
///  @returns OAIDNSLookupResults*
///
-(NSURLSessionTask*) getDnsLookupWithDNSLookupOptions: (OAIDNSLookupOptions*) dNSLookupOptions
    completionHandler: (void (^)(OAIDNSLookupResults* output, NSError* error)) handler {
    // verify the required parameter 'dNSLookupOptions' is set
    if (dNSLookupOptions == nil) {
        NSParameterAssert(dNSLookupOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dNSLookupOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIMailServerControllerApiErrorDomain code:kOAIMailServerControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail-server/describe/dns-lookup"];

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
    bodyParam = dNSLookupOptions;

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
                              responseType: @"OAIDNSLookupResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDNSLookupResults*)data, error);
                                }
                            }];
}

///
/// Get IP address for a domain
/// 
///  @param name  
///
///  @returns OAIIPAddressResult*
///
-(NSURLSessionTask*) getIpAddressWithName: (NSString*) name
    completionHandler: (void (^)(OAIIPAddressResult* output, NSError* error)) handler {
    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kOAIMailServerControllerApiErrorDomain code:kOAIMailServerControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail-server/describe/ip-address"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        queryParams[@"name"] = name;
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
                              responseType: @"OAIIPAddressResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIIPAddressResult*)data, error);
                                }
                            }];
}

///
/// Deprecated. Use the EmailVerificationController methods for more accurate and reliable functionality. Verify the existence of an email address at a given mail server.
/// 
///  @param verifyEmailAddressOptions  
///
///  @returns OAIEmailVerificationResult*
///
-(NSURLSessionTask*) verifyEmailAddressWithVerifyEmailAddressOptions: (OAIVerifyEmailAddressOptions*) verifyEmailAddressOptions
    completionHandler: (void (^)(OAIEmailVerificationResult* output, NSError* error)) handler {
    // verify the required parameter 'verifyEmailAddressOptions' is set
    if (verifyEmailAddressOptions == nil) {
        NSParameterAssert(verifyEmailAddressOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"verifyEmailAddressOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIMailServerControllerApiErrorDomain code:kOAIMailServerControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail-server/verify/email-address"];

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
    bodyParam = verifyEmailAddressOptions;

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
                              responseType: @"OAIEmailVerificationResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmailVerificationResult*)data, error);
                                }
                            }];
}



@end
