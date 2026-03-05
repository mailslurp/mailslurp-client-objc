#import "OAIEmailControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAttachmentMetaData.h"
#import "OAICanSendEmailResults.h"
#import "OAICheckEmailBodyFeatureSupportResults.h"
#import "OAICheckEmailBodyResults.h"
#import "OAICheckEmailClientSupportOptions.h"
#import "OAICheckEmailClientSupportResults.h"
#import "OAIContentMatchOptions.h"
#import "OAICountDto.h"
#import "OAIDownloadAttachmentDto.h"
#import "OAIEmail.h"
#import "OAIEmailContentMatchResult.h"
#import "OAIEmailContentPartResult.h"
#import "OAIEmailHtmlDto.h"
#import "OAIEmailLinksResult.h"
#import "OAIEmailPreview.h"
#import "OAIEmailPreviewUrls.h"
#import "OAIEmailScreenshotResult.h"
#import "OAIEmailSignatureParseResult.h"
#import "OAIEmailTextLinesResult.h"
#import "OAIEmailThreadDto.h"
#import "OAIEmailThreadItemsDto.h"
#import "OAIExtractCodesOptions.h"
#import "OAIExtractCodesResult.h"
#import "OAIForwardEmailOptions.h"
#import "OAIGetEmailScreenshotOptions.h"
#import "OAIGravatarUrl.h"
#import "OAIImapFlagOperationOptions.h"
#import "OAIPageEmailProjection.h"
#import "OAIPageEmailThreadProjection.h"
#import "OAIRawEmailJson.h"
#import "OAIReplyToEmailOptions.h"
#import "OAISearchEmailsOptions.h"
#import "OAISendEmailOptions.h"
#import "OAISentEmailDto.h"
#import "OAIUnreadCount.h"
#import "OAIValidationDto.h"


@interface OAIEmailControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIEmailControllerApi

NSString* kOAIEmailControllerApiErrorDomain = @"OAIEmailControllerApiErrorDomain";
NSInteger kOAIEmailControllerApiMissingParamErrorCode = 234513;

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
/// Set IMAP flags associated with a message. Only supports '\\Seen' flag.
/// Applies RFC3501 IMAP flag operations on a message. Current implementation supports read/unread semantics via the `\\\\Seen` flag only.
///  @param emailId  
///
///  @param imapFlagOperationOptions  
///
///  @returns OAIEmailPreview*
///
-(NSURLSessionTask*) applyImapFlagOperationWithEmailId: (NSString*) emailId
    imapFlagOperationOptions: (OAIImapFlagOperationOptions*) imapFlagOperationOptions
    completionHandler: (void (^)(OAIEmailPreview* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'imapFlagOperationOptions' is set
    if (imapFlagOperationOptions == nil) {
        NSParameterAssert(imapFlagOperationOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imapFlagOperationOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/imap-flag-operation"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
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
    bodyParam = imapFlagOperationOptions;

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
                              responseType: @"OAIEmailPreview*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmailPreview*)data, error);
                                }
                            }];
}

///
/// Check whether an email send would be accepted
/// Validates sender/inbox context and recipient eligibility before attempting a send. Useful for preflight checks in UI or test workflows.
///  @param inboxId ID of the inbox you want to send the email from 
///
///  @param sendEmailOptions  
///
///  @returns OAICanSendEmailResults*
///
-(NSURLSessionTask*) canSendWithInboxId: (NSString*) inboxId
    sendEmailOptions: (OAISendEmailOptions*) sendEmailOptions
    completionHandler: (void (^)(OAICanSendEmailResults* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sendEmailOptions' is set
    if (sendEmailOptions == nil) {
        NSParameterAssert(sendEmailOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sendEmailOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/can-send"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
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
                              responseType: @"OAICanSendEmailResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICanSendEmailResults*)data, error);
                                }
                            }];
}

///
/// Check email body for broken links, images, and spelling issues
/// Runs content quality checks against hydrated email body content. This endpoint performs outbound HTTP checks for linked resources, so avoid use with sensitive or stateful URLs.
///  @param emailId  
///
///  @returns OAICheckEmailBodyResults*
///
-(NSURLSessionTask*) checkEmailBodyWithEmailId: (NSString*) emailId
    completionHandler: (void (^)(OAICheckEmailBodyResults* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/check-email-body"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
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
                              responseType: @"OAICheckEmailBodyResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICheckEmailBodyResults*)data, error);
                                }
                            }];
}

///
/// Check client support for features used in a stored email body
/// Detects HTML/CSS features in the target email body and reports compatibility across major email clients and devices.
///  @param emailId  
///
///  @returns OAICheckEmailBodyFeatureSupportResults*
///
-(NSURLSessionTask*) checkEmailBodyFeatureSupportWithEmailId: (NSString*) emailId
    completionHandler: (void (^)(OAICheckEmailBodyFeatureSupportResults* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/check-email-body-feature-support"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
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
                              responseType: @"OAICheckEmailBodyFeatureSupportResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICheckEmailBodyFeatureSupportResults*)data, error);
                                }
                            }];
}

