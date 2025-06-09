#import "OAIMFAControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAICreateTotpDeviceOtpAuthUrlOptions.h"
#import "OAITotpDeviceCodeDto.h"
#import "OAITotpDeviceDto.h"
#import "OAITotpDeviceOptionalDto.h"


@interface OAIMFAControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIMFAControllerApi

NSString* kOAIMFAControllerApiErrorDomain = @"OAIMFAControllerApiErrorDomain";
NSInteger kOAIMFAControllerApiMissingParamErrorCode = 234513;

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
/// Create a TOTP device from custom options
/// Create a virtual TOTP device for custom options specifying all parameters of the TOTP device.
///  @param createTotpDeviceOtpAuthUrlOptions  
///
///  @returns OAITotpDeviceDto*
///
-(NSURLSessionTask*) createTotpDeviceForCustomWithCreateTotpDeviceOtpAuthUrlOptions: (OAICreateTotpDeviceOtpAuthUrlOptions*) createTotpDeviceOtpAuthUrlOptions
    completionHandler: (void (^)(OAITotpDeviceDto* output, NSError* error)) handler {
    // verify the required parameter 'createTotpDeviceOtpAuthUrlOptions' is set
    if (createTotpDeviceOtpAuthUrlOptions == nil) {
        NSParameterAssert(createTotpDeviceOtpAuthUrlOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createTotpDeviceOtpAuthUrlOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIMFAControllerApiErrorDomain code:kOAIMFAControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mfa/totp/device/custom"];

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
    bodyParam = createTotpDeviceOtpAuthUrlOptions;

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
                              responseType: @"OAITotpDeviceDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITotpDeviceDto*)data, error);
                                }
                            }];
}

///
/// Create a TOTP device from an OTP Auth URL
/// Create a virtual TOTP device for a given OTP Auth URL such as otpauth://totp/MyApp:alice@example.com?secret=ABC123&issuer=MyApp&period=30&digits=6&algorithm=SHA1. You can provider overrides in the options for each component of the URL.
///  @param createTotpDeviceOtpAuthUrlOptions  
///
///  @returns OAITotpDeviceDto*
///
-(NSURLSessionTask*) createTotpDeviceForOtpAuthUrlWithCreateTotpDeviceOtpAuthUrlOptions: (OAICreateTotpDeviceOtpAuthUrlOptions*) createTotpDeviceOtpAuthUrlOptions
    completionHandler: (void (^)(OAITotpDeviceDto* output, NSError* error)) handler {
    // verify the required parameter 'createTotpDeviceOtpAuthUrlOptions' is set
    if (createTotpDeviceOtpAuthUrlOptions == nil) {
        NSParameterAssert(createTotpDeviceOtpAuthUrlOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createTotpDeviceOtpAuthUrlOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIMFAControllerApiErrorDomain code:kOAIMFAControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mfa/totp/device/otpAuthUrl"];

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
    bodyParam = createTotpDeviceOtpAuthUrlOptions;

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
                              responseType: @"OAITotpDeviceDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITotpDeviceDto*)data, error);
                                }
                            }];
}

///
/// Get a TOTP device by ID
/// Get Time-Based One-Time Password (TOTP) device by its ID.
///  @param _id  
///
///  @returns OAITotpDeviceDto*
///
-(NSURLSessionTask*) getTotpDeviceWithId: (NSString*) _id
    completionHandler: (void (^)(OAITotpDeviceDto* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIMFAControllerApiErrorDomain code:kOAIMFAControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mfa/totp/device/{id}"];

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
                              responseType: @"OAITotpDeviceDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITotpDeviceDto*)data, error);
                                }
                            }];
}

///
/// Get a TOTP device by username, issuer, or name. Returns empty if not found.
/// Get Time-Based One-Time Password (TOTP) device by its username and issuer mapping.
///  @param name Optional name filter (optional)
///
///  @param issuer Optional issuer filter (optional)
///
///  @param username Optional username filter (optional)
///
///  @returns OAITotpDeviceOptionalDto*
///
-(NSURLSessionTask*) getTotpDeviceByWithName: (NSString*) name
    issuer: (NSString*) issuer
    username: (NSString*) username
    completionHandler: (void (^)(OAITotpDeviceOptionalDto* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mfa/totp/device/by"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (issuer != nil) {
        queryParams[@"issuer"] = issuer;
    }
    if (username != nil) {
        queryParams[@"username"] = username;
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
                              responseType: @"OAITotpDeviceOptionalDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITotpDeviceOptionalDto*)data, error);
                                }
                            }];
}

///
/// Get a TOTP device code by device ID
/// Get Time-Based One-Time Password for a device by its ID.
///  @param _id  
///
///  @param at  (optional)
///
///  @returns OAITotpDeviceCodeDto*
///
-(NSURLSessionTask*) getTotpDeviceCodeWithId: (NSString*) _id
    at: (NSDate*) at
    completionHandler: (void (^)(OAITotpDeviceCodeDto* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIMFAControllerApiErrorDomain code:kOAIMFAControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mfa/totp/device/{id}/code"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (at != nil) {
        queryParams[@"at"] = at;
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
                              responseType: @"OAITotpDeviceCodeDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITotpDeviceCodeDto*)data, error);
                                }
                            }];
}



@end
