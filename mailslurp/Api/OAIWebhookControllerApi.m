#import "OAIWebhookControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAbstractWebhookPayload.h"
#import "OAICountDto.h"
#import "OAICreateWebhookOptions.h"
#import "OAIJSONSchemaDto.h"
#import "OAIPageWebhookProjection.h"
#import "OAIPageWebhookResult.h"
#import "OAIUnseenErrorCountDto.h"
#import "OAIVerifyWebhookSignatureOptions.h"
#import "OAIVerifyWebhookSignatureResults.h"
#import "OAIWebhookBouncePayload.h"
#import "OAIWebhookBounceRecipientPayload.h"
#import "OAIWebhookDeliveryStatusPayload.h"
#import "OAIWebhookDto.h"
#import "OAIWebhookEmailOpenedPayload.h"
#import "OAIWebhookEmailReadPayload.h"
#import "OAIWebhookHeaders.h"
#import "OAIWebhookNewAttachmentPayload.h"
#import "OAIWebhookNewContactPayload.h"
#import "OAIWebhookNewEmailPayload.h"
#import "OAIWebhookNewSmsPayload.h"
#import "OAIWebhookRedriveAllResult.h"
#import "OAIWebhookRedriveResult.h"
#import "OAIWebhookResultDto.h"
#import "OAIWebhookTestResult.h"


@interface OAIWebhookControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIWebhookControllerApi

NSString* kOAIWebhookControllerApiErrorDomain = @"OAIWebhookControllerApiErrorDomain";
NSInteger kOAIWebhookControllerApiMissingParamErrorCode = 234513;

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
/// Attach a WebHook URL to an inbox
/// Get notified of account level events such as bounce and bounce recipient.
///  @param createWebhookOptions  
///
///  @returns OAIWebhookDto*
///
-(NSURLSessionTask*) createAccountWebhookWithCreateWebhookOptions: (OAICreateWebhookOptions*) createWebhookOptions
    completionHandler: (void (^)(OAIWebhookDto* output, NSError* error)) handler {
    // verify the required parameter 'createWebhookOptions' is set
    if (createWebhookOptions == nil) {
        NSParameterAssert(createWebhookOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createWebhookOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks"];

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
    bodyParam = createWebhookOptions;

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
                              responseType: @"OAIWebhookDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWebhookDto*)data, error);
                                }
                            }];
}

///
/// Attach a WebHook URL to an inbox
/// Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.
///  @param inboxId  
///
///  @param createWebhookOptions  
///
///  @returns OAIWebhookDto*
///
-(NSURLSessionTask*) createWebhookWithInboxId: (NSString*) inboxId
    createWebhookOptions: (OAICreateWebhookOptions*) createWebhookOptions
    completionHandler: (void (^)(OAIWebhookDto* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'createWebhookOptions' is set
    if (createWebhookOptions == nil) {
        NSParameterAssert(createWebhookOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createWebhookOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}/webhooks"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        pathParams[@"inboxId"] = inboxId;
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
    bodyParam = createWebhookOptions;

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
                              responseType: @"OAIWebhookDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWebhookDto*)data, error);
                                }
                            }];
}

