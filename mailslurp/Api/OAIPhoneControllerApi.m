#import "OAIPhoneControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAcquirePhonePoolLeaseOptions.h"
#import "OAIAddPhonePoolNumbersOptions.h"
#import "OAIAvailablePhoneNumbersResult.h"
#import "OAIConsentStatusDto.h"
#import "OAICreateEmergencyAddressOptions.h"
#import "OAICreatePhoneNumberOptions.h"
#import "OAICreatePhonePoolOptions.h"
#import "OAICreatePhoneProvisioningJobOptions.h"
#import "OAIEmergencyAddress.h"
#import "OAIEmergencyAddressDto.h"
#import "OAIEmptyResponseDto.h"
#import "OAIGetOrCreatePhonePoolOptions.h"
#import "OAIPagePhoneMessageThreadItemProjection.h"
#import "OAIPagePhoneMessageThreadProjection.h"
#import "OAIPagePhoneNumberProjection.h"
#import "OAIPagePhoneNumberReleaseProjection.h"
#import "OAIPageSentSmsProjection.h"
#import "OAIPageSmsProjection.h"
#import "OAIPhoneNumberDto.h"
#import "OAIPhoneNumberLineTypeLookupDto.h"
#import "OAIPhoneNumberReleaseProjection.h"
#import "OAIPhoneNumberValidationDto.h"
#import "OAIPhonePlanAvailability.h"
#import "OAIPhonePlanDto.h"
#import "OAIPhonePoolDetailDto.h"
#import "OAIPhonePoolDto.h"
#import "OAIPhonePoolLeaseDto.h"
#import "OAIPhoneProviderCapabilitiesResult.h"
#import "OAIPhoneProvisioningJobDto.h"
#import "OAIPhoneSmsPrepaidCreditDto.h"
#import "OAIPhoneSmsPrepaidCreditsDto.h"
#import "OAIPhoneSummaryDto.h"
#import "OAISearchAvailablePhoneNumbersOptions.h"
#import "OAISentSmsDto.h"
#import "OAISetPhoneFavouritedOptions.h"
#import "OAISmsSendOptions.h"
#import "OAITestPhoneNumberOptions.h"
#import "OAIUpdatePhoneNumberOptions.h"
#import "OAIUpdatePhonePoolOptions.h"
#import "OAIValidatePhoneNumberOptions.h"


@interface OAIPhoneControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIPhoneControllerApi

NSString* kOAIPhoneControllerApiErrorDomain = @"OAIPhoneControllerApiErrorDomain";
NSInteger kOAIPhoneControllerApiMissingParamErrorCode = 234513;

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
/// Acquire phone pool lease
/// Acquire an available phone number from the pool and mark it leased
///  @param poolId  
///
///  @param acquirePhonePoolLeaseOptions  
///
///  @returns OAIPhonePoolLeaseDto*
///
-(NSURLSessionTask*) acquirePhonePoolLeaseWithPoolId: (NSString*) poolId
    acquirePhonePoolLeaseOptions: (OAIAcquirePhonePoolLeaseOptions*) acquirePhonePoolLeaseOptions
    completionHandler: (void (^)(OAIPhonePoolLeaseDto* output, NSError* error)) handler {
    // verify the required parameter 'poolId' is set
    if (poolId == nil) {
        NSParameterAssert(poolId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"poolId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'acquirePhonePoolLeaseOptions' is set
    if (acquirePhonePoolLeaseOptions == nil) {
        NSParameterAssert(acquirePhonePoolLeaseOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"acquirePhonePoolLeaseOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/pools/{poolId}/leases"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (poolId != nil) {
        pathParams[@"poolId"] = poolId;
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
    bodyParam = acquirePhonePoolLeaseOptions;

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
                              responseType: @"OAIPhonePoolLeaseDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhonePoolLeaseDto*)data, error);
                                }
                            }];
}

///
/// Add all phone numbers to phone pool
/// Add all active owned phone numbers to a pool
///  @param poolId  
///
///  @returns OAIPhonePoolDetailDto*
///
-(NSURLSessionTask*) addAllPhoneNumbersToPhonePoolWithPoolId: (NSString*) poolId
    completionHandler: (void (^)(OAIPhonePoolDetailDto* output, NSError* error)) handler {
    // verify the required parameter 'poolId' is set
    if (poolId == nil) {
        NSParameterAssert(poolId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"poolId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/pools/{poolId}/numbers/add-all"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (poolId != nil) {
        pathParams[@"poolId"] = poolId;
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
                              responseType: @"OAIPhonePoolDetailDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhonePoolDetailDto*)data, error);
                                }
                            }];
}

///
/// Add phone numbers to phone pool
/// Add one or more owned phone numbers to a pool
///  @param poolId  
///
///  @param addPhonePoolNumbersOptions  
///
///  @returns OAIPhonePoolDetailDto*
///
-(NSURLSessionTask*) addPhoneNumbersToPhonePoolWithPoolId: (NSString*) poolId
    addPhonePoolNumbersOptions: (OAIAddPhonePoolNumbersOptions*) addPhonePoolNumbersOptions
    completionHandler: (void (^)(OAIPhonePoolDetailDto* output, NSError* error)) handler {
    // verify the required parameter 'poolId' is set
    if (poolId == nil) {
        NSParameterAssert(poolId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"poolId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'addPhonePoolNumbersOptions' is set
    if (addPhonePoolNumbersOptions == nil) {
        NSParameterAssert(addPhonePoolNumbersOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"addPhonePoolNumbersOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/pools/{poolId}/numbers"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (poolId != nil) {
        pathParams[@"poolId"] = poolId;
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
    bodyParam = addPhonePoolNumbersOptions;

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
                              responseType: @"OAIPhonePoolDetailDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhonePoolDetailDto*)data, error);
                                }
                            }];
}

///
/// Create an emergency address
/// Add an emergency address to a phone number
///  @param createEmergencyAddressOptions  
///
///  @returns OAIEmergencyAddress*
///
-(NSURLSessionTask*) createEmergencyAddressWithCreateEmergencyAddressOptions: (OAICreateEmergencyAddressOptions*) createEmergencyAddressOptions
    completionHandler: (void (^)(OAIEmergencyAddress* output, NSError* error)) handler {
    // verify the required parameter 'createEmergencyAddressOptions' is set
    if (createEmergencyAddressOptions == nil) {
        NSParameterAssert(createEmergencyAddressOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createEmergencyAddressOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/emergency-addresses"];

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
    bodyParam = createEmergencyAddressOptions;

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
                              responseType: @"OAIEmergencyAddress*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmergencyAddress*)data, error);
                                }
                            }];
}

///
/// Add phone number to your account. Only works if you have already added a plan and an initial phone number in your account and acknowledged the pricing and terms of service by enabling API phone creation.
/// Create new phone number
///  @param createPhoneNumberOptions  
///
///  @returns OAIPhoneNumberDto*
///
-(NSURLSessionTask*) createPhoneNumberWithCreatePhoneNumberOptions: (OAICreatePhoneNumberOptions*) createPhoneNumberOptions
    completionHandler: (void (^)(OAIPhoneNumberDto* output, NSError* error)) handler {
    // verify the required parameter 'createPhoneNumberOptions' is set
    if (createPhoneNumberOptions == nil) {
        NSParameterAssert(createPhoneNumberOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createPhoneNumberOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone"];

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
    bodyParam = createPhoneNumberOptions;

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
                              responseType: @"OAIPhoneNumberDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhoneNumberDto*)data, error);
                                }
                            }];
}

///
/// Create phone pool
/// Create a reusable pool of phone numbers for coordinated leasing
///  @param createPhonePoolOptions  
///
///  @returns OAIPhonePoolDetailDto*
///
-(NSURLSessionTask*) createPhonePoolWithCreatePhonePoolOptions: (OAICreatePhonePoolOptions*) createPhonePoolOptions
    completionHandler: (void (^)(OAIPhonePoolDetailDto* output, NSError* error)) handler {
    // verify the required parameter 'createPhonePoolOptions' is set
    if (createPhonePoolOptions == nil) {
        NSParameterAssert(createPhonePoolOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createPhonePoolOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/pools"];

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
    bodyParam = createPhonePoolOptions;

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
                              responseType: @"OAIPhonePoolDetailDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhonePoolDetailDto*)data, error);
                                }
                            }];
}

///
/// Create a phone provisioning job
/// Create an advanced phone provisioning job from shortlisted numbers
///  @param createPhoneProvisioningJobOptions  
///
///  @returns OAIPhoneProvisioningJobDto*
///
-(NSURLSessionTask*) createPhoneProvisioningJobWithCreatePhoneProvisioningJobOptions: (OAICreatePhoneProvisioningJobOptions*) createPhoneProvisioningJobOptions
    completionHandler: (void (^)(OAIPhoneProvisioningJobDto* output, NSError* error)) handler {
    // verify the required parameter 'createPhoneProvisioningJobOptions' is set
    if (createPhoneProvisioningJobOptions == nil) {
        NSParameterAssert(createPhoneProvisioningJobOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createPhoneProvisioningJobOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/provisioning/jobs"];

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
    bodyParam = createPhoneProvisioningJobOptions;

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
                              responseType: @"OAIPhoneProvisioningJobDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhoneProvisioningJobDto*)data, error);
                                }
                            }];
}