///
/// Check email-client support for a provided HTML body
/// Evaluates HTML/CSS features in the supplied body and reports support coverage across major email clients and platforms.
///  @param checkEmailClientSupportOptions  
///
///  @returns OAICheckEmailClientSupportResults*
///
-(NSURLSessionTask*) checkEmailClientSupportWithCheckEmailClientSupportOptions: (OAICheckEmailClientSupportOptions*) checkEmailClientSupportOptions
    completionHandler: (void (^)(OAICheckEmailClientSupportResults* output, NSError* error)) handler {
    // verify the required parameter 'checkEmailClientSupportOptions' is set
    if (checkEmailClientSupportOptions == nil) {
        NSParameterAssert(checkEmailClientSupportOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"checkEmailClientSupportOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/check-email-client-support"];

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
    bodyParam = checkEmailClientSupportOptions;

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
                              responseType: @"OAICheckEmailClientSupportResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICheckEmailClientSupportResults*)data, error);
                                }
                            }];
}

///
/// Delete all emails in all inboxes.
/// Deletes all emails for the authenticated account context. This operation is destructive and cannot be undone.
///  @returns void
///
-(NSURLSessionTask*) deleteAllEmailsWithCompletionHandler: 
    (void (^)(NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails"];

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
/// Delete an email
/// Deletes a single email from account scope. Operation is destructive and not reversible.
///  @param emailId ID of email to delete 
///
///  @returns void
///
-(NSURLSessionTask*) deleteEmailWithEmailId: (NSString*) emailId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
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
/// Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.
/// Returns attachment bytes by attachment ID. Use attachment IDs from email payloads or attachment listing endpoints.
///  @param emailId ID of email 
///
///  @param attachmentId ID of attachment 
///
///  @param apiKey Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) downloadAttachmentWithEmailId: (NSString*) emailId
    attachmentId: (NSString*) attachmentId
    apiKey: (NSString*) apiKey
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'attachmentId' is set
    if (attachmentId == nil) {
        NSParameterAssert(attachmentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"attachmentId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/attachments/{attachmentId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
    }
    if (attachmentId != nil) {
        pathParams[@"attachmentId"] = attachmentId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (apiKey != nil) {
        queryParams[@"apiKey"] = apiKey;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
                              responseType: @"NSData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSData*)data, error);
                                }
                            }];
}

///
/// Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.
/// Returns attachment payload as base64 in JSON. Useful for clients that cannot reliably consume binary streaming responses.
///  @param emailId ID of email 
///
///  @param attachmentId ID of attachment 
///
///  @returns OAIDownloadAttachmentDto*
///
-(NSURLSessionTask*) downloadAttachmentBase64WithEmailId: (NSString*) emailId
    attachmentId: (NSString*) attachmentId
    completionHandler: (void (^)(OAIDownloadAttachmentDto* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'attachmentId' is set
    if (attachmentId == nil) {
        NSParameterAssert(attachmentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"attachmentId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/attachments/{attachmentId}/base64"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
    }
    if (attachmentId != nil) {
        pathParams[@"attachmentId"] = attachmentId;
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
                              responseType: @"OAIDownloadAttachmentDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDownloadAttachmentDto*)data, error);
                                }
                            }];
}

///
/// Get email body as string. Returned as `plain/text` with content type header.
/// Returns hydrated email body text as a string with content type aligned to the underlying body format.
///  @param emailId ID of email 
///
///  @returns NSString*
///
-(NSURLSessionTask*) downloadBodyWithEmailId: (NSString*) emailId
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/body"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/plain", @"text/html"]];
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
/// Get email body in bytes. Returned as `octet-stream` with content type header.
/// Streams hydrated email body bytes with content type derived from the message body format.
///  @param emailId ID of email 
///
///  @returns NSData*
///
-(NSURLSessionTask*) downloadBodyBytesWithEmailId: (NSString*) emailId
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/body-bytes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
                              responseType: @"NSData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSData*)data, error);
                                }
                            }];
}

///
/// Forward email to recipients
/// Forwards an existing email to new recipients. Uses the owning inbox context unless overridden by allowed sender options.
///  @param emailId ID of email 
///
///  @param forwardEmailOptions  
///
///  @returns OAISentEmailDto*
///
-(NSURLSessionTask*) forwardEmailWithEmailId: (NSString*) emailId
    forwardEmailOptions: (OAIForwardEmailOptions*) forwardEmailOptions
    completionHandler: (void (^)(OAISentEmailDto* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'forwardEmailOptions' is set
    if (forwardEmailOptions == nil) {
        NSParameterAssert(forwardEmailOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"forwardEmailOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/forward"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
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
    bodyParam = forwardEmailOptions;

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
                              responseType: @"OAISentEmailDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISentEmailDto*)data, error);
                                }
                            }];
}

///
/// Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.
/// Returns metadata for a specific attachment ID (name, content type, and size fields).
///  @param emailId ID of email 
///
///  @param attachmentId ID of attachment 
///
///  @returns OAIAttachmentMetaData*
///
-(NSURLSessionTask*) getAttachmentMetaDataWithEmailId: (NSString*) emailId
    attachmentId: (NSString*) attachmentId
    completionHandler: (void (^)(OAIAttachmentMetaData* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'attachmentId' is set
    if (attachmentId == nil) {
        NSParameterAssert(attachmentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"attachmentId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/attachments/{attachmentId}/metadata"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
    }
    if (attachmentId != nil) {
        pathParams[@"attachmentId"] = attachmentId;
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
                              responseType: @"OAIAttachmentMetaData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAttachmentMetaData*)data, error);
                                }
                            }];
}

