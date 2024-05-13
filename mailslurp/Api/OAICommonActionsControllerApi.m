#import "OAICommonActionsControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIInboxDto.h"
#import "OAISimpleSendEmailOptions.h"


@interface OAICommonActionsControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAICommonActionsControllerApi

NSString* kOAICommonActionsControllerApiErrorDomain = @"OAICommonActionsControllerApiErrorDomain";
NSInteger kOAICommonActionsControllerApiMissingParamErrorCode = 234513;

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
/// Create new random inbox
/// Returns an Inbox with an `id` and an `emailAddress`
///  @param allowTeamAccess  (optional)
///
///  @param useDomainPool  (optional)
///
///  @param expiresAt  (optional)
///
///  @param expiresIn  (optional)
///
///  @param emailAddress  (optional)
///
///  @param inboxType  (optional)
///
///  @param _description  (optional)
///
///  @param name  (optional)
///
///  @param tags  (optional)
///
///  @param favourite  (optional)
///
///  @param virtualInbox  (optional)
///
///  @param useShortAddress  (optional)
///
///  @param domainName  (optional)
///
///  @param domainId  (optional)
///
///  @param prefix  (optional)
///
///  @returns OAIInboxDto*
///
-(NSURLSessionTask*) createNewEmailAddressWithAllowTeamAccess: (NSNumber*) allowTeamAccess
    useDomainPool: (NSNumber*) useDomainPool
    expiresAt: (NSDate*) expiresAt
    expiresIn: (NSNumber*) expiresIn
    emailAddress: (NSString*) emailAddress
    inboxType: (NSString*) inboxType
    _description: (NSString*) _description
    name: (NSString*) name
    tags: (NSArray<NSString*>*) tags
    favourite: (NSNumber*) favourite
    virtualInbox: (NSNumber*) virtualInbox
    useShortAddress: (NSNumber*) useShortAddress
    domainName: (NSString*) domainName
    domainId: (NSString*) domainId
    prefix: (NSString*) prefix
    completionHandler: (void (^)(OAIInboxDto* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/newEmailAddress"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (allowTeamAccess != nil) {
        queryParams[@"allowTeamAccess"] = [allowTeamAccess isEqual:@(YES)] ? @"true" : @"false";
    }
    if (useDomainPool != nil) {
        queryParams[@"useDomainPool"] = [useDomainPool isEqual:@(YES)] ? @"true" : @"false";
    }
    if (expiresAt != nil) {
        queryParams[@"expiresAt"] = expiresAt;
    }
    if (expiresIn != nil) {
        queryParams[@"expiresIn"] = expiresIn;
    }
    if (emailAddress != nil) {
        queryParams[@"emailAddress"] = emailAddress;
    }
    if (inboxType != nil) {
        queryParams[@"inboxType"] = inboxType;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (tags != nil) {
        queryParams[@"tags"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: tags format: @"multi"];
    }
    if (favourite != nil) {
        queryParams[@"favourite"] = [favourite isEqual:@(YES)] ? @"true" : @"false";
    }
    if (virtualInbox != nil) {
        queryParams[@"virtualInbox"] = [virtualInbox isEqual:@(YES)] ? @"true" : @"false";
    }
    if (useShortAddress != nil) {
        queryParams[@"useShortAddress"] = [useShortAddress isEqual:@(YES)] ? @"true" : @"false";
    }
    if (domainName != nil) {
        queryParams[@"domainName"] = domainName;
    }
    if (domainId != nil) {
        queryParams[@"domainId"] = domainId;
    }
    if (prefix != nil) {
        queryParams[@"prefix"] = prefix;
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
                              responseType: @"OAIInboxDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInboxDto*)data, error);
                                }
                            }];
}