///
/// Delete all phone numbers
/// Remove all phone number from account
///  @returns void
///
-(NSURLSessionTask*) deleteAllPhoneNumberWithCompletionHandler: 
    (void (^)(NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/numbers"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

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
/// Delete an emergency address
/// Delete an emergency address
///  @param addressId  
///
///  @returns OAIEmptyResponseDto*
///
-(NSURLSessionTask*) deleteEmergencyAddressWithAddressId: (NSString*) addressId
    completionHandler: (void (^)(OAIEmptyResponseDto* output, NSError* error)) handler {
    // verify the required parameter 'addressId' is set
    if (addressId == nil) {
        NSParameterAssert(addressId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"addressId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/emergency-addresses/{addressId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (addressId != nil) {
        pathParams[@"addressId"] = addressId;
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
                              responseType: @"OAIEmptyResponseDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmptyResponseDto*)data, error);
                                }
                            }];
}

///
/// Delete messages in a phone thread
/// Delete all messages in an SMS thread
///  @param phoneNumberId  
///
///  @param otherNumber  
///
///  @returns OAIEmptyResponseDto*
///
-(NSURLSessionTask*) deletePhoneMessageThreadItemsWithPhoneNumberId: (NSString*) phoneNumberId
    otherNumber: (NSString*) otherNumber
    completionHandler: (void (^)(OAIEmptyResponseDto* output, NSError* error)) handler {
    // verify the required parameter 'phoneNumberId' is set
    if (phoneNumberId == nil) {
        NSParameterAssert(phoneNumberId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"phoneNumberId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'otherNumber' is set
    if (otherNumber == nil) {
        NSParameterAssert(otherNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"otherNumber"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/numbers/{phoneNumberId}/message-threads/{otherNumber}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (phoneNumberId != nil) {
        pathParams[@"phoneNumberId"] = phoneNumberId;
    }
    if (otherNumber != nil) {
        pathParams[@"otherNumber"] = otherNumber;
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
                              responseType: @"OAIEmptyResponseDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmptyResponseDto*)data, error);
                                }
                            }];
}

///
/// Delete a phone number
/// Remove phone number from account
///  @param phoneNumberId  
///
///  @returns void
///
-(NSURLSessionTask*) deletePhoneNumberWithPhoneNumberId: (NSString*) phoneNumberId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'phoneNumberId' is set
    if (phoneNumberId == nil) {
        NSParameterAssert(phoneNumberId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"phoneNumberId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/numbers/{phoneNumberId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (phoneNumberId != nil) {
        pathParams[@"phoneNumberId"] = phoneNumberId;
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
/// Delete phone pool
/// Delete a phone pool and release any active leases from that pool
///  @param poolId  
///
///  @returns void
///
-(NSURLSessionTask*) deletePhonePoolWithPoolId: (NSString*) poolId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'poolId' is set
    if (poolId == nil) {
        NSParameterAssert(poolId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"poolId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/pools/{poolId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (poolId != nil) {
        pathParams[@"poolId"] = poolId;
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
/// Get the latest messages for all phones
/// List all message threads for all phones
///  @param page  (optional, default to @0)
///
///  @param size  (optional, default to @20)
///
///  @returns OAIPagePhoneMessageThreadProjection*
///
-(NSURLSessionTask*) getAllPhoneMessageThreadsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    completionHandler: (void (^)(OAIPagePhoneMessageThreadProjection* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/numbers/message-threads"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (size != nil) {
        queryParams[@"size"] = size;
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
                              responseType: @"OAIPagePhoneMessageThreadProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPagePhoneMessageThreadProjection*)data, error);
                                }
                            }];
}

///
/// Get all phone number releases
/// List released or deleted phone numbers
///  @param page  (optional, default to @0)
///
///  @param size  (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"DESC")
///
///  @returns OAIPagePhoneNumberReleaseProjection*
///
-(NSURLSessionTask*) getAllPhoneNumberReleasesWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIPagePhoneNumberReleaseProjection* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/releases"];

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
                              responseType: @"OAIPagePhoneNumberReleaseProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPagePhoneNumberReleaseProjection*)data, error);
                                }
                            }];
}

///
/// Get consent status
/// Get the status of phone usage consent
///  @returns OAIConsentStatusDto*
///
-(NSURLSessionTask*) getConsentStatusWithCompletionHandler: 
    (void (^)(OAIConsentStatusDto* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/consent"];

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
                              responseType: @"OAIConsentStatusDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIConsentStatusDto*)data, error);
                                }
                            }];
}

///
/// Get an emergency address
/// Fetch an emergency address by ID
///  @param addressId  
///
///  @returns OAIEmergencyAddress*
///
-(NSURLSessionTask*) getEmergencyAddressWithAddressId: (NSString*) addressId
    completionHandler: (void (^)(OAIEmergencyAddress* output, NSError* error)) handler {
    // verify the required parameter 'addressId' is set
    if (addressId == nil) {
        NSParameterAssert(addressId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"addressId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/emergency-addresses/{addressId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (addressId != nil) {
        pathParams[@"addressId"] = addressId;
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
                              responseType: @"OAIEmergencyAddress*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmergencyAddress*)data, error);
                                }
                            }];
}

///
/// Get emergency addresses
/// List emergency addresses
///  @returns NSArray<OAIEmergencyAddressDto>*
///
-(NSURLSessionTask*) getEmergencyAddressesWithCompletionHandler: 
    (void (^)(NSArray<OAIEmergencyAddressDto>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/emergency-addresses"];

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
                              responseType: @"NSArray<OAIEmergencyAddressDto>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIEmergencyAddressDto>*)data, error);
                                }
                            }];
}

///
/// Get or create phone pool
/// Get a phone pool by name or create it if it does not exist
///  @param getOrCreatePhonePoolOptions  
///
///  @returns OAIPhonePoolDetailDto*
///
-(NSURLSessionTask*) getOrCreatePhonePoolWithGetOrCreatePhonePoolOptions: (OAIGetOrCreatePhonePoolOptions*) getOrCreatePhonePoolOptions
    completionHandler: (void (^)(OAIPhonePoolDetailDto* output, NSError* error)) handler {
    // verify the required parameter 'getOrCreatePhonePoolOptions' is set
    if (getOrCreatePhonePoolOptions == nil) {
        NSParameterAssert(getOrCreatePhonePoolOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"getOrCreatePhonePoolOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/pools/get-or-create"];

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
    bodyParam = getOrCreatePhonePoolOptions;

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
                              responseType: @"OAIPhonePoolDetailDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhonePoolDetailDto*)data, error);
                                }
                            }];
}