///
/// Get hydrated email (headers and body)
/// Returns parsed email content including headers and body fields. Accessing hydrated content may mark the email as read depending on read-state rules.
///  @param emailId  
///
///  @returns OAIEmail*
///
-(NSURLSessionTask*) getEmailWithEmailId: (NSString*) emailId
    completionHandler: (void (^)(OAIEmail* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json;charset=UTF-8", @"application/xml;charset=UTF-8", @"application/json; charset=UTF-8", @"application/xml; charset=UTF-8"]];
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
                              responseType: @"OAIEmail*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmail*)data, error);
                                }
                            }];
}

///
/// List attachment metadata for an email
/// Returns metadata for all attachment IDs associated with the email (name, content type, size, and IDs).
///  @param emailId ID of email 
///
///  @returns NSArray<OAIAttachmentMetaData>*
///
-(NSURLSessionTask*) getEmailAttachmentsWithEmailId: (NSString*) emailId
    completionHandler: (void (^)(NSArray<OAIAttachmentMetaData>* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/attachments"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
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
                              responseType: @"NSArray<OAIAttachmentMetaData>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIAttachmentMetaData>*)data, error);
                                }
                            }];
}

///
/// Extract verification codes from an email
/// Extracts one-time passcodes and similar tokens from email content. Supports deterministic extraction now with method/fallback flags (`AUTO`, `PATTERN`, `LLM`, `OCR`, `OCR_THEN_LLM`) for QA and future advanced pipelines.
///  @param emailId ID of email to extract codes from 
///
///  @param extractCodesOptions  (optional)
///
///  @returns OAIExtractCodesResult*
///
-(NSURLSessionTask*) getEmailCodesWithEmailId: (NSString*) emailId
    extractCodesOptions: (OAIExtractCodesOptions*) extractCodesOptions
    completionHandler: (void (^)(OAIExtractCodesResult* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/codes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
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
    bodyParam = extractCodesOptions;

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
                              responseType: @"OAIExtractCodesResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIExtractCodesResult*)data, error);
                                }
                            }];
}

///
/// Run regex against hydrated email body and return matches
/// Executes a Java regex pattern over hydrated email body text and returns the full match plus capture groups. Pattern syntax follows Java `Pattern` rules.
///  @param emailId ID of email to match against 
///
///  @param contentMatchOptions  
///
///  @returns OAIEmailContentMatchResult*
///
-(NSURLSessionTask*) getEmailContentMatchWithEmailId: (NSString*) emailId
    contentMatchOptions: (OAIContentMatchOptions*) contentMatchOptions
    completionHandler: (void (^)(OAIEmailContentMatchResult* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'contentMatchOptions' is set
    if (contentMatchOptions == nil) {
        NSParameterAssert(contentMatchOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"contentMatchOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/contentMatch"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
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
    bodyParam = contentMatchOptions;

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
                              responseType: @"OAIEmailContentMatchResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmailContentMatchResult*)data, error);
                                }
                            }];
}

///
/// Get email content part by content type
/// Extracts one MIME body part by `contentType` and optional `index`, returned in a structured DTO with metadata.
///  @param emailId ID of email to match against 
///
///  @param contentType Content type 
///
///  @param strict Strict content type match (optional)
///
///  @param index Index of content type part if multiple (optional)
///
///  @returns OAIEmailContentPartResult*
///
-(NSURLSessionTask*) getEmailContentPartWithEmailId: (NSString*) emailId
    contentType: (NSString*) contentType
    strict: (NSNumber*) strict
    index: (NSNumber*) index
    completionHandler: (void (^)(OAIEmailContentPartResult* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'contentType' is set
    if (contentType == nil) {
        NSParameterAssert(contentType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"contentType"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/contentPart"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (contentType != nil) {
        queryParams[@"contentType"] = contentType;
    }
    if (strict != nil) {
        queryParams[@"strict"] = [strict isEqual:@(YES)] ? @"true" : @"false";
    }
    if (index != nil) {
        queryParams[@"index"] = index;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json;charset=UTF-8", @"application/xml;charset=UTF-8", @"application/json; charset=UTF-8", @"application/xml; charset=UTF-8"]];
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
                              responseType: @"OAIEmailContentPartResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmailContentPartResult*)data, error);
                                }
                            }];
}

///
/// Get multipart content part as raw response
/// Extracts one MIME body part by `contentType` and optional `index`, and returns raw content with matching response content type when valid.
///  @param emailId ID of email to match against 
///
///  @param contentType Content type 
///
///  @param strict Strict content type match (optional)
///
///  @param index Index of content type part if multiple. Starts from 0 and applies to the result list after selecting for your content type. Content type parts are sorted by order found in original MIME message. (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) getEmailContentPartContentWithEmailId: (NSString*) emailId
    contentType: (NSString*) contentType
    strict: (NSNumber*) strict
    index: (NSNumber*) index
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'contentType' is set
    if (contentType == nil) {
        NSParameterAssert(contentType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"contentType"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/contentPart/raw"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (contentType != nil) {
        queryParams[@"contentType"] = contentType;
    }
    if (strict != nil) {
        queryParams[@"strict"] = [strict isEqual:@(YES)] ? @"true" : @"false";
    }
    if (index != nil) {
        queryParams[@"index"] = index;
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
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Get email count
/// Returns total email count for the authenticated user, or count scoped to a specific inbox when `inboxId` is provided.
///  @param inboxId  (optional)
///
///  @returns OAICountDto*
///
-(NSURLSessionTask*) getEmailCountWithInboxId: (NSString*) inboxId
    completionHandler: (void (^)(OAICountDto* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/emails/count"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
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
                              responseType: @"OAICountDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICountDto*)data, error);
                                }
                            }];
}

