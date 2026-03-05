#import "OAIApiAuditLogControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAuditLogEventDto.h"
#import "OAIAuditLogPageDto.h"
#import "OAIAuditLogSearchOptions.h"


@interface OAIApiAuditLogControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIApiAuditLogControllerApi

NSString* kOAIApiAuditLogControllerApiErrorDomain = @"OAIApiAuditLogControllerApiErrorDomain";
NSInteger kOAIApiAuditLogControllerApiMissingParamErrorCode = 234513;

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
/// 
/// 
///  @param eventId  
///
///  @param since  (optional)
///
///  @param before  (optional)
///
///  @returns OAIAuditLogEventDto*
///
-(NSURLSessionTask*) getAuditLogByEventIdWithEventId: (NSString*) eventId
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIAuditLogEventDto* output, NSError* error)) handler {
    // verify the required parameter 'eventId' is set
    if (eventId == nil) {
        NSParameterAssert(eventId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"eventId"] };
            NSError* error = [NSError errorWithDomain:kOAIApiAuditLogControllerApiErrorDomain code:kOAIApiAuditLogControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/audit-logs/{eventId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (eventId != nil) {
        pathParams[@"eventId"] = eventId;
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
                              responseType: @"OAIAuditLogEventDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAuditLogEventDto*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param since  (optional)
///
///  @param before  (optional)
///
///  @param action  (optional)
///
///  @param userId  (optional)
///
///  @param actorUserId  (optional)
///
///  @param targetUserId  (optional)
///
///  @param resourceType  (optional)
///
///  @param resourceId  (optional)
///
///  @param outcome  (optional)
///
///  @param requestId  (optional)
///
///  @param ipAddress  (optional)
///
///  @param pageSize  (optional)
///
///  @param cursor  (optional)
///
///  @returns OAIAuditLogPageDto*
///
-(NSURLSessionTask*) getAuditLogsWithSince: (NSDate*) since
    before: (NSDate*) before
    action: (NSString*) action
    userId: (NSString*) userId
    actorUserId: (NSString*) actorUserId
    targetUserId: (NSString*) targetUserId
    resourceType: (NSString*) resourceType
    resourceId: (NSString*) resourceId
    outcome: (NSString*) outcome
    requestId: (NSString*) requestId
    ipAddress: (NSString*) ipAddress
    pageSize: (NSNumber*) pageSize
    cursor: (NSString*) cursor
    completionHandler: (void (^)(OAIAuditLogPageDto* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/audit-logs"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    if (action != nil) {
        queryParams[@"action"] = action;
    }
    if (userId != nil) {
        queryParams[@"userId"] = userId;
    }
    if (actorUserId != nil) {
        queryParams[@"actorUserId"] = actorUserId;
    }
    if (targetUserId != nil) {
        queryParams[@"targetUserId"] = targetUserId;
    }
    if (resourceType != nil) {
        queryParams[@"resourceType"] = resourceType;
    }
    if (resourceId != nil) {
        queryParams[@"resourceId"] = resourceId;
    }
    if (outcome != nil) {
        queryParams[@"outcome"] = outcome;
    }
    if (requestId != nil) {
        queryParams[@"requestId"] = requestId;
    }
    if (ipAddress != nil) {
        queryParams[@"ipAddress"] = ipAddress;
    }
    if (pageSize != nil) {
        queryParams[@"pageSize"] = pageSize;
    }
    if (cursor != nil) {
        queryParams[@"cursor"] = cursor;
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
                              responseType: @"OAIAuditLogPageDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAuditLogPageDto*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param auditLogSearchOptions  
///
///  @returns OAIAuditLogPageDto*
///
-(NSURLSessionTask*) searchAuditLogsWithAuditLogSearchOptions: (OAIAuditLogSearchOptions*) auditLogSearchOptions
    completionHandler: (void (^)(OAIAuditLogPageDto* output, NSError* error)) handler {
    // verify the required parameter 'auditLogSearchOptions' is set
    if (auditLogSearchOptions == nil) {
        NSParameterAssert(auditLogSearchOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"auditLogSearchOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIApiAuditLogControllerApiErrorDomain code:kOAIApiAuditLogControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/audit-logs/search"];

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
    bodyParam = auditLogSearchOptions;

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
                              responseType: @"OAIAuditLogPageDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAuditLogPageDto*)data, error);
                                }
                            }];
}



@end