///
/// Get messages in a phone thread
/// List message thread messages for a phone message thread
///  @param phoneNumberId  
///
///  @param otherNumber  
///
///  @param page  (optional, default to @0)
///
///  @param size  (optional, default to @20)
///
///  @returns OAIPagePhoneMessageThreadItemProjection*
///
-(NSURLSessionTask*) getPhoneMessageThreadItemsWithPhoneNumberId: (NSString*) phoneNumberId
    otherNumber: (NSString*) otherNumber
    page: (NSNumber*) page
    size: (NSNumber*) size
    completionHandler: (void (^)(OAIPagePhoneMessageThreadItemProjection* output, NSError* error)) handler {
    // verify the required parameter 'phoneNumberId' is set
    if (phoneNumberId == nil) {
        NSParameterAssert(phoneNumberId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"phoneNumberId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'otherNumber' is set
    if (otherNumber == nil) {
        NSParameterAssert(otherNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"otherNumber"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/numbers/{phoneNumberId}/message-threads/{otherNumber}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (phoneNumberId != nil) {
        pathParams[@"phoneNumberId"] = phoneNumberId;
    }
    if (otherNumber != nil) {
        pathParams[@"otherNumber"] = otherNumber;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (size != nil) {
        queryParams[@"size"] = size;
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
                              responseType: @"OAIPagePhoneMessageThreadItemProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPagePhoneMessageThreadItemProjection*)data, error);
                                }
                            }];
}

///
/// Get the latest message preview for a thread
/// List message threads for a phone
///  @param phoneNumberId  
///
///  @param page  (optional, default to @0)
///
///  @param size  (optional, default to @20)
///
///  @returns OAIPagePhoneMessageThreadProjection*
///
-(NSURLSessionTask*) getPhoneMessageThreadsWithPhoneNumberId: (NSString*) phoneNumberId
    page: (NSNumber*) page
    size: (NSNumber*) size
    completionHandler: (void (^)(OAIPagePhoneMessageThreadProjection* output, NSError* error)) handler {
    // verify the required parameter 'phoneNumberId' is set
    if (phoneNumberId == nil) {
        NSParameterAssert(phoneNumberId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"phoneNumberId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/numbers/{phoneNumberId}/message-threads"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (phoneNumberId != nil) {
        pathParams[@"phoneNumberId"] = phoneNumberId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (size != nil) {
        queryParams[@"size"] = size;
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
                              responseType: @"OAIPagePhoneMessageThreadProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPagePhoneMessageThreadProjection*)data, error);
                                }
                            }];
}

///
/// Get a phone number by ID
/// Get a phone number by ID
///  @param phoneNumberId  
///
///  @returns OAIPhoneNumberDto*
///
-(NSURLSessionTask*) getPhoneNumberWithPhoneNumberId: (NSString*) phoneNumberId
    completionHandler: (void (^)(OAIPhoneNumberDto* output, NSError* error)) handler {
    // verify the required parameter 'phoneNumberId' is set
    if (phoneNumberId == nil) {
        NSParameterAssert(phoneNumberId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"phoneNumberId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/numbers/{phoneNumberId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (phoneNumberId != nil) {
        pathParams[@"phoneNumberId"] = phoneNumberId;
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
                              responseType: @"OAIPhoneNumberDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhoneNumberDto*)data, error);
                                }
                            }];
}

///
/// Get a phone number by name
/// Get a phone number by name
///  @param name  
///
///  @returns OAIPhoneNumberDto*
///
-(NSURLSessionTask*) getPhoneNumberByNameWithName: (NSString*) name
    completionHandler: (void (^)(OAIPhoneNumberDto* output, NSError* error)) handler {
    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/numbers/by-name"];

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
                              responseType: @"OAIPhoneNumberDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhoneNumberDto*)data, error);
                                }
                            }];
}

///
/// Get a phone number by phone number
/// Get a phone number by phone number
///  @param phoneNumber  
///
///  @returns OAIPhoneNumberDto*
///
-(NSURLSessionTask*) getPhoneNumberByPhoneNumberWithPhoneNumber: (NSString*) phoneNumber
    completionHandler: (void (^)(OAIPhoneNumberDto* output, NSError* error)) handler {
    // verify the required parameter 'phoneNumber' is set
    if (phoneNumber == nil) {
        NSParameterAssert(phoneNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"phoneNumber"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/numbers/by-phone-number"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (phoneNumber != nil) {
        queryParams[@"phoneNumber"] = phoneNumber;
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
                              responseType: @"OAIPhoneNumberDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhoneNumberDto*)data, error);
                                }
                            }];
}

///
/// Get line type intelligence for a phone number
/// Lookup line type intelligence for a phone number
///  @param validatePhoneNumberOptions  
///
///  @returns OAIPhoneNumberLineTypeLookupDto*
///
-(NSURLSessionTask*) getPhoneNumberLineTypeIntelligenceWithValidatePhoneNumberOptions: (OAIValidatePhoneNumberOptions*) validatePhoneNumberOptions
    completionHandler: (void (^)(OAIPhoneNumberLineTypeLookupDto* output, NSError* error)) handler {
    // verify the required parameter 'validatePhoneNumberOptions' is set
    if (validatePhoneNumberOptions == nil) {
        NSParameterAssert(validatePhoneNumberOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"validatePhoneNumberOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/validate/line-type-intelligence"];

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
    bodyParam = validatePhoneNumberOptions;

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
                              responseType: @"OAIPhoneNumberLineTypeLookupDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhoneNumberLineTypeLookupDto*)data, error);
                                }
                            }];
}

///
/// Get phone number release
/// Get a released or deleted phone numbers
///  @param releaseId  
///
///  @returns OAIPhoneNumberReleaseProjection*
///
-(NSURLSessionTask*) getPhoneNumberReleaseWithReleaseId: (NSString*) releaseId
    completionHandler: (void (^)(OAIPhoneNumberReleaseProjection* output, NSError* error)) handler {
    // verify the required parameter 'releaseId' is set
    if (releaseId == nil) {
        NSParameterAssert(releaseId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"releaseId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/releases/{releaseId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (releaseId != nil) {
        pathParams[@"releaseId"] = releaseId;
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
                              responseType: @"OAIPhoneNumberReleaseProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhoneNumberReleaseProjection*)data, error);
                                }
                            }];
}