///
/// Get hydrated email HTML for browser rendering
/// Returns hydrated HTML body directly with `text/html` content type. Supports temporary access/browser usage and optional CID replacement for inline asset rendering.
///  @param emailId  
///
///  @param replaceCidImages  (optional, default to @(NO))
///
///  @returns NSString*
///
-(NSURLSessionTask*) getEmailHTMLWithEmailId: (NSString*) emailId
    replaceCidImages: (NSNumber*) replaceCidImages
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/html"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (replaceCidImages != nil) {
        queryParams[@"replaceCidImages"] = [replaceCidImages isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html;charset=utf-8", @"text/html"]];
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
/// Get hydrated email HTML wrapped in JSON
/// Returns hydrated HTML body and subject in a JSON DTO. Useful for API clients that need structured response payloads instead of raw HTML responses.
///  @param emailId  
///
///  @param replaceCidImages  (optional, default to @(NO))
///
///  @returns OAIEmailHtmlDto*
///
-(NSURLSessionTask*) getEmailHTMLJsonWithEmailId: (NSString*) emailId
    replaceCidImages: (NSNumber*) replaceCidImages
    completionHandler: (void (^)(OAIEmailHtmlDto* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/html/json"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (replaceCidImages != nil) {
        queryParams[@"replaceCidImages"] = [replaceCidImages isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIEmailHtmlDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmailHtmlDto*)data, error);
                                }
                            }];
}

///
/// Query hydrated HTML body and return matching text lines
/// Applies a JSoup/CSS selector to hydrated HTML email body and returns matching text lines.
///  @param emailId ID of email to perform HTML query on 
///
///  @param htmlSelector HTML selector to search for. Uses JQuery/JSoup/CSS style selector like '.my-div' to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information. 
///
///  @returns OAIEmailTextLinesResult*
///
-(NSURLSessionTask*) getEmailHTMLQueryWithEmailId: (NSString*) emailId
    htmlSelector: (NSString*) htmlSelector
    completionHandler: (void (^)(OAIEmailTextLinesResult* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'htmlSelector' is set
    if (htmlSelector == nil) {
        NSParameterAssert(htmlSelector);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"htmlSelector"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/htmlQuery"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (htmlSelector != nil) {
        queryParams[@"htmlSelector"] = htmlSelector;
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
                              responseType: @"OAIEmailTextLinesResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmailTextLinesResult*)data, error);
                                }
                            }];
}

///
/// Extract links from an email HTML body
/// Parses HTML content and extracts link URLs (`href`). For non-HTML emails this endpoint returns a validation error.
///  @param emailId ID of email to fetch text for 
///
///  @param selector Optional HTML query selector for links (optional)
///
///  @returns OAIEmailLinksResult*
///
-(NSURLSessionTask*) getEmailLinksWithEmailId: (NSString*) emailId
    selector: (NSString*) selector
    completionHandler: (void (^)(OAIEmailLinksResult* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/links"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (selector != nil) {
        queryParams[@"selector"] = selector;
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
                              responseType: @"OAIEmailLinksResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmailLinksResult*)data, error);
                                }
                            }];
}

///
/// Get email URLs for viewing in browser or downloading
/// Returns precomputed URLs for preview and raw message access for the specified email.
///  @param emailId  
///
///  @returns OAIEmailPreviewUrls*
///
-(NSURLSessionTask*) getEmailPreviewURLsWithEmailId: (NSString*) emailId
    completionHandler: (void (^)(OAIEmailPreviewUrls* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/urls"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
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
                              responseType: @"OAIEmailPreviewUrls*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmailPreviewUrls*)data, error);
                                }
                            }];
}

///
/// Take a screenshot of an email in a browser and return base64 encoded string
/// Renders the email in a browser engine and returns PNG data as base64. Useful for APIs and dashboards that cannot easily stream binary responses.
///  @param emailId  
///
///  @param getEmailScreenshotOptions  
///
///  @returns OAIEmailScreenshotResult*
///
-(NSURLSessionTask*) getEmailScreenshotAsBase64WithEmailId: (NSString*) emailId
    getEmailScreenshotOptions: (OAIGetEmailScreenshotOptions*) getEmailScreenshotOptions
    completionHandler: (void (^)(OAIEmailScreenshotResult* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'getEmailScreenshotOptions' is set
    if (getEmailScreenshotOptions == nil) {
        NSParameterAssert(getEmailScreenshotOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"getEmailScreenshotOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/screenshot/base64"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
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
    bodyParam = getEmailScreenshotOptions;

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
                              responseType: @"OAIEmailScreenshotResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmailScreenshotResult*)data, error);
                                }
                            }];
}

///
/// Take a screenshot of an email in a browser
/// Renders the email in a browser engine and returns PNG bytes. Intended for visual QA and rendering regression checks.
///  @param emailId  
///
///  @param getEmailScreenshotOptions  
///
///  @returns void
///
-(NSURLSessionTask*) getEmailScreenshotAsBinaryWithEmailId: (NSString*) emailId
    getEmailScreenshotOptions: (OAIGetEmailScreenshotOptions*) getEmailScreenshotOptions
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'getEmailScreenshotOptions' is set
    if (getEmailScreenshotOptions == nil) {
        NSParameterAssert(getEmailScreenshotOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"getEmailScreenshotOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/screenshot/binary"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
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
    bodyParam = getEmailScreenshotOptions;

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
/// Extract signature from an inbound email
/// Attempts to parse a sender signature block from an email body. Uses raw MIME content parts when possible and falls back to hydrated body parsing. This is heuristic and may not be accurate for all email clients or formats.
///  @param emailId ID of email to extract signature from 
///
///  @returns OAIEmailSignatureParseResult*
///
-(NSURLSessionTask*) getEmailSignatureWithEmailId: (NSString*) emailId
    completionHandler: (void (^)(OAIEmailSignatureParseResult* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/signature"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
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
                              responseType: @"OAIEmailSignatureParseResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmailSignatureParseResult*)data, error);
                                }
                            }];
}

