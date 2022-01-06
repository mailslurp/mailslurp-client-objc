#import "OAIEmailControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAttachmentMetaData.h"
#import "OAIContentMatchOptions.h"
#import "OAICountDto.h"
#import "OAIDownloadAttachmentDto.h"
#import "OAIEmail.h"
#import "OAIEmailContentMatchResult.h"
#import "OAIEmailLinksResult.h"
#import "OAIEmailPreview.h"
#import "OAIEmailTextLinesResult.h"
#import "OAIForwardEmailOptions.h"
#import "OAIGravatarUrl.h"
#import "OAIPageEmailProjection.h"
#import "OAIRawEmailJson.h"
#import "OAIReplyToEmailOptions.h"
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
/// Delete all emails in all inboxes.
/// Deletes all emails in your account. Be careful as emails cannot be recovered
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
/// Deletes an email and removes it from the inbox. Deleted emails cannot be recovered.
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
/// Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
///  @param emailId ID of email 
///
///  @param attachmentId ID of attachment 
///
///  @param apiKey Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly. (optional)
///
///  @returns NSArray<NSData*>*
///
-(NSURLSessionTask*) downloadAttachmentWithEmailId: (NSString*) emailId
    attachmentId: (NSString*) attachmentId
    apiKey: (NSString*) apiKey
    completionHandler: (void (^)(NSArray<NSData*>* output, NSError* error)) handler {
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
                              responseType: @"NSArray<NSData*>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<NSData*>*)data, error);
                                }
                            }];
}

///
/// Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.
/// Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.
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
/// Returns the specified email body for a given email as a string
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
/// Returns the specified email body for a given email as a stream / array of bytes.
///  @param emailId ID of email 
///
///  @returns NSArray<NSData*>*
///
-(NSURLSessionTask*) downloadBodyBytesWithEmailId: (NSString*) emailId
    completionHandler: (void (^)(NSArray<NSData*>* output, NSError* error)) handler {
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
                              responseType: @"NSArray<NSData*>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<NSData*>*)data, error);
                                }
                            }];
}

///
/// Forward email to recipients
/// Forward an existing email to new recipients. The sender of the email will be the inbox that received the email you are forwarding. You can override the sender with the `from` option. Note you must have access to the from address in MailSlurp to use the override. For more control consider fetching the email and sending it a new using the send email endpoints.
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
/// Returns the metadata such as name and content-type for a given attachment and email.
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
/// Get all email attachment metadata. Metadata includes name and size of attachments.
/// Returns an array of attachment metadata such as name and content-type for a given email if present.
///  @param emailId ID of email 
///
///  @returns NSArray<OAIAttachmentMetaData>*
///
-(NSURLSessionTask*) getAttachmentsWithEmailId: (NSString*) emailId
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
/// Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
/// Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints
///  @param emailId  
///
///  @param decode Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance `=D7`). This can be a pain for testing (optional, default to @(NO))
///
///  @returns OAIEmail*
///
-(NSURLSessionTask*) getEmailWithEmailId: (NSString*) emailId
    decode: (NSNumber*) decode
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
                              responseType: @"OAIEmail*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEmail*)data, error);
                                }
                            }];
}

///
/// Get email content regex pattern match results. Runs regex against email body and returns match groups.
/// Return the matches for a given Java style regex pattern. Do not include the typical `/` at start or end of regex in some languages. Given an example `your code is: 12345` the pattern to extract match looks like `code is: (\\d{6})`. This will return an array of matches with the first matching the entire pattern and the subsequent matching the groups: `['code is: 123456', '123456']` See https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for more information of available patterns. 
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
/// Get email count
/// 
///  @returns OAICountDto*
///
-(NSURLSessionTask*) getEmailCountWithCompletionHandler: 
    (void (^)(OAICountDto* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/emails/count"];

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
                              responseType: @"OAICountDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICountDto*)data, error);
                                }
                            }];
}