///
/// Attach a WebHook URL to a phone number
/// Get notified whenever a phone number receives an SMS via a WebHook URL.
///  @param phoneNumberId  
///
///  @param createWebhookOptions  
///
///  @returns OAIWebhookDto*
///
-(NSURLSessionTask*) createWebhookForPhoneNumberWithPhoneNumberId: (NSString*) phoneNumberId
    createWebhookOptions: (OAICreateWebhookOptions*) createWebhookOptions
    completionHandler: (void (^)(OAIWebhookDto* output, NSError* error)) handler {
    // verify the required parameter 'phoneNumberId' is set
    if (phoneNumberId == nil) {
        NSParameterAssert(phoneNumberId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"phoneNumberId"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'createWebhookOptions' is set
    if (createWebhookOptions == nil) {
        NSParameterAssert(createWebhookOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createWebhookOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/numbers/{phoneNumberId}/webhooks"];

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
    bodyParam = createWebhookOptions;

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
                              responseType: @"OAIWebhookDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWebhookDto*)data, error);
                                }
                            }];
}

///
/// Delete all webhooks
/// 
///  @param before before (optional)
///
///  @returns void
///
-(NSURLSessionTask*) deleteAllWebhooksWithBefore: (NSDate*) before
    completionHandler: (void (^)(NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (before != nil) {
        queryParams[@"before"] = before;
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
/// Delete and disable a Webhook for an Inbox
/// 
///  @param inboxId  
///
///  @param webhookId  
///
///  @returns void
///
-(NSURLSessionTask*) deleteWebhookWithInboxId: (NSString*) inboxId
    webhookId: (NSString*) webhookId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'webhookId' is set
    if (webhookId == nil) {
        NSParameterAssert(webhookId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"webhookId"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}/webhooks/{webhookId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        pathParams[@"inboxId"] = inboxId;
    }
    if (webhookId != nil) {
        pathParams[@"webhookId"] = webhookId;
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
/// Delete a webhook
/// 
///  @param webhookId  
///
///  @returns void
///
-(NSURLSessionTask*) deleteWebhookByIdWithWebhookId: (NSString*) webhookId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'webhookId' is set
    if (webhookId == nil) {
        NSParameterAssert(webhookId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"webhookId"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/{webhookId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (webhookId != nil) {
        pathParams[@"webhookId"] = webhookId;
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
/// List account webhooks Paginated
/// List account webhooks in paginated form. Allows for page index, page size, and sort direction.
///  @param page Optional page index in list pagination (optional, default to @0)
///
///  @param size Optional page size for paginated result list. (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"DESC")
///
///  @param eventType Optional event type (optional)
///
///  @param since Filter by created at after the given timestamp (optional)
///
///  @param before Filter by created at before the given timestamp (optional)
///
///  @returns OAIPageWebhookProjection*
///
-(NSURLSessionTask*) getAllAccountWebhooksWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    eventType: (NSString*) eventType
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageWebhookProjection* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/account/paginated"];

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
    if (eventType != nil) {
        queryParams[@"eventType"] = eventType;
    }
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
                              responseType: @"OAIPageWebhookProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageWebhookProjection*)data, error);
                                }
                            }];
}

///
/// Get results for all webhooks
/// 
///  @param page Optional page index in list pagination (optional, default to @0)
///
///  @param size Optional page size in list pagination (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @param searchFilter Optional search filter (optional)
///
///  @param since Filter by created at after the given timestamp (optional)
///
///  @param before Filter by created at before the given timestamp (optional)
///
///  @param unseenOnly Filter for unseen exceptions only (optional)
///
///  @param resultType Filter by result type (optional)
///
///  @param eventName Filter by event name (optional)
///
///  @param minStatusCode Minimum response status (optional)
///
///  @param maxStatusCode Maximum response status (optional)
///
///  @param inboxId Inbox ID (optional)
///
///  @param smsId Sms ID (optional)
///
///  @param attachmentId Attachment ID (optional)
///
///  @param emailId Email ID (optional)
///
///  @param phoneId Phone ID (optional)
///
///  @returns OAIPageWebhookResult*
///
-(NSURLSessionTask*) getAllWebhookResultsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    unseenOnly: (NSNumber*) unseenOnly
    resultType: (NSString*) resultType
    eventName: (NSString*) eventName
    minStatusCode: (NSNumber*) minStatusCode
    maxStatusCode: (NSNumber*) maxStatusCode
    inboxId: (NSString*) inboxId
    smsId: (NSString*) smsId
    attachmentId: (NSString*) attachmentId
    emailId: (NSString*) emailId
    phoneId: (NSString*) phoneId
    completionHandler: (void (^)(OAIPageWebhookResult* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/results"];

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
    if (searchFilter != nil) {
        queryParams[@"searchFilter"] = searchFilter;
    }
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    if (unseenOnly != nil) {
        queryParams[@"unseenOnly"] = [unseenOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (resultType != nil) {
        queryParams[@"resultType"] = resultType;
    }
    if (eventName != nil) {
        queryParams[@"eventName"] = eventName;
    }
    if (minStatusCode != nil) {
        queryParams[@"minStatusCode"] = minStatusCode;
    }
    if (maxStatusCode != nil) {
        queryParams[@"maxStatusCode"] = maxStatusCode;
    }
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
    }
    if (smsId != nil) {
        queryParams[@"smsId"] = smsId;
    }
    if (attachmentId != nil) {
        queryParams[@"attachmentId"] = attachmentId;
    }
    if (emailId != nil) {
        queryParams[@"emailId"] = emailId;
    }
    if (phoneId != nil) {
        queryParams[@"phoneId"] = phoneId;
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
                              responseType: @"OAIPageWebhookResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageWebhookResult*)data, error);
                                }
                            }];
}

///
/// List Webhooks Paginated
/// List webhooks in paginated form. Allows for page index, page size, and sort direction.
///  @param page Optional page index in list pagination (optional, default to @0)
///
///  @param size Optional page size for paginated result list. (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"DESC")
///
///  @param searchFilter Optional search filter (optional)
///
///  @param since Filter by created at after the given timestamp (optional)
///
///  @param inboxId Filter by inboxId (optional)
///
///  @param phoneId Filter by phoneId (optional)
///
///  @param before Filter by created at before the given timestamp (optional)
///
///  @returns OAIPageWebhookProjection*
///
-(NSURLSessionTask*) getAllWebhooksWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    inboxId: (NSString*) inboxId
    phoneId: (NSString*) phoneId
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageWebhookProjection* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/paginated"];

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
    if (searchFilter != nil) {
        queryParams[@"searchFilter"] = searchFilter;
    }
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
    }
    if (phoneId != nil) {
        queryParams[@"phoneId"] = phoneId;
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
                              responseType: @"OAIPageWebhookProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageWebhookProjection*)data, error);
                                }
                            }];
}

///
/// Get paginated webhooks for an Inbox
/// 
///  @param inboxId  
///
///  @param page Optional page index in list pagination (optional, default to @0)
///
///  @param size Optional page size in list pagination (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @param searchFilter Optional search filter (optional)
///
///  @param since Filter by created at after the given timestamp (optional)
///
///  @param before Filter by created at before the given timestamp (optional)
///
///  @returns OAIPageWebhookProjection*
///
-(NSURLSessionTask*) getInboxWebhooksPaginatedWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageWebhookProjection* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}/webhooks/paginated"];

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
    if (searchFilter != nil) {
        queryParams[@"searchFilter"] = searchFilter;
    }
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
                              responseType: @"OAIPageWebhookProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageWebhookProjection*)data, error);
                                }
                            }];
}