///
/// Get email summary (headers/metadata only)
/// Returns lightweight metadata and headers for an email. Use `getEmail` for hydrated body content or `getRawEmail` for original SMTP content.
///  @param emailId  
///
///  @param decode Deprecated and ignored. Retained for backwards compatibility. (optional)
///
///  @returns OAIEmailPreview*
///
-(NSURLSessionTask*) getEmailSummaryWithEmailId: (NSString*) emailId
    decode: (NSNumber*) decode
    completionHandler: (void (^)(OAIEmailPreview* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/summary"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (decode != nil) {
        queryParams[@"decode"] = [decode isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIEmailPreview*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmailPreview*)data, error);
                                }
                            }];
}

///
/// Extract normalized text lines from email body
/// Converts email body content to line-based plain text with optional HTML entity decoding and custom line separator.
///  @param emailId ID of email to fetch text for 
///
///  @param decodeHtmlEntities Decode HTML entities (optional)
///
///  @param lineSeparator Line separator character (optional)
///
///  @returns OAIEmailTextLinesResult*
///
-(NSURLSessionTask*) getEmailTextLinesWithEmailId: (NSString*) emailId
    decodeHtmlEntities: (NSNumber*) decodeHtmlEntities
    lineSeparator: (NSString*) lineSeparator
    completionHandler: (void (^)(OAIEmailTextLinesResult* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/textLines"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (decodeHtmlEntities != nil) {
        queryParams[@"decodeHtmlEntities"] = [decodeHtmlEntities isEqual:@(YES)] ? @"true" : @"false";
    }
    if (lineSeparator != nil) {
        queryParams[@"lineSeparator"] = lineSeparator;
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
                              responseType: @"OAIEmailTextLinesResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmailTextLinesResult*)data, error);
                                }
                            }];
}

///
/// Get email thread metadata by thread ID
/// Returns thread metadata built from RFC 5322 `Message-ID`, `In-Reply-To`, and `References` headers. Use `getEmailThreadItems` to fetch the thread messages.
///  @param threadId  
///
///  @returns OAIEmailThreadDto*
///
-(NSURLSessionTask*) getEmailThreadWithThreadId: (NSString*) threadId
    completionHandler: (void (^)(OAIEmailThreadDto* output, NSError* error)) handler {
    // verify the required parameter 'threadId' is set
    if (threadId == nil) {
        NSParameterAssert(threadId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"threadId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/threads/{threadId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (threadId != nil) {
        pathParams[@"threadId"] = threadId;
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
                              responseType: @"OAIEmailThreadDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmailThreadDto*)data, error);
                                }
                            }];
}

///
/// Get messages in a specific email thread
/// Returns all messages in a thread ordered by `createdAt` using the requested sort direction.
///  @param threadId  
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @returns OAIEmailThreadItemsDto*
///
-(NSURLSessionTask*) getEmailThreadItemsWithThreadId: (NSString*) threadId
    sort: (NSString*) sort
    completionHandler: (void (^)(OAIEmailThreadItemsDto* output, NSError* error)) handler {
    // verify the required parameter 'threadId' is set
    if (threadId == nil) {
        NSParameterAssert(threadId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"threadId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/threads/{threadId}/items"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (threadId != nil) {
        pathParams[@"threadId"] = threadId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"OAIEmailThreadItemsDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmailThreadItemsDto*)data, error);
                                }
                            }];
}

///
/// List email threads in paginated form
/// Lists conversation threads inferred from `Message-ID`, `In-Reply-To`, and `References`. Supports filtering by inbox, search text, and time range.
///  @param htmlSelector Optional inbox filter. Query parameter name is `htmlSelector` for legacy compatibility. (optional)
///
///  @param page Optional page index in email thread pagination (optional, default to @0)
///
///  @param size Optional page size in email thread pagination. Maximum size is 100. Use page index and sort to page through larger results (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @param searchFilter Optional search filter search filter for email threads. (optional)
///
///  @param since Optional filter email threads created since time (optional)
///
///  @param before Optional filter emails threads created before given date time (optional)
///
///  @returns OAIPageEmailThreadProjection*
///
-(NSURLSessionTask*) getEmailThreadsWithHtmlSelector: (NSString*) htmlSelector
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    completionHandler: (void (^)(OAIPageEmailThreadProjection* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/threads"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (htmlSelector != nil) {
        queryParams[@"htmlSelector"] = htmlSelector;
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
                              responseType: @"OAIPageEmailThreadProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageEmailThreadProjection*)data, error);
                                }
                            }];
}