///
/// Get email content as HTML. For displaying emails in browser context.
/// Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: `?apiKey=xxx`
///  @param emailId  
///
///  @param decode  (optional, default to @(NO))
///
///  @returns NSString*
///
-(NSURLSessionTask*) getEmailHTMLWithEmailId: (NSString*) emailId
    decode: (NSNumber*) decode
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
    if (decode != nil) {
        queryParams[@"decode"] = [decode isEqual:@(YES)] ? @"true" : @"false";
    }
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
/// Parse and return text from an email, stripping HTML and decoding encoded characters
/// Parse an email body and return the content as an array of text. HTML parsing uses JSoup which supports JQuery/CSS style selectors
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
/// Parse and return list of links found in an email (only works for HTML content)
/// HTML parsing uses JSoup and UNIX line separators. Searches content for href attributes
///  @param emailId ID of email to fetch text for 
///
///  @returns OAIEmailLinksResult*
///
-(NSURLSessionTask*) getEmailLinksWithEmailId: (NSString*) emailId
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
/// Parse and return text from an email, stripping HTML and decoding encoded characters
/// Parse an email body and return the content as an array of strings. HTML parsing uses JSoup and UNIX line separators.
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
/// Get all emails in all inboxes in paginated form. Email API list all.
/// By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages
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
///  @param searchFilter Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body (optional)
///
///  @param since Optional filter emails received after given date time (optional)
///
///  @param before Optional filter emails received before given date time (optional)
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
/// 
/// Get gravatar url for email address
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
/// Get the newest email in all inboxes or in a passed set of inbox IDs
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
/// Get the newest email in all inboxes or in a passed set of inbox IDs
///  @param inboxId ID of the inbox you want to get the latest email from 
///
///  @returns OAIEmail*
///
-(NSURLSessionTask*) getLatestEmailInInboxWithInboxId: (NSString*) inboxId
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
/// Get all organization emails. List team or shared test email accounts
/// By default returns all emails across all team inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages
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
///  @param since Optional filter emails received after given date time (optional)
///
///  @param before Optional filter emails received before given date time (optional)
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
/// Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint
///  @param emailId ID of email 
///
///  @returns NSString*
///
-(NSURLSessionTask*) getRawEmailContentsWithEmailId: (NSString*) emailId
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

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/{emailId}/raw"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (emailId != nil) {
        pathParams[@"emailId"] = emailId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/plain"]];
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
/// Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
/// Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response
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
/// Get number of emails unread. Unread means has not been viewed in dashboard or returned in an email API response
///  @returns OAIUnreadCount*
///
-(NSURLSessionTask*) getUnreadEmailCountWithCompletionHandler: 
    (void (^)(OAIUnreadCount* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emails/unreadCount"];

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
                              responseType: @"OAIUnreadCount*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIUnreadCount*)data, error);
                                }
                            }];
}

///
/// Mark an email as read on unread
/// Marks an email as read or unread. Pass boolean read flag to set value. This is useful if you want to read an email but keep it as unread
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
/// Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.
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
/// Send email
/// Alias for `InboxController.sendEmail` method - see original method for full details. Sends an email from a given inbox that you have created. If no inbox is supplied a random inbox will be created for you and used to send the email.
///  @param sendEmailOptions  
///
///  @param inboxId ID of the inbox you want to send the email from (optional)
///
///  @param useDomainPool Use domain pool. Optionally create inbox to send from using the mailslurp domain pool. (optional)
///
///  @returns void
///
-(NSURLSessionTask*) sendEmailSourceOptionalWithSendEmailOptions: (OAISendEmailOptions*) sendEmailOptions
    inboxId: (NSString*) inboxId
    useDomainPool: (NSNumber*) useDomainPool
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
/// Validate email HTML contents
/// Validate the HTML content of email if HTML is found. Considered valid if no HTML is present.
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