///
/// 
/// Get JSON Schema definition for webhook payload by event
///  @param event  
///
///  @returns OAIJSONSchemaDto*
///
-(NSURLSessionTask*) getJsonSchemaForWebhookEventWithEvent: (NSString*) event
    completionHandler: (void (^)(OAIJSONSchemaDto* output, NSError* error)) handler {
    // verify the required parameter 'event' is set
    if (event == nil) {
        NSParameterAssert(event);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"event"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/schema"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (event != nil) {
        queryParams[@"event"] = event;
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
                              responseType: @"OAIJSONSchemaDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIJSONSchemaDto*)data, error);
                                }
                            }];
}

///
/// 
/// Get JSON Schema definition for webhook payload
///  @param webhookId  
///
///  @returns OAIJSONSchemaDto*
///
-(NSURLSessionTask*) getJsonSchemaForWebhookPayloadWithWebhookId: (NSString*) webhookId
    completionHandler: (void (^)(OAIJSONSchemaDto* output, NSError* error)) handler {
    // verify the required parameter 'webhookId' is set
    if (webhookId == nil) {
        NSParameterAssert(webhookId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"webhookId"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/{webhookId}/schema"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (webhookId != nil) {
        pathParams[@"webhookId"] = webhookId;
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
                              responseType: @"OAIJSONSchemaDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIJSONSchemaDto*)data, error);
                                }
                            }];
}

///
/// Get paginated webhooks for a phone number
/// 
///  @param phoneId  
///
///  @param page Optional page index in list pagination (optional, default to @0)
///
///  @param size Optional page size in list pagination (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @param since Filter by created at after the given timestamp (optional)
///
///  @param before Filter by created at before the given timestamp (optional)
///
///  @returns OAIPageWebhookProjection*
///
-(NSURLSessionTask*) getPhoneNumberWebhooksPaginatedWithPhoneId: (NSString*) phoneId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageWebhookProjection* output, NSError* error)) handler {
    // verify the required parameter 'phoneId' is set
    if (phoneId == nil) {
        NSParameterAssert(phoneId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"phoneId"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/numbers/{phoneId}/webhooks/paginated"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (phoneId != nil) {
        pathParams[@"phoneId"] = phoneId;
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
                              responseType: @"OAIPageWebhookProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageWebhookProjection*)data, error);
                                }
                            }];
}