///
/// Get all emails in all inboxes in paginated form. Email API list all.
/// Offset-style pagination endpoint for listing emails across inboxes. Supports inbox filters, unread-only, search, date boundaries, favourites, connector sync, plus-address filtering, and explicit include IDs.
///  @param inboxId Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. (optional)
///
///  @param page Optional page index in email list pagination (optional, default to @0)
///
///  @param size Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @param unreadOnly Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly (optional, default to @(NO))
///
///  @param searchFilter Optional search filter. Full email addresses match sender and receiving inbox email or receiving plus-address full address exactly. Address-like fragments containing @ (for example +alias@) also match sender, receiving inbox email, and receiving plus-address full address by contains. General text search matches sender, subject, and ID. (optional)
///
///  @param since Optional filter emails received after given date time (optional)
///
///  @param before Optional filter emails received before given date time (optional)
///
///  @param favourited Optional filter emails that are favourited (optional)
///
///  @param syncConnectors Sync connectors (optional)
///
///  @param plusAddressId Optional plus address ID filter (optional)
///
///  @param include Optional list of IDs to include in result (optional)
///
///  @returns OAIPageEmailProjection*
///
-(NSURLSessionTask*) getEmailsOffsetPaginatedWithInboxId: (NSArray<NSString*>*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    unreadOnly: (NSNumber*) unreadOnly
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    favourited: (NSNumber*) favourited
    syncConnectors: (NSNumber*) syncConnectors
    plusAddressId: (NSString*) plusAddressId
    include: (NSArray<NSString*>*) include
    completionHandler: (void (^)(OAIPageEmailProjection* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/offset-paginated"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        queryParams[@"inboxId"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: inboxId format: @"multi"];
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
    if (unreadOnly != nil) {
        queryParams[@"unreadOnly"] = [unreadOnly isEqual:@(YES)] ? @"true" : @"false";
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
    if (favourited != nil) {
        queryParams[@"favourited"] = [favourited isEqual:@(YES)] ? @"true" : @"false";
    }
    if (syncConnectors != nil) {
        queryParams[@"syncConnectors"] = [syncConnectors isEqual:@(YES)] ? @"true" : @"false";
    }
    if (plusAddressId != nil) {
        queryParams[@"plusAddressId"] = plusAddressId;
    }
    if (include != nil) {
        queryParams[@"include"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: include format: @"multi"];
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
                              responseType: @"OAIPageEmailProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageEmailProjection*)data, error);
                                }
                            }];
}

///
/// Get all emails in all inboxes in paginated form. Email API list all.
/// Primary paginated email listing endpoint. Returns emails across inboxes with support for inbox filters, unread-only, search, date boundaries, favourites, connector sync, and plus-address filtering.
///  @param inboxId Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. (optional)
///
///  @param page Optional page index in email list pagination (optional, default to @0)
///
///  @param size Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @param unreadOnly Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly (optional, default to @(NO))
///
///  @param searchFilter Optional search filter. Full email addresses match sender and receiving inbox email or receiving plus-address full address exactly. Address-like fragments containing @ (for example +alias@) also match sender, receiving inbox email, and receiving plus-address full address by contains. General text search matches sender, subject, and ID. (optional)
///
///  @param since Optional filter emails received after given date time. If unset will use time 24hours prior to now. (optional)
///
///  @param before Optional filter emails received before given date time (optional)
///
///  @param syncConnectors Sync connectors (optional)
///
///  @param plusAddressId Optional plus address ID filter (optional)
///
///  @param favourited Optional filter emails that are favourited (optional)
///
///  @returns OAIPageEmailProjection*
///
-(NSURLSessionTask*) getEmailsPaginatedWithInboxId: (NSArray<NSString*>*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    unreadOnly: (NSNumber*) unreadOnly
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    syncConnectors: (NSNumber*) syncConnectors
    plusAddressId: (NSString*) plusAddressId
    favourited: (NSNumber*) favourited
    completionHandler: (void (^)(OAIPageEmailProjection* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        queryParams[@"inboxId"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: inboxId format: @"multi"];
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
    if (unreadOnly != nil) {
        queryParams[@"unreadOnly"] = [unreadOnly isEqual:@(YES)] ? @"true" : @"false";
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
    if (syncConnectors != nil) {
        queryParams[@"syncConnectors"] = [syncConnectors isEqual:@(YES)] ? @"true" : @"false";
    }
    if (plusAddressId != nil) {
        queryParams[@"plusAddressId"] = plusAddressId;
    }
    if (favourited != nil) {
        queryParams[@"favourited"] = [favourited isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIPageEmailProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageEmailProjection*)data, error);
                                }
                            }];
}

///
/// Get Gravatar URL for an email address
/// Builds a Gravatar image URL from the provided email address and optional size. This endpoint does not fetch image bytes; it only returns the computed URL.
///  @param emailAddress  
///
///  @param size  (optional)
///
///  @returns OAIGravatarUrl*
///
-(NSURLSessionTask*) getGravatarUrlForEmailAddressWithEmailAddress: (NSString*) emailAddress
    size: (NSString*) size
    completionHandler: (void (^)(OAIGravatarUrl* output, NSError* error)) handler {
    // verify the required parameter 'emailAddress' is set
    if (emailAddress == nil) {
        NSParameterAssert(emailAddress);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailAddress"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/gravatarFor"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (emailAddress != nil) {
        queryParams[@"emailAddress"] = emailAddress;
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
                              responseType: @"OAIGravatarUrl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGravatarUrl*)data, error);
                                }
                            }];
}