///
/// Get phone numbers
/// List phone numbers for account
///  @param phoneCountry Optional phone country (optional)
///
///  @param lineType Optional line type filter (optional)
///
///  @param carrierName Optional carrier name filter (optional)
///
///  @param mobileCountryCode Optional mobile country code filter (optional)
///
///  @param mobileNetworkCode Optional mobile network code filter (optional)
///
///  @param providerLabel Optional provider label filter such as T1 or T2 (optional)
///
///  @param page Optional page index for list pagination (optional, default to @0)
///
///  @param size Optional page size for list pagination (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @param since Filter by created at after the given timestamp (optional)
///
///  @param before Filter by created at before the given timestamp (optional)
///
///  @param search Optional search filter (optional)
///
///  @param include Optional phoneIds to include in result (optional)
///
///  @param favourite Optionally filter results for favourites only (optional, default to @(NO))
///
///  @returns OAIPagePhoneNumberProjection*
///
-(NSURLSessionTask*) getPhoneNumbersWithPhoneCountry: (NSString*) phoneCountry
    lineType: (NSString*) lineType
    carrierName: (NSString*) carrierName
    mobileCountryCode: (NSString*) mobileCountryCode
    mobileNetworkCode: (NSString*) mobileNetworkCode
    providerLabel: (NSString*) providerLabel
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    search: (NSString*) search
    include: (NSArray<NSString*>*) include
    favourite: (NSNumber*) favourite
    completionHandler: (void (^)(OAIPagePhoneNumberProjection* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/numbers"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (phoneCountry != nil) {
        queryParams[@"phoneCountry"] = phoneCountry;
    }
    if (lineType != nil) {
        queryParams[@"lineType"] = lineType;
    }
    if (carrierName != nil) {
        queryParams[@"carrierName"] = carrierName;
    }
    if (mobileCountryCode != nil) {
        queryParams[@"mobileCountryCode"] = mobileCountryCode;
    }
    if (mobileNetworkCode != nil) {
        queryParams[@"mobileNetworkCode"] = mobileNetworkCode;
    }
    if (providerLabel != nil) {
        queryParams[@"providerLabel"] = providerLabel;
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
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    if (search != nil) {
        queryParams[@"search"] = search;
    }
    if (include != nil) {
        queryParams[@"include"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: include format: @"multi"];
    }
    if (favourite != nil) {
        queryParams[@"favourite"] = [favourite isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIPagePhoneNumberProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPagePhoneNumberProjection*)data, error);
                                }
                            }];
}

///
/// Get phone plans
/// Get phone number plans
///  @returns NSArray<OAIPhonePlanDto>*
///
-(NSURLSessionTask*) getPhonePlansWithCompletionHandler: 
    (void (^)(NSArray<OAIPhonePlanDto>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/plans"];

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
                              responseType: @"NSArray<OAIPhonePlanDto>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIPhonePlanDto>*)data, error);
                                }
                            }];
}

///
/// Get phone plans availability
/// 
///  @returns OAIPhonePlanAvailability*
///
-(NSURLSessionTask*) getPhonePlansAvailabilityWithCompletionHandler: 
    (void (^)(OAIPhonePlanAvailability* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/plans/availability"];

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
                              responseType: @"OAIPhonePlanAvailability*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhonePlanAvailability*)data, error);
                                }
                            }];
}

///
/// Get phone pool
/// Get phone pool details by ID
///  @param poolId  
///
///  @returns OAIPhonePoolDetailDto*
///
-(NSURLSessionTask*) getPhonePoolWithPoolId: (NSString*) poolId
    completionHandler: (void (^)(OAIPhonePoolDetailDto* output, NSError* error)) handler {
    // verify the required parameter 'poolId' is set
    if (poolId == nil) {
        NSParameterAssert(poolId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"poolId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/pools/{poolId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (poolId != nil) {
        pathParams[@"poolId"] = poolId;
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
                              responseType: @"OAIPhonePoolDetailDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhonePoolDetailDto*)data, error);
                                }
                            }];
}

///
/// Get phone pool by name
/// Get phone pool details by name
///  @param name  
///
///  @returns OAIPhonePoolDetailDto*
///
-(NSURLSessionTask*) getPhonePoolByNameWithName: (NSString*) name
    completionHandler: (void (^)(OAIPhonePoolDetailDto* output, NSError* error)) handler {
    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/pools/by-name"];

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
                              responseType: @"OAIPhonePoolDetailDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhonePoolDetailDto*)data, error);
                                }
                            }];
}

///
/// Get phone pools
/// List phone pools for the authenticated user
///  @returns NSArray<OAIPhonePoolDto>*
///
-(NSURLSessionTask*) getPhonePoolsWithCompletionHandler: 
    (void (^)(NSArray<OAIPhonePoolDto>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/pools"];

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
                              responseType: @"NSArray<OAIPhonePoolDto>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIPhonePoolDto>*)data, error);
                                }
                            }];
}