///
/// 
/// Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.
///  @param eventName  (optional)
///
///  @returns OAIAbstractWebhookPayload*
///
-(NSURLSessionTask*) getTestWebhookPayloadWithEventName: (NSString*) eventName
    completionHandler: (void (^)(OAIAbstractWebhookPayload* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/test"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (eventName != nil) {
        queryParams[@"eventName"] = eventName;
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
                              responseType: @"OAIAbstractWebhookPayload*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAbstractWebhookPayload*)data, error);
                                }
                            }];
}

///
/// 
/// Get webhook test payload for bounce
///  @returns OAIWebhookBouncePayload*
///
-(NSURLSessionTask*) getTestWebhookPayloadBounceWithCompletionHandler: 
    (void (^)(OAIWebhookBouncePayload* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/test/email-bounce-payload"];

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
                              responseType: @"OAIWebhookBouncePayload*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWebhookBouncePayload*)data, error);
                                }
                            }];
}

///
/// 
/// Get webhook test payload for bounce recipient
///  @returns OAIWebhookBounceRecipientPayload*
///
-(NSURLSessionTask*) getTestWebhookPayloadBounceRecipientWithCompletionHandler: 
    (void (^)(OAIWebhookBounceRecipientPayload* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/test/email-bounce-recipient-payload"];

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
                              responseType: @"OAIWebhookBounceRecipientPayload*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWebhookBounceRecipientPayload*)data, error);
                                }
                            }];
}

///
/// Get webhook test payload for delivery status event
/// 
///  @returns OAIWebhookDeliveryStatusPayload*
///
-(NSURLSessionTask*) getTestWebhookPayloadDeliveryStatusWithCompletionHandler: 
    (void (^)(OAIWebhookDeliveryStatusPayload* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/test/delivery-status-payload"];

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
                              responseType: @"OAIWebhookDeliveryStatusPayload*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWebhookDeliveryStatusPayload*)data, error);
                                }
                            }];
}

///
/// 
/// Get webhook test payload for email opened event
///  @returns OAIWebhookEmailOpenedPayload*
///
-(NSURLSessionTask*) getTestWebhookPayloadEmailOpenedWithCompletionHandler: 
    (void (^)(OAIWebhookEmailOpenedPayload* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/test/email-opened-payload"];

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
                              responseType: @"OAIWebhookEmailOpenedPayload*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWebhookEmailOpenedPayload*)data, error);
                                }
                            }];
}

///
/// 
/// Get webhook test payload for email opened event
///  @returns OAIWebhookEmailReadPayload*
///
-(NSURLSessionTask*) getTestWebhookPayloadEmailReadWithCompletionHandler: 
    (void (^)(OAIWebhookEmailReadPayload* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/test/email-read-payload"];

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
                              responseType: @"OAIWebhookEmailReadPayload*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWebhookEmailReadPayload*)data, error);
                                }
                            }];
}

///
/// 
/// Get example payload for webhook
///  @param webhookId  
///
///  @returns OAIAbstractWebhookPayload*
///
-(NSURLSessionTask*) getTestWebhookPayloadForWebhookWithWebhookId: (NSString*) webhookId
    completionHandler: (void (^)(OAIAbstractWebhookPayload* output, NSError* error)) handler {
    // verify the required parameter 'webhookId' is set
    if (webhookId == nil) {
        NSParameterAssert(webhookId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"webhookId"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/{webhookId}/example"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (webhookId != nil) {
        pathParams[@"webhookId"] = webhookId;
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
                              responseType: @"OAIAbstractWebhookPayload*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAbstractWebhookPayload*)data, error);
                                }
                            }];
}

///
/// Get webhook test payload for new attachment event
/// 
///  @returns OAIWebhookNewAttachmentPayload*
///
-(NSURLSessionTask*) getTestWebhookPayloadNewAttachmentWithCompletionHandler: 
    (void (^)(OAIWebhookNewAttachmentPayload* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/test/new-attachment-payload"];

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
                              responseType: @"OAIWebhookNewAttachmentPayload*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWebhookNewAttachmentPayload*)data, error);
                                }
                            }];
}

