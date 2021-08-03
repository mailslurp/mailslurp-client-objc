#import "OAISentEmailsControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIPageSentEmailProjection.h"
#import "OAIPageTrackingPixelProjection.h"
#import "OAISentEmailDto.h"


@interface OAISentEmailsControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAISentEmailsControllerApi

NSString* kOAISentEmailsControllerApiErrorDomain = @"OAISentEmailsControllerApiErrorDomain";
NSInteger kOAISentEmailsControllerApiMissingParamErrorCode = 234513;

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
/// Get all sent email tracking pixels in paginated form
/// 
///  @param page Optional page index in sent email tracking pixel list pagination (optional, default to @0)
///
///  @param searchFilter Optional search filter (optional)
///
///  @param size Optional page size in sent email tracking pixel list pagination (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @returns OAIPageTrackingPixelProjection*
///
-(NSURLSessionTask*) getAllSentTrackingPixelsWithPage: (NSNumber*) page
    searchFilter: (NSString*) searchFilter
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIPageTrackingPixelProjection* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/sent/tracking-pixels"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (searchFilter != nil) {
        queryParams[@"searchFilter"] = searchFilter;
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
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                              responseType: @"OAIPageTrackingPixelProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageTrackingPixelProjection*)data, error);
                                }
                            }];
}

///
/// Get sent email receipt
/// 
///  @param _id id 
///
///  @returns OAISentEmailDto*
///
-(NSURLSessionTask*) getSentEmailWithId: (NSString*) _id
    completionHandler: (void (^)(OAISentEmailDto* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAISentEmailsControllerApiErrorDomain code:kOAISentEmailsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/sent/{id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                              responseType: @"OAISentEmailDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISentEmailDto*)data, error);
                                }
                            }];
}

///
/// Get sent email HTML content
/// 
///  @param _id id 
///
///  @returns NSString*
///
-(NSURLSessionTask*) getSentEmailHTMLContentWithId: (NSString*) _id
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAISentEmailsControllerApiErrorDomain code:kOAISentEmailsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/sent/{id}/html"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
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
/// Get all tracking pixels for a sent email in paginated form
/// 
///  @param _id id 
///
///  @param page Optional page index in sent email tracking pixel list pagination (optional, default to @0)
///
///  @param searchFilter Optional search filter (optional)
///
///  @param size Optional page size in sent email tracking pixel list pagination (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @returns OAIPageTrackingPixelProjection*
///
-(NSURLSessionTask*) getSentEmailTrackingPixelsWithId: (NSString*) _id
    page: (NSNumber*) page
    searchFilter: (NSString*) searchFilter
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIPageTrackingPixelProjection* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAISentEmailsControllerApiErrorDomain code:kOAISentEmailsControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/sent/{id}/tracking-pixels"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (searchFilter != nil) {
        queryParams[@"searchFilter"] = searchFilter;
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
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                              responseType: @"OAIPageTrackingPixelProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageTrackingPixelProjection*)data, error);
                                }
                            }];
}

///
/// Get all sent emails in paginated form
/// 
///  @param inboxId Optional inboxId to filter sender of sent emails by (optional)
///
///  @param page Optional page index in inbox sent email list pagination (optional, default to @0)
///
///  @param searchFilter Optional search filter (optional)
///
///  @param size Optional page size in inbox sent email list pagination (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @returns OAIPageSentEmailProjection*
///
-(NSURLSessionTask*) getSentEmailsWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    searchFilter: (NSString*) searchFilter
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIPageSentEmailProjection* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/sent"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (searchFilter != nil) {
        queryParams[@"searchFilter"] = searchFilter;
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
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                              responseType: @"OAIPageSentEmailProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageSentEmailProjection*)data, error);
                                }
                            }];
}

///
/// Get all sent organization emails in paginated form
/// 
///  @param inboxId Optional inboxId to filter sender of sent emails by (optional)
///
///  @param page Optional page index in sent email list pagination (optional, default to @0)
///
///  @param searchFilter Optional search filter (optional)
///
///  @param size Optional page size in sent email list pagination (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @returns OAIPageSentEmailProjection*
///
-(NSURLSessionTask*) getSentOrganizationEmailsWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    searchFilter: (NSString*) searchFilter
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIPageSentEmailProjection* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/sent/organization"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (searchFilter != nil) {
        queryParams[@"searchFilter"] = searchFilter;
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
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                              responseType: @"OAIPageSentEmailProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageSentEmailProjection*)data, error);
                                }
                            }];
}



@end
