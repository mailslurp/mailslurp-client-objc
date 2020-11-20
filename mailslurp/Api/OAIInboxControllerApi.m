#import "OAIInboxControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIEmailPreview.h"
#import "OAIInbox.h"
#import "OAIPageEmailPreview.h"
#import "OAIPageInboxProjection.h"
#import "OAIPageSentEmailProjection.h"
#import "OAISendEmailOptions.h"
#import "OAISetInboxFavouritedOptions.h"
#import "OAIUpdateInboxOptions.h"


@interface OAIInboxControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIInboxControllerApi

NSString* kOAIInboxControllerApiErrorDomain = @"OAIInboxControllerApiErrorDomain";
NSInteger kOAIInboxControllerApiMissingParamErrorCode = 234513;

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
/// Create an Inbox (email address)
/// Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 
///  @param _description Optional description for an inbox. (optional)
///
///  @param emailAddress Optional email address including domain you wish inbox to use (eg: test123@mydomain.com). Only supports domains that you have registered and verified with MailSlurp using dashboard or `createDomain` method. (optional)
///
///  @param expiresAt Optional expires at timestamp. If your plan supports this feature you can specify when an inbox should expire. If left empty inbox will exist permanently or expire when your plan dictates (optional)
///
///  @param favourite Is inbox favourited. (optional)
///
///  @param name Optional name for an inbox. (optional)
///
///  @param tags Optional tags for an inbox. Can be used for searching and filtering inboxes. (optional)
///
///  @returns OAIInbox*
///
-(NSURLSessionTask*) createInboxWithDescription: (NSString*) _description
    emailAddress: (NSString*) emailAddress
    expiresAt: (NSDate*) expiresAt
    favourite: (NSNumber*) favourite
    name: (NSString*) name
    tags: (NSArray<NSString*>*) tags
    completionHandler: (void (^)(OAIInbox* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (emailAddress != nil) {
        queryParams[@"emailAddress"] = emailAddress;
    }
    if (expiresAt != nil) {
        queryParams[@"expiresAt"] = expiresAt;
    }
    if (favourite != nil) {
        queryParams[@"favourite"] = [favourite isEqual:@(YES)] ? @"true" : @"false";
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (tags != nil) {
        queryParams[@"tags"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: tags format: @"multi"];
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
                              responseType: @"OAIInbox*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInbox*)data, error);
                                }
                            }];
}

///
/// Delete all inboxes
/// Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.
///  @returns void
///
-(NSURLSessionTask*) deleteAllInboxesWithCompletionHandler: 
    (void (^)(NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes"];

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
/// Delete inbox
/// Permanently delete an inbox and associated email address aswell as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.
///  @param inboxId inboxId 
///
///  @returns void
///
-(NSURLSessionTask*) deleteInboxWithInboxId: (NSString*) inboxId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        pathParams[@"inboxId"] = inboxId;
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
/// List Inboxes Paginated
/// List inboxes in paginated form. Allows for page index, page size, and sort direction. Can also filter by favourited or email address like pattern.
///  @param favourite Optionally filter results for favourites only (optional, default to @(NO))
///
///  @param page Optional page index in inbox list pagination (optional, default to @0)
///
///  @param search Optionally filter by search words partial matching ID, tags, name, and email address (optional)
///
///  @param size Optional page size in inbox list pagination (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @param tag Optionally filter by tags (optional)
///
///  @returns OAIPageInboxProjection*
///
-(NSURLSessionTask*) getAllInboxesWithFavourite: (NSNumber*) favourite
    page: (NSNumber*) page
    search: (NSString*) search
    size: (NSNumber*) size
    sort: (NSString*) sort
    tag: (NSString*) tag
    completionHandler: (void (^)(OAIPageInboxProjection* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/paginated"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (favourite != nil) {
        queryParams[@"favourite"] = [favourite isEqual:@(YES)] ? @"true" : @"false";
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (search != nil) {
        queryParams[@"search"] = search;
    }
    if (size != nil) {
        queryParams[@"size"] = size;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (tag != nil) {
        queryParams[@"tag"] = tag;
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
                              responseType: @"OAIPageInboxProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageInboxProjection*)data, error);
                                }
                            }];
}

///
/// Get emails in an Inbox
/// List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached
///  @param inboxId Id of inbox that emails belongs to 
///
///  @param limit Limit the result set, ordered by received date time sort direction (optional)
///
///  @param minCount Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. (optional)
///
///  @param retryTimeout Maximum milliseconds to spend retrying inbox database until minCount emails are returned (optional)
///
///  @param since Exclude emails received before this ISO 8601 date time (optional)
///
///  @param sort Sort the results by received date and direction ASC or DESC (optional)
///
///  @returns NSArray<OAIEmailPreview>*
///
-(NSURLSessionTask*) getEmailsWithInboxId: (NSString*) inboxId
    limit: (NSNumber*) limit
    minCount: (NSNumber*) minCount
    retryTimeout: (NSNumber*) retryTimeout
    since: (NSDate*) since
    sort: (NSString*) sort
    completionHandler: (void (^)(NSArray<OAIEmailPreview>* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}/emails"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        pathParams[@"inboxId"] = inboxId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (minCount != nil) {
        queryParams[@"minCount"] = minCount;
    }
    if (retryTimeout != nil) {
        queryParams[@"retryTimeout"] = retryTimeout;
    }
    if (since != nil) {
        queryParams[@"since"] = since;
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
                              responseType: @"NSArray<OAIEmailPreview>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIEmailPreview>*)data, error);
                                }
                            }];
}