///
/// Get phone provisioning capabilities
/// Get supported provider-country variant capabilities for advanced provisioning
///  @param phoneCountry  
///
///  @param providerLabel  (optional)
///
///  @returns OAIPhoneProviderCapabilitiesResult*
///
-(NSURLSessionTask*) getPhoneProvisioningCapabilitiesWithPhoneCountry: (NSString*) phoneCountry
    providerLabel: (NSString*) providerLabel
    completionHandler: (void (^)(OAIPhoneProviderCapabilitiesResult* output, NSError* error)) handler {
    // verify the required parameter 'phoneCountry' is set
    if (phoneCountry == nil) {
        NSParameterAssert(phoneCountry);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"phoneCountry"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/provisioning/capabilities"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (phoneCountry != nil) {
        queryParams[@"phoneCountry"] = phoneCountry;
    }
    if (providerLabel != nil) {
        queryParams[@"providerLabel"] = providerLabel;
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
                              responseType: @"OAIPhoneProviderCapabilitiesResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhoneProviderCapabilitiesResult*)data, error);
                                }
                            }];
}

///
/// Get phone provisioning job
/// Get advanced phone provisioning job status
///  @param jobId  
///
///  @returns OAIPhoneProvisioningJobDto*
///
-(NSURLSessionTask*) getPhoneProvisioningJobWithJobId: (NSString*) jobId
    completionHandler: (void (^)(OAIPhoneProvisioningJobDto* output, NSError* error)) handler {
    // verify the required parameter 'jobId' is set
    if (jobId == nil) {
        NSParameterAssert(jobId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"jobId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/provisioning/jobs/{jobId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"OAIPhoneProvisioningJobDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhoneProvisioningJobDto*)data, error);
                                }
                            }];
}

///
/// Get SMS prepaid credit
/// Get a specific SMS prepaid credit balance for the authenticated account
///  @param creditId  
///
///  @returns OAIPhoneSmsPrepaidCreditDto*
///
-(NSURLSessionTask*) getPhoneSmsPrepaidCreditWithCreditId: (NSString*) creditId
    completionHandler: (void (^)(OAIPhoneSmsPrepaidCreditDto* output, NSError* error)) handler {
    // verify the required parameter 'creditId' is set
    if (creditId == nil) {
        NSParameterAssert(creditId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"creditId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/sms-prepaid-credits/{creditId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (creditId != nil) {
        pathParams[@"creditId"] = creditId;
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
                              responseType: @"OAIPhoneSmsPrepaidCreditDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhoneSmsPrepaidCreditDto*)data, error);
                                }
                            }];
}

///
/// Get SMS prepaid credits
/// List SMS prepaid credits for the authenticated account
///  @returns OAIPhoneSmsPrepaidCreditsDto*
///
-(NSURLSessionTask*) getPhoneSmsPrepaidCreditsWithCompletionHandler: 
    (void (^)(OAIPhoneSmsPrepaidCreditsDto* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/sms-prepaid-credits"];

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
                              responseType: @"OAIPhoneSmsPrepaidCreditsDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhoneSmsPrepaidCreditsDto*)data, error);
                                }
                            }];
}

///
/// Get phone summary
/// Get overview of assigned phones
///  @returns OAIPhoneSummaryDto*
///
-(NSURLSessionTask*) getPhoneSummaryWithCompletionHandler: 
    (void (^)(OAIPhoneSummaryDto* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/summary"];

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
                              responseType: @"OAIPhoneSummaryDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhoneSummaryDto*)data, error);
                                }
                            }];
}

///
/// List sent TXT messages for a phone number
/// Get sent SMS messages for a phone number
///  @param phoneNumberId  
///
///  @param page Optional page index in SMS list pagination (optional, default to @0)
///
///  @param size Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @param since Optional filter SMSs received after given date time (optional)
///
///  @param before Optional filter SMSs received before given date time (optional)
///
///  @param search Optional search filter (optional)
///
///  @returns OAIPageSentSmsProjection*
///
-(NSURLSessionTask*) getSentSmsByPhoneNumberWithPhoneNumberId: (NSString*) phoneNumberId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    search: (NSString*) search
    completionHandler: (void (^)(OAIPageSentSmsProjection* output, NSError* error)) handler {
    // verify the required parameter 'phoneNumberId' is set
    if (phoneNumberId == nil) {
        NSParameterAssert(phoneNumberId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"phoneNumberId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/numbers/{phoneNumberId}/sms-sent"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (phoneNumberId != nil) {
        pathParams[@"phoneNumberId"] = phoneNumberId;
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
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
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
                              responseType: @"OAIPageSentSmsProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageSentSmsProjection*)data, error);
                                }
                            }];
}