///
/// Get latest email in all inboxes. Most recently received.
/// Returns the most recently received email across all inboxes or an optional subset of inbox IDs.
///  @param inboxIds Optional set of inboxes to filter by. Only get the latest email from these inbox IDs. If not provided will search across all inboxes (optional)
///
///  @returns OAIEmail*
///
-(NSURLSessionTask*) getLatestEmailWithInboxIds: (NSArray<NSString*>*) inboxIds
    completionHandler: (void (^)(OAIEmail* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/latest"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inboxIds != nil) {
        queryParams[@"inboxIds"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: inboxIds format: @"multi"];
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
                              responseType: @"OAIEmail*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmail*)data, error);
                                }
                            }];
}

///
/// Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.
/// Returns the newest email for the specified inbox ID. For polling/wait semantics use wait endpoints.
///  @param inboxId ID of the inbox you want to get the latest email from 
///
///  @returns OAIEmail*
///
-(NSURLSessionTask*) getLatestEmailInInbox1WithInboxId: (NSString*) inboxId
    completionHandler: (void (^)(OAIEmail* output, NSError* error)) handler {
    // verify the required parameter 'inboxId' is set
    if (inboxId == nil) {
        NSParameterAssert(inboxId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inboxId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/latestIn"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
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
                              responseType: @"OAIEmail*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmail*)data, error);
                                }
                            }];
}

///
/// List organization-visible emails
/// Returns paginated emails visible through organization/team access. Supports inbox filtering, unread-only filtering, search, favourites, plus-address filtering, and optional connector sync.
///  @param inboxId Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. (optional)
///
///  @param page Optional page index in email list pagination (optional, default to @0)
///
///  @param size Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @param unreadOnly Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly (optional, default to @(NO))
///
///  @param searchFilter Optional search filter search filter for emails. (optional)
///
///  @param since Optional filter emails received after given date time. If unset will use time 24hours prior to now. (optional)
///
///  @param before Optional filter emails received before given date time (optional)
///
///  @param syncConnectors Sync connectors (optional)
///
///  @param favourited Search only favorited emails (optional)
///
///  @param plusAddressId Optional plus address ID filter (optional)
///
///  @returns OAIPageEmailProjection*
///
-(NSURLSessionTask*) getOrganizationEmailsPaginatedWithInboxId: (NSArray<NSString*>*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    unreadOnly: (NSNumber*) unreadOnly
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
    syncConnectors: (NSNumber*) syncConnectors
    favourited: (NSNumber*) favourited
    plusAddressId: (NSString*) plusAddressId
    completionHandler: (void (^)(OAIPageEmailProjection* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/organization"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        queryParams[@"inboxId"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: inboxId format: @"multi"];
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
    if (unreadOnly != nil) {
        queryParams[@"unreadOnly"] = [unreadOnly isEqual:@(YES)] ? @"true" : @"false";
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
    if (syncConnectors != nil) {
        queryParams[@"syncConnectors"] = [syncConnectors isEqual:@(YES)] ? @"true" : @"false";
    }
    if (favourited != nil) {
        queryParams[@"favourited"] = [favourited isEqual:@(YES)] ? @"true" : @"false";
    }
    if (plusAddressId != nil) {
        queryParams[@"plusAddressId"] = plusAddressId;
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
                              responseType: @"OAIPageEmailProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageEmailProjection*)data, error);
                                }
                            }];
}

///
/// Get raw email string. Returns unparsed raw SMTP message with headers and body.
/// Returns the original unparsed SMTP/MIME message as `text/plain`. Use JSON variant if your client expects JSON transport.
///  @param emailId ID of email 
///
///  @returns void
///
-(NSURLSessionTask*) getRawEmailContentsWithEmailId: (NSString*) emailId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/raw"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
/// Returns the original unparsed SMTP/MIME message wrapped in a JSON DTO for API clients that avoid plain-text stream responses.
///  @param emailId ID of email 
///
///  @returns OAIRawEmailJson*
///
-(NSURLSessionTask*) getRawEmailJsonWithEmailId: (NSString*) emailId
    completionHandler: (void (^)(OAIRawEmailJson* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/raw/json"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
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
                              responseType: @"OAIRawEmailJson*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRawEmailJson*)data, error);
                                }
                            }];
}

///
/// Get unread email count
/// Returns unread email count. An email is considered read after dashboard/API retrieval depending on your read workflow.
///  @param inboxId Inbox ID filter for unread count scope (optional)
///
///  @returns OAIUnreadCount*
///
-(NSURLSessionTask*) getUnreadEmailCountWithInboxId: (NSString*) inboxId
    completionHandler: (void (^)(OAIUnreadCount* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/unreadCount"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
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
                              responseType: @"OAIUnreadCount*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIUnreadCount*)data, error);
                                }
                            }];
}

///
/// Mark all emails as read or unread
/// Sets read state for all emails, optionally scoped to one inbox. Use `read=false` to reset unread state in bulk.
///  @param read What value to assign to email read property. Default true. (optional, default to @(YES))
///
///  @param inboxId Optional inbox ID filter (optional)
///
///  @returns void
///
-(NSURLSessionTask*) markAllAsReadWithRead: (NSNumber*) read
    inboxId: (NSString*) inboxId
    completionHandler: (void (^)(NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/read"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (read != nil) {
        queryParams[@"read"] = [read isEqual:@(YES)] ? @"true" : @"false";
    }
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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Mark an email as read or unread
/// Sets read state for one email. Useful when implementing custom mailbox workflows that treat viewed messages as unread.
///  @param emailId  
///
///  @param read What value to assign to email read property. Default true. (optional, default to @(YES))
///
///  @returns OAIEmailPreview*
///
-(NSURLSessionTask*) markAsReadWithEmailId: (NSString*) emailId
    read: (NSNumber*) read
    completionHandler: (void (^)(OAIEmailPreview* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/read"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (read != nil) {
        queryParams[@"read"] = [read isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIEmailPreview*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmailPreview*)data, error);
                                }
                            }];
}