///
/// Get Inbox
/// Returns an inbox's properties, including its email address and ID.
///  @param inboxId inboxId 
///
///  @returns OAIInbox*
///
-(NSURLSessionTask*) getInboxWithInboxId: (NSString*) inboxId
    completionHandler: (void (^)(OAIInbox* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        pathParams[@"inboxId"] = inboxId;
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
                              responseType: @"OAIInbox*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInbox*)data, error);
                                }
                            }];
}

///
/// Get inbox emails paginated
/// Get a paginated list of emails in an inbox. Does not hold connections open.
///  @param inboxId Id of inbox that emails belongs to 
///
///  @param page Optional page index in inbox emails list pagination (optional, default to @0)
///
///  @param size Optional page size in inbox emails list pagination (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @returns OAIPageEmailPreview*
///
-(NSURLSessionTask*) getInboxEmailsPaginatedWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIPageEmailPreview* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}/emails/paginated"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        pathParams[@"inboxId"] = inboxId;
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
                              responseType: @"OAIPageEmailPreview*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageEmailPreview*)data, error);
                                }
                            }];
}

///
/// Get Inbox Sent Emails
/// Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.
///  @param inboxId inboxId 
///
///  @param page Optional page index in inbox sent email list pagination (optional, default to @0)
///
///  @param size Optional page size in inbox sent email list pagination (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @returns OAIPageSentEmailProjection*
///
-(NSURLSessionTask*) getInboxSentEmailsWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIPageSentEmailProjection* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}/sent"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        pathParams[@"inboxId"] = inboxId;
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
/// Get inbox tags
/// Get all inbox tags
///  @returns NSArray<NSString*>*
///
-(NSURLSessionTask*) getInboxTagsWithCompletionHandler: 
    (void (^)(NSArray<NSString*>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/tags"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

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
                              responseType: @"NSArray<NSString*>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<NSString*>*)data, error);
                                }
                            }];
}

///
/// List Inboxes / Email Addresses
/// List the inboxes you have created
///  @returns NSArray<OAIInbox>*
///
-(NSURLSessionTask*) getInboxesWithCompletionHandler: 
    (void (^)(NSArray<OAIInbox>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

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
                              responseType: @"NSArray<OAIInbox>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIInbox>*)data, error);
                                }
                            }];
}

///
/// Send Email
/// Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails.
///  @param inboxId ID of the inbox you want to send the email from 
///
///  @param sendEmailOptions Options for the email (optional)
///
///  @returns void
///
-(NSURLSessionTask*) sendEmailWithInboxId: (NSString*) inboxId
    sendEmailOptions: (OAISendEmailOptions*) sendEmailOptions
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        pathParams[@"inboxId"] = inboxId;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = sendEmailOptions;

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
/// Set inbox favourited state
/// Set and return new favourite state for an inbox
///  @param inboxId inboxId 
///
///  @param setInboxFavouritedOptions setInboxFavouritedOptions 
///
///  @returns OAIInbox*
///
-(NSURLSessionTask*) setInboxFavouritedWithInboxId: (NSString*) inboxId
    setInboxFavouritedOptions: (OAISetInboxFavouritedOptions*) setInboxFavouritedOptions
    completionHandler: (void (^)(OAIInbox* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'setInboxFavouritedOptions' is set
    if (setInboxFavouritedOptions == nil) {
        NSParameterAssert(setInboxFavouritedOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"setInboxFavouritedOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}/favourite"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        pathParams[@"inboxId"] = inboxId;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = setInboxFavouritedOptions;

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
                              responseType: @"OAIInbox*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInbox*)data, error);
                                }
                            }];
}

///
/// Update Inbox
/// Update editable fields on an inbox
///  @param inboxId inboxId 
///
///  @param updateInboxOptions updateInboxOptions 
///
///  @returns OAIInbox*
///
-(NSURLSessionTask*) updateInboxWithInboxId: (NSString*) inboxId
    updateInboxOptions: (OAIUpdateInboxOptions*) updateInboxOptions
    completionHandler: (void (^)(OAIInbox* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'updateInboxOptions' is set
    if (updateInboxOptions == nil) {
        NSParameterAssert(updateInboxOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"updateInboxOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIInboxControllerApiErrorDomain code:kOAIInboxControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        pathParams[@"inboxId"] = inboxId;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = updateInboxOptions;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PATCH"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInbox*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInbox*)data, error);
                                }
                            }];
}



@end