///
/// List SMS messages for a phone number
/// Get SMS messages for a phone number
///  @param phoneNumberId  
///
///  @param page Optional page index in SMS list pagination (optional, default to @0)
///
///  @param size Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @param unreadOnly Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly (optional, default to @(NO))
///
///  @param since Optional filter SMSs received after given date time (optional)
///
///  @param before Optional filter SMSs received before given date time (optional)
///
///  @param search Optional search filter (optional)
///
///  @param favourite Optionally filter results for favourites only (optional, default to @(NO))
///
///  @returns OAIPageSmsProjection*
///
-(NSURLSessionTask*) getSmsByPhoneNumberWithPhoneNumberId: (NSString*) phoneNumberId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    unreadOnly: (NSNumber*) unreadOnly
    since: (NSDate*) since
    before: (NSDate*) before
    search: (NSString*) search
    favourite: (NSNumber*) favourite
    completionHandler: (void (^)(OAIPageSmsProjection* output, NSError* error)) handler {
    // verify the required parameter 'phoneNumberId' is set
    if (phoneNumberId == nil) {
        NSParameterAssert(phoneNumberId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"phoneNumberId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/numbers/{phoneNumberId}/sms"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (phoneNumberId != nil) {
        pathParams[@"phoneNumberId"] = phoneNumberId;
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
    if (unreadOnly != nil) {
        queryParams[@"unreadOnly"] = [unreadOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    if (search != nil) {
        queryParams[@"search"] = search;
    }
    if (favourite != nil) {
        queryParams[@"favourite"] = [favourite isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIPageSmsProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageSmsProjection*)data, error);
                                }
                            }];
}

///
/// Reassign phone number release
/// Reassign phone number that was released or deleted
///  @param releaseId  
///
///  @returns OAIPhoneNumberDto*
///
-(NSURLSessionTask*) reassignPhoneNumberReleaseWithReleaseId: (NSString*) releaseId
    completionHandler: (void (^)(OAIPhoneNumberDto* output, NSError* error)) handler {
    // verify the required parameter 'releaseId' is set
    if (releaseId == nil) {
        NSParameterAssert(releaseId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"releaseId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/releases/{releaseId}/reassign"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (releaseId != nil) {
        pathParams[@"releaseId"] = releaseId;
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
                              responseType: @"OAIPhoneNumberDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhoneNumberDto*)data, error);
                                }
                            }];
}

///
/// Release phone pool lease
/// Release an active phone pool lease
///  @param poolId  
///
///  @param leaseId  
///
///  @returns void
///
-(NSURLSessionTask*) releasePhonePoolLeaseWithPoolId: (NSString*) poolId
    leaseId: (NSString*) leaseId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'poolId' is set
    if (poolId == nil) {
        NSParameterAssert(poolId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"poolId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'leaseId' is set
    if (leaseId == nil) {
        NSParameterAssert(leaseId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"leaseId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/pools/{poolId}/leases/{leaseId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (poolId != nil) {
        pathParams[@"poolId"] = poolId;
    }
    if (leaseId != nil) {
        pathParams[@"leaseId"] = leaseId;
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
/// Remove phone number from phone pool
/// Remove a phone number from a pool. If the number is leased from this pool the lease is released.
///  @param poolId  
///
///  @param phoneNumberId  
///
///  @returns void
///
-(NSURLSessionTask*) removePhoneNumberFromPhonePoolWithPoolId: (NSString*) poolId
    phoneNumberId: (NSString*) phoneNumberId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'poolId' is set
    if (poolId == nil) {
        NSParameterAssert(poolId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"poolId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'phoneNumberId' is set
    if (phoneNumberId == nil) {
        NSParameterAssert(phoneNumberId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"phoneNumberId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/pools/{poolId}/numbers/{phoneNumberId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (poolId != nil) {
        pathParams[@"poolId"] = poolId;
    }
    if (phoneNumberId != nil) {
        pathParams[@"phoneNumberId"] = phoneNumberId;
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
/// Search available phone numbers
/// Search available numbers for advanced provisioning
///  @param searchAvailablePhoneNumbersOptions  
///
///  @returns OAIAvailablePhoneNumbersResult*
///
-(NSURLSessionTask*) searchAvailablePhoneNumbersWithSearchAvailablePhoneNumbersOptions: (OAISearchAvailablePhoneNumbersOptions*) searchAvailablePhoneNumbersOptions
    completionHandler: (void (^)(OAIAvailablePhoneNumbersResult* output, NSError* error)) handler {
    // verify the required parameter 'searchAvailablePhoneNumbersOptions' is set
    if (searchAvailablePhoneNumbersOptions == nil) {
        NSParameterAssert(searchAvailablePhoneNumbersOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"searchAvailablePhoneNumbersOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/provisioning/search"];

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
    bodyParam = searchAvailablePhoneNumbersOptions;

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
                              responseType: @"OAIAvailablePhoneNumbersResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAvailablePhoneNumbersResult*)data, error);
                                }
                            }];
}

///
/// Send TXT message from a phone number
/// Send SMS from a phone number
///  @param phoneNumberId  
///
///  @param smsSendOptions  
///
///  @returns OAISentSmsDto*
///
-(NSURLSessionTask*) sendSmsFromPhoneNumberWithPhoneNumberId: (NSString*) phoneNumberId
    smsSendOptions: (OAISmsSendOptions*) smsSendOptions
    completionHandler: (void (^)(OAISentSmsDto* output, NSError* error)) handler {
    // verify the required parameter 'phoneNumberId' is set
    if (phoneNumberId == nil) {
        NSParameterAssert(phoneNumberId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"phoneNumberId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'smsSendOptions' is set
    if (smsSendOptions == nil) {
        NSParameterAssert(smsSendOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"smsSendOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/numbers/{phoneNumberId}/sms"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (phoneNumberId != nil) {
        pathParams[@"phoneNumberId"] = phoneNumberId;
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
    bodyParam = smsSendOptions;

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
                              responseType: @"OAISentSmsDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISentSmsDto*)data, error);
                                }
                            }];
}

///
/// Set consent status
/// Give or revoke consent for phone usage
///  @param agree  
///
///  @returns OAIConsentStatusDto*
///
-(NSURLSessionTask*) setConsentStatusWithAgree: (NSNumber*) agree
    completionHandler: (void (^)(OAIConsentStatusDto* output, NSError* error)) handler {
    // verify the required parameter 'agree' is set
    if (agree == nil) {
        NSParameterAssert(agree);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"agree"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/consent"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (agree != nil) {
        queryParams[@"agree"] = [agree isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIConsentStatusDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIConsentStatusDto*)data, error);
                                }
                            }];
}

///
/// Set phone favourited state
/// Set and return new favorite state for a phone
///  @param phoneNumberId ID of phone to set favourite state 
///
///  @param setPhoneFavouritedOptions  
///
///  @returns OAIPhoneNumberDto*
///
-(NSURLSessionTask*) setPhoneFavouritedWithPhoneNumberId: (NSString*) phoneNumberId
    setPhoneFavouritedOptions: (OAISetPhoneFavouritedOptions*) setPhoneFavouritedOptions
    completionHandler: (void (^)(OAIPhoneNumberDto* output, NSError* error)) handler {
    // verify the required parameter 'phoneNumberId' is set
    if (phoneNumberId == nil) {
        NSParameterAssert(phoneNumberId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"phoneNumberId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'setPhoneFavouritedOptions' is set
    if (setPhoneFavouritedOptions == nil) {
        NSParameterAssert(setPhoneFavouritedOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"setPhoneFavouritedOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/numbers/{phoneNumberId}/favourite"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (phoneNumberId != nil) {
        pathParams[@"phoneNumberId"] = phoneNumberId;
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
    bodyParam = setPhoneFavouritedOptions;

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
                              responseType: @"OAIPhoneNumberDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhoneNumberDto*)data, error);
                                }
                            }];
}

///
/// Test sending an SMS to a number
/// Test a phone number by sending an SMS to it. NOTE this is only for internal use to check that a phone number is working. For end-to-end phone testing see https://docs.mailslurp.com/txt-sms/
///  @param phoneNumberId  
///
///  @param testPhoneNumberOptions  
///
///  @param xTestId  (optional)
///
///  @returns void
///
-(NSURLSessionTask*) testPhoneNumberSendSmsWithPhoneNumberId: (NSString*) phoneNumberId
    testPhoneNumberOptions: (OAITestPhoneNumberOptions*) testPhoneNumberOptions
    xTestId: (NSString*) xTestId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'phoneNumberId' is set
    if (phoneNumberId == nil) {
        NSParameterAssert(phoneNumberId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"phoneNumberId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'testPhoneNumberOptions' is set
    if (testPhoneNumberOptions == nil) {
        NSParameterAssert(testPhoneNumberOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"testPhoneNumberOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/numbers/{phoneNumberId}/test"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (phoneNumberId != nil) {
        pathParams[@"phoneNumberId"] = phoneNumberId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xTestId != nil) {
        headerParams[@"x-test-id"] = xTestId;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
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
    bodyParam = testPhoneNumberOptions;

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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Update a phone number
/// Set field for phone number
///  @param phoneNumberId ID of phone to set favourite state 
///
///  @param updatePhoneNumberOptions  
///
///  @returns OAIPhoneNumberDto*
///
-(NSURLSessionTask*) updatePhoneNumberWithPhoneNumberId: (NSString*) phoneNumberId
    updatePhoneNumberOptions: (OAIUpdatePhoneNumberOptions*) updatePhoneNumberOptions
    completionHandler: (void (^)(OAIPhoneNumberDto* output, NSError* error)) handler {
    // verify the required parameter 'phoneNumberId' is set
    if (phoneNumberId == nil) {
        NSParameterAssert(phoneNumberId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"phoneNumberId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'updatePhoneNumberOptions' is set
    if (updatePhoneNumberOptions == nil) {
        NSParameterAssert(updatePhoneNumberOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"updatePhoneNumberOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/numbers/{phoneNumberId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (phoneNumberId != nil) {
        pathParams[@"phoneNumberId"] = phoneNumberId;
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
    bodyParam = updatePhoneNumberOptions;

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
                              responseType: @"OAIPhoneNumberDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhoneNumberDto*)data, error);
                                }
                            }];
}

///
/// Update phone pool
/// Update phone pool metadata such as name or description
///  @param poolId  
///
///  @param updatePhonePoolOptions  
///
///  @returns OAIPhonePoolDetailDto*
///
-(NSURLSessionTask*) updatePhonePoolWithPoolId: (NSString*) poolId
    updatePhonePoolOptions: (OAIUpdatePhonePoolOptions*) updatePhonePoolOptions
    completionHandler: (void (^)(OAIPhonePoolDetailDto* output, NSError* error)) handler {
    // verify the required parameter 'poolId' is set
    if (poolId == nil) {
        NSParameterAssert(poolId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"poolId"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'updatePhonePoolOptions' is set
    if (updatePhonePoolOptions == nil) {
        NSParameterAssert(updatePhonePoolOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"updatePhonePoolOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/pools/{poolId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (poolId != nil) {
        pathParams[@"poolId"] = poolId;
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
    bodyParam = updatePhonePoolOptions;

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
                              responseType: @"OAIPhonePoolDetailDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhonePoolDetailDto*)data, error);
                                }
                            }];
}

///
/// Verify validity of a phone number
/// Validate a phone number
///  @param validatePhoneNumberOptions  
///
///  @returns OAIPhoneNumberValidationDto*
///
-(NSURLSessionTask*) validatePhoneNumberWithValidatePhoneNumberOptions: (OAIValidatePhoneNumberOptions*) validatePhoneNumberOptions
    completionHandler: (void (^)(OAIPhoneNumberValidationDto* output, NSError* error)) handler {
    // verify the required parameter 'validatePhoneNumberOptions' is set
    if (validatePhoneNumberOptions == nil) {
        NSParameterAssert(validatePhoneNumberOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"validatePhoneNumberOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIPhoneControllerApiErrorDomain code:kOAIPhoneControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/validate"];

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
    bodyParam = validatePhoneNumberOptions;

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
                              responseType: @"OAIPhoneNumberValidationDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPhoneNumberValidationDto*)data, error);
                                }
                            }];
}



@end