///
/// Get webhook test payload for new contact event
/// 
///  @returns OAIWebhookNewContactPayload*
///
-(NSURLSessionTask*) getTestWebhookPayloadNewContactWithCompletionHandler: 
    (void (^)(OAIWebhookNewContactPayload* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/test/new-contact-payload"];

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
                              responseType: @"OAIWebhookNewContactPayload*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWebhookNewContactPayload*)data, error);
                                }
                            }];
}

///
/// Get webhook test payload for new email event
/// 
///  @returns OAIWebhookNewEmailPayload*
///
-(NSURLSessionTask*) getTestWebhookPayloadNewEmailWithCompletionHandler: 
    (void (^)(OAIWebhookNewEmailPayload* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/test/new-email-payload"];

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
                              responseType: @"OAIWebhookNewEmailPayload*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWebhookNewEmailPayload*)data, error);
                                }
                            }];
}

///
/// Get webhook test payload for new sms event
/// 
///  @returns OAIWebhookNewSmsPayload*
///
-(NSURLSessionTask*) getTestWebhookPayloadNewSmsWithCompletionHandler: 
    (void (^)(OAIWebhookNewSmsPayload* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/test/new-sms-payload"];

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
                              responseType: @"OAIWebhookNewSmsPayload*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWebhookNewSmsPayload*)data, error);
                                }
                            }];
}

///
/// Get a webhook
/// 
///  @param webhookId  
///
///  @returns OAIWebhookDto*
///
-(NSURLSessionTask*) getWebhookWithWebhookId: (NSString*) webhookId
    completionHandler: (void (^)(OAIWebhookDto* output, NSError* error)) handler {
    // verify the required parameter 'webhookId' is set
    if (webhookId == nil) {
        NSParameterAssert(webhookId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"webhookId"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/{webhookId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (webhookId != nil) {
        pathParams[@"webhookId"] = webhookId;
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
                              responseType: @"OAIWebhookDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWebhookDto*)data, error);
                                }
                            }];
}

///
/// Get a webhook result for a webhook
/// 
///  @param webhookResultId Webhook Result ID 
///
///  @returns OAIWebhookResultDto*
///
-(NSURLSessionTask*) getWebhookResultWithWebhookResultId: (NSString*) webhookResultId
    completionHandler: (void (^)(OAIWebhookResultDto* output, NSError* error)) handler {
    // verify the required parameter 'webhookResultId' is set
    if (webhookResultId == nil) {
        NSParameterAssert(webhookResultId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"webhookResultId"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/results/{webhookResultId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (webhookResultId != nil) {
        pathParams[@"webhookResultId"] = webhookResultId;
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
                              responseType: @"OAIWebhookResultDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWebhookResultDto*)data, error);
                                }
                            }];
}

///
/// Get a webhook results for a webhook
/// 
///  @param webhookId ID of webhook to get results for 
///
///  @param page Optional page index in list pagination (optional, default to @0)
///
///  @param size Optional page size in list pagination (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @param searchFilter Optional search filter (optional)
///
///  @param since Filter by created at after the given timestamp (optional)
///
///  @param before Filter by created at before the given timestamp (optional)
///
///  @param unseenOnly Filter for unseen exceptions only (optional)
///
///  @param resultType Filter by result type (optional)
///
///  @param eventName Filter by event name (optional)
///
///  @param minStatusCode Minimum response status (optional)
///
///  @param maxStatusCode Maximum response status (optional)
///
///  @param inboxId Inbox ID (optional)
///
///  @param smsId Sms ID (optional)
///
///  @param attachmentId Attachment ID (optional)
///
///  @param emailId Email ID (optional)
///
///  @param phoneId Phone ID (optional)
///
///  @returns OAIPageWebhookResult*
///
-(NSURLSessionTask*) getWebhookResultsWithWebhookId: (NSString*) webhookId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    unseenOnly: (NSNumber*) unseenOnly
    resultType: (NSString*) resultType
    eventName: (NSString*) eventName
    minStatusCode: (NSNumber*) minStatusCode
    maxStatusCode: (NSNumber*) maxStatusCode
    inboxId: (NSString*) inboxId
    smsId: (NSString*) smsId
    attachmentId: (NSString*) attachmentId
    emailId: (NSString*) emailId
    phoneId: (NSString*) phoneId
    completionHandler: (void (^)(OAIPageWebhookResult* output, NSError* error)) handler {
    // verify the required parameter 'webhookId' is set
    if (webhookId == nil) {
        NSParameterAssert(webhookId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"webhookId"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/{webhookId}/results"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (webhookId != nil) {
        pathParams[@"webhookId"] = webhookId;
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
    if (searchFilter != nil) {
        queryParams[@"searchFilter"] = searchFilter;
    }
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    if (unseenOnly != nil) {
        queryParams[@"unseenOnly"] = [unseenOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (resultType != nil) {
        queryParams[@"resultType"] = resultType;
    }
    if (eventName != nil) {
        queryParams[@"eventName"] = eventName;
    }
    if (minStatusCode != nil) {
        queryParams[@"minStatusCode"] = minStatusCode;
    }
    if (maxStatusCode != nil) {
        queryParams[@"maxStatusCode"] = maxStatusCode;
    }
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
    }
    if (smsId != nil) {
        queryParams[@"smsId"] = smsId;
    }
    if (attachmentId != nil) {
        queryParams[@"attachmentId"] = attachmentId;
    }
    if (emailId != nil) {
        queryParams[@"emailId"] = emailId;
    }
    if (phoneId != nil) {
        queryParams[@"phoneId"] = phoneId;
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
                              responseType: @"OAIPageWebhookResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageWebhookResult*)data, error);
                                }
                            }];
}

///
/// Get a webhook results count for a webhook
/// 
///  @param webhookId ID of webhook to get results for 
///
///  @returns OAICountDto*
///
-(NSURLSessionTask*) getWebhookResultsCountWithWebhookId: (NSString*) webhookId
    completionHandler: (void (^)(OAICountDto* output, NSError* error)) handler {
    // verify the required parameter 'webhookId' is set
    if (webhookId == nil) {
        NSParameterAssert(webhookId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"webhookId"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/{webhookId}/results/count"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (webhookId != nil) {
        pathParams[@"webhookId"] = webhookId;
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
                              responseType: @"OAICountDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICountDto*)data, error);
                                }
                            }];
}

///
/// Get count of unseen webhook results with error status
/// 
///  @returns OAIUnseenErrorCountDto*
///
-(NSURLSessionTask*) getWebhookResultsUnseenErrorCountWithCompletionHandler: 
    (void (^)(OAIUnseenErrorCountDto* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/results/unseen-count"];

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
                              responseType: @"OAIUnseenErrorCountDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIUnseenErrorCountDto*)data, error);
                                }
                            }];
}