///
/// Reply to an email
/// Sends a reply using the original conversation context (subject/thread headers). Reply target resolution honors sender/reply-to semantics.
///  @param emailId ID of the email that should be replied to 
///
///  @param replyToEmailOptions  
///
///  @returns OAISentEmailDto*
///
-(NSURLSessionTask*) replyToEmailWithEmailId: (NSString*) emailId
    replyToEmailOptions: (OAIReplyToEmailOptions*) replyToEmailOptions
    completionHandler: (void (^)(OAISentEmailDto* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'replyToEmailOptions' is set
    if (replyToEmailOptions == nil) {
        NSParameterAssert(replyToEmailOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"replyToEmailOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
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
    bodyParam = replyToEmailOptions;

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
                              responseType: @"OAISentEmailDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISentEmailDto*)data, error);
                                }
                            }];
}

///
/// Get all emails by search criteria. Return in paginated form.
/// Searches emails by sender/recipient/address/subject/id fields and returns paginated matches. Does not perform full-text body search.
///  @param searchEmailsOptions  
///
///  @param syncConnectors Sync connectors (optional)
///
///  @param favourited Search only favourited emails (optional)
///
///  @param plusAddressId Optional plus address ID filter (optional)
///
///  @returns OAIPageEmailProjection*
///
-(NSURLSessionTask*) searchEmailsWithSearchEmailsOptions: (OAISearchEmailsOptions*) searchEmailsOptions
    syncConnectors: (NSNumber*) syncConnectors
    favourited: (NSNumber*) favourited
    plusAddressId: (NSString*) plusAddressId
    completionHandler: (void (^)(OAIPageEmailProjection* output, NSError* error)) handler {
    // verify the required parameter 'searchEmailsOptions' is set
    if (searchEmailsOptions == nil) {
        NSParameterAssert(searchEmailsOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"searchEmailsOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (syncConnectors != nil) {
        queryParams[@"syncConnectors"] = [syncConnectors isEqual:@(YES)] ? @"true" : @"false";
    }
    if (favourited != nil) {
        queryParams[@"favourited"] = [favourited isEqual:@(YES)] ? @"true" : @"false";
    }
    if (plusAddressId != nil) {
        queryParams[@"plusAddressId"] = plusAddressId;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"API_KEY"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = searchEmailsOptions;

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
                              responseType: @"OAIPageEmailProjection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageEmailProjection*)data, error);
                                }
                            }];
}

///
/// Send email
/// Sends an email from an existing inbox, or creates a temporary inbox when `inboxId` is not provided. Supports `useDomainPool` and `virtualSend` inbox creation behavior for convenience sends.
///  @param sendEmailOptions  
///
///  @param inboxId ID of the inbox you want to send the email from (optional)
///
///  @param useDomainPool Use domain pool. Optionally create inbox to send from using the mailslurp domain pool. (optional)
///
///  @param virtualSend Optionally create inbox to send from that is a virtual inbox and won't send to external addresses (optional)
///
///  @returns void
///
-(NSURLSessionTask*) sendEmailSourceOptionalWithSendEmailOptions: (OAISendEmailOptions*) sendEmailOptions
    inboxId: (NSString*) inboxId
    useDomainPool: (NSNumber*) useDomainPool
    virtualSend: (NSNumber*) virtualSend
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'sendEmailOptions' is set
    if (sendEmailOptions == nil) {
        NSParameterAssert(sendEmailOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sendEmailOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
    }
    if (useDomainPool != nil) {
        queryParams[@"useDomainPool"] = [useDomainPool isEqual:@(YES)] ? @"true" : @"false";
    }
    if (virtualSend != nil) {
        queryParams[@"virtualSend"] = [virtualSend isEqual:@(YES)] ? @"true" : @"false";
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
/// Set email favourited state
/// Sets favourite state for an email for dashboard/search workflows.
///  @param emailId ID of email to set favourite state 
///
///  @param favourited  
///
///  @returns void
///
-(NSURLSessionTask*) setEmailFavouritedWithEmailId: (NSString*) emailId
    favourited: (NSNumber*) favourited
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'favourited' is set
    if (favourited == nil) {
        NSParameterAssert(favourited);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"favourited"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/favourite"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (favourited != nil) {
        queryParams[@"favourited"] = [favourited isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Validate email HTML contents
/// Runs HTML validation on the email body when HTML is present. Non-HTML emails are treated as valid for this check.
///  @param emailId ID of email 
///
///  @returns OAIValidationDto*
///
-(NSURLSessionTask*) validateEmailWithEmailId: (NSString*) emailId
    completionHandler: (void (^)(OAIValidationDto* output, NSError* error)) handler {
    // verify the required parameter 'emailId' is set
    if (emailId == nil) {
        NSParameterAssert(emailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"emailId"] };
            NSError* error = [NSError errorWithDomain:kOAIEmailControllerApiErrorDomain code:kOAIEmailControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/validate"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
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
                              responseType: @"OAIValidationDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIValidationDto*)data, error);
                                }
                            }];
}



@end