///
/// Create new random inbox
/// Returns an Inbox with an `id` and an `emailAddress`
///  @param allowTeamAccess  (optional)
///
///  @param useDomainPool  (optional)
///
///  @param expiresAt  (optional)
///
///  @param expiresIn  (optional)
///
///  @param emailAddress  (optional)
///
///  @param inboxType  (optional)
///
///  @param _description  (optional)
///
///  @param name  (optional)
///
///  @param tags  (optional)
///
///  @param favourite  (optional)
///
///  @param virtualInbox  (optional)
///
///  @param useShortAddress  (optional)
///
///  @param domainName  (optional)
///
///  @param domainId  (optional)
///
///  @param prefix  (optional)
///
///  @returns OAIInboxDto*
///
-(NSURLSessionTask*) createRandomInboxWithAllowTeamAccess: (NSNumber*) allowTeamAccess
    useDomainPool: (NSNumber*) useDomainPool
    expiresAt: (NSDate*) expiresAt
    expiresIn: (NSNumber*) expiresIn
    emailAddress: (NSString*) emailAddress
    inboxType: (NSString*) inboxType
    _description: (NSString*) _description
    name: (NSString*) name
    tags: (NSArray<NSString*>*) tags
    favourite: (NSNumber*) favourite
    virtualInbox: (NSNumber*) virtualInbox
    useShortAddress: (NSNumber*) useShortAddress
    domainName: (NSString*) domainName
    domainId: (NSString*) domainId
    prefix: (NSString*) prefix
    completionHandler: (void (^)(OAIInboxDto* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/createInbox"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (allowTeamAccess != nil) {
        queryParams[@"allowTeamAccess"] = [allowTeamAccess isEqual:@(YES)] ? @"true" : @"false";
    }
    if (useDomainPool != nil) {
        queryParams[@"useDomainPool"] = [useDomainPool isEqual:@(YES)] ? @"true" : @"false";
    }
    if (expiresAt != nil) {
        queryParams[@"expiresAt"] = expiresAt;
    }
    if (expiresIn != nil) {
        queryParams[@"expiresIn"] = expiresIn;
    }
    if (emailAddress != nil) {
        queryParams[@"emailAddress"] = emailAddress;
    }
    if (inboxType != nil) {
        queryParams[@"inboxType"] = inboxType;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (tags != nil) {
        queryParams[@"tags"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: tags format: @"multi"];
    }
    if (favourite != nil) {
        queryParams[@"favourite"] = [favourite isEqual:@(YES)] ? @"true" : @"false";
    }
    if (virtualInbox != nil) {
        queryParams[@"virtualInbox"] = [virtualInbox isEqual:@(YES)] ? @"true" : @"false";
    }
    if (useShortAddress != nil) {
        queryParams[@"useShortAddress"] = [useShortAddress isEqual:@(YES)] ? @"true" : @"false";
    }
    if (domainName != nil) {
        queryParams[@"domainName"] = domainName;
    }
    if (domainId != nil) {
        queryParams[@"domainId"] = domainId;
    }
    if (prefix != nil) {
        queryParams[@"prefix"] = prefix;
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
                              responseType: @"OAIInboxDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInboxDto*)data, error);
                                }
                            }];
}

///
/// Delete inbox email address by inbox id
/// Deletes inbox email address
///  @param inboxId  
///
///  @returns void
///
-(NSURLSessionTask*) deleteEmailAddressWithInboxId: (NSString*) inboxId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAICommonActionsControllerApiErrorDomain code:kOAICommonActionsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/deleteEmailAddress"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
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
/// Delete all emails in an inbox
/// Deletes all emails
///  @param inboxId  
///
///  @returns void
///
-(NSURLSessionTask*) emptyInboxWithInboxId: (NSString*) inboxId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAICommonActionsControllerApiErrorDomain code:kOAICommonActionsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emptyInbox"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
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
/// Send an email using query parameters
/// If no senderId or inboxId provided a random email address will be used to send from. Ensure your parameters are URL encoded.
///  @param to Email address to send to 
///
///  @param senderId ID of inbox to send from. If null an inbox will be created for sending (optional)
///
///  @param body Body of the email message. Supports HTML (optional)
///
///  @param subject Subject line of the email (optional)
///
///  @returns void
///
-(NSURLSessionTask*) sendEmailQueryWithTo: (NSString*) to
    senderId: (NSString*) senderId
    body: (NSString*) body
    subject: (NSString*) subject
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'to' is set
    if (to == nil) {
        NSParameterAssert(to);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"to"] };
            NSError* error = [NSError errorWithDomain:kOAICommonActionsControllerApiErrorDomain code:kOAICommonActionsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/sendEmailQuery"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (senderId != nil) {
        queryParams[@"senderId"] = senderId;
    }
    if (to != nil) {
        queryParams[@"to"] = to;
    }
    if (body != nil) {
        queryParams[@"body"] = body;
    }
    if (subject != nil) {
        queryParams[@"subject"] = subject;
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
/// Send an email
/// If no senderId or inboxId provided a random email address will be used to send from.
///  @param simpleSendEmailOptions  
///
///  @returns void
///
-(NSURLSessionTask*) sendEmailSimpleWithSimpleSendEmailOptions: (OAISimpleSendEmailOptions*) simpleSendEmailOptions
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'simpleSendEmailOptions' is set
    if (simpleSendEmailOptions == nil) {
        NSParameterAssert(simpleSendEmailOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"simpleSendEmailOptions"] };
            NSError* error = [NSError errorWithDomain:kOAICommonActionsControllerApiErrorDomain code:kOAICommonActionsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/sendEmail"];

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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = simpleSendEmailOptions;

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



@end