///
/// Get all webhooks for an Inbox
/// 
///  @param inboxId  
///
///  @returns NSArray<OAIWebhookDto>*
///
-(NSURLSessionTask*) getWebhooksWithInboxId: (NSString*) inboxId
    completionHandler: (void (^)(NSArray<OAIWebhookDto>* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/inboxes/{inboxId}/webhooks"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        pathParams[@"inboxId"] = inboxId;
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
                              responseType: @"NSArray<OAIWebhookDto>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIWebhookDto>*)data, error);
                                }
                            }];
}

///
/// Redrive all webhook results that have failed status
/// Allows you to resend webhook payloads for any recorded webhook result that failed to deliver the payload.
///  @returns OAIWebhookRedriveAllResult*
///
-(NSURLSessionTask*) redriveAllWebhookResultsWithCompletionHandler: 
    (void (^)(OAIWebhookRedriveAllResult* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/results/redrive"];

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
                              responseType: @"OAIWebhookRedriveAllResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWebhookRedriveAllResult*)data, error);
                                }
                            }];
}

///
/// Get a webhook result and try to resend the original webhook payload
/// Allows you to resend a webhook payload that was already sent. Webhooks that fail are retried automatically for 24 hours and then put in a dead letter queue. You can retry results manually using this method.
///  @param webhookResultId Webhook Result ID 
///
///  @returns OAIWebhookRedriveResult*
///
-(NSURLSessionTask*) redriveWebhookResultWithWebhookResultId: (NSString*) webhookResultId
    completionHandler: (void (^)(OAIWebhookRedriveResult* output, NSError* error)) handler {
    // verify the required parameter 'webhookResultId' is set
    if (webhookResultId == nil) {
        NSParameterAssert(webhookResultId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"webhookResultId"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/results/{webhookResultId}/redrive"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (webhookResultId != nil) {
        pathParams[@"webhookResultId"] = webhookResultId;
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
                              responseType: @"OAIWebhookRedriveResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWebhookRedriveResult*)data, error);
                                }
                            }];
}

///
/// Send webhook test data
/// 
///  @param webhookId  
///
///  @returns OAIWebhookTestResult*
///
-(NSURLSessionTask*) sendTestDataWithWebhookId: (NSString*) webhookId
    completionHandler: (void (^)(OAIWebhookTestResult* output, NSError* error)) handler {
    // verify the required parameter 'webhookId' is set
    if (webhookId == nil) {
        NSParameterAssert(webhookId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"webhookId"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/{webhookId}/test"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (webhookId != nil) {
        pathParams[@"webhookId"] = webhookId;
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
                              responseType: @"OAIWebhookTestResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWebhookTestResult*)data, error);
                                }
                            }];
}

///
/// Update a webhook request headers
/// 
///  @param webhookId  
///
///  @param webhookHeaders  
///
///  @returns OAIWebhookDto*
///
-(NSURLSessionTask*) updateWebhookHeadersWithWebhookId: (NSString*) webhookId
    webhookHeaders: (OAIWebhookHeaders*) webhookHeaders
    completionHandler: (void (^)(OAIWebhookDto* output, NSError* error)) handler {
    // verify the required parameter 'webhookId' is set
    if (webhookId == nil) {
        NSParameterAssert(webhookId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"webhookId"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'webhookHeaders' is set
    if (webhookHeaders == nil) {
        NSParameterAssert(webhookHeaders);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"webhookHeaders"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/{webhookId}/headers"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (webhookId != nil) {
        pathParams[@"webhookId"] = webhookId;
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
    bodyParam = webhookHeaders;

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
                              responseType: @"OAIWebhookDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWebhookDto*)data, error);
                                }
                            }];
}

///
/// Verify a webhook payload signature
/// Verify a webhook payload using the messageId and signature. This allows you to be sure that MailSlurp sent the payload and not another server.
///  @param verifyWebhookSignatureOptions  
///
///  @returns OAIVerifyWebhookSignatureResults*
///
-(NSURLSessionTask*) verifyWebhookSignatureWithVerifyWebhookSignatureOptions: (OAIVerifyWebhookSignatureOptions*) verifyWebhookSignatureOptions
    completionHandler: (void (^)(OAIVerifyWebhookSignatureResults* output, NSError* error)) handler {
    // verify the required parameter 'verifyWebhookSignatureOptions' is set
    if (verifyWebhookSignatureOptions == nil) {
        NSParameterAssert(verifyWebhookSignatureOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"verifyWebhookSignatureOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/verify"];

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
    bodyParam = verifyWebhookSignatureOptions;

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
                              responseType: @"OAIVerifyWebhookSignatureResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIVerifyWebhookSignatureResults*)data, error);
                                }
                            }];
}

///
/// Wait for webhook results for a webhook
/// 
///  @param webhookId ID of webhook to get results for 
///
///  @param expectedCount Expected result count 
///
///  @param timeout Max time to wait in milliseconds 
///
///  @returns NSArray<OAIWebhookResultDto>*
///
-(NSURLSessionTask*) waitForWebhookResultsWithWebhookId: (NSString*) webhookId
    expectedCount: (NSNumber*) expectedCount
    timeout: (NSNumber*) timeout
    completionHandler: (void (^)(NSArray<OAIWebhookResultDto>* output, NSError* error)) handler {
    // verify the required parameter 'webhookId' is set
    if (webhookId == nil) {
        NSParameterAssert(webhookId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"webhookId"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'expectedCount' is set
    if (expectedCount == nil) {
        NSParameterAssert(expectedCount);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"expectedCount"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'timeout' is set
    if (timeout == nil) {
        NSParameterAssert(timeout);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"timeout"] };
            NSError* error = [NSError errorWithDomain:kOAIWebhookControllerApiErrorDomain code:kOAIWebhookControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/webhooks/{webhookId}/wait"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (webhookId != nil) {
        pathParams[@"webhookId"] = webhookId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (expectedCount != nil) {
        queryParams[@"expectedCount"] = expectedCount;
    }
    if (timeout != nil) {
        queryParams[@"timeout"] = timeout;
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
                              responseType: @"NSArray<OAIWebhookResultDto>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIWebhookResultDto>*)data, error);
                                }
                            }];
}



@end
