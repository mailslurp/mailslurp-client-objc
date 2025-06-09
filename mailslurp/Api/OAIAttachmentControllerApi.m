#import "OAIAttachmentControllerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAttachmentEntityDto.h"
#import "OAIAttachmentMetaData.h"
#import "OAIDownloadAttachmentDto.h"
#import "OAIInlineObject.h"
#import "OAIPageAttachmentEntity.h"
#import "OAIUploadAttachmentOptions.h"


@interface OAIAttachmentControllerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIAttachmentControllerApi

NSString* kOAIAttachmentControllerApiErrorDomain = @"OAIAttachmentControllerApiErrorDomain";
NSInteger kOAIAttachmentControllerApiMissingParamErrorCode = 234513;

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
/// Delete all attachments
/// Delete all attachments
///  @returns void
///
-(NSURLSessionTask*) deleteAllAttachmentsWithCompletionHandler: 
    (void (^)(NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/attachments"];

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
/// Delete an attachment
/// Delete an attachment
///  @param attachmentId ID of attachment 
///
///  @returns void
///
-(NSURLSessionTask*) deleteAttachmentWithAttachmentId: (NSString*) attachmentId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'attachmentId' is set
    if (attachmentId == nil) {
        NSParameterAssert(attachmentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"attachmentId"] };
            NSError* error = [NSError errorWithDomain:kOAIAttachmentControllerApiErrorDomain code:kOAIAttachmentControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/attachments/{attachmentId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (attachmentId != nil) {
        pathParams[@"attachmentId"] = attachmentId;
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
/// Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
/// Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.
///  @param attachmentId ID of attachment 
///
///  @returns OAIDownloadAttachmentDto*
///
-(NSURLSessionTask*) downloadAttachmentAsBase64EncodedWithAttachmentId: (NSString*) attachmentId
    completionHandler: (void (^)(OAIDownloadAttachmentDto* output, NSError* error)) handler {
    // verify the required parameter 'attachmentId' is set
    if (attachmentId == nil) {
        NSParameterAssert(attachmentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"attachmentId"] };
            NSError* error = [NSError errorWithDomain:kOAIAttachmentControllerApiErrorDomain code:kOAIAttachmentControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/attachments/{attachmentId}/base64"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
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
/// Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.
/// Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
///  @param attachmentId ID of attachment 
///
///  @returns NSData*
///
-(NSURLSessionTask*) downloadAttachmentAsBytesWithAttachmentId: (NSString*) attachmentId
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'attachmentId' is set
    if (attachmentId == nil) {
        NSParameterAssert(attachmentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"attachmentId"] };
            NSError* error = [NSError errorWithDomain:kOAIAttachmentControllerApiErrorDomain code:kOAIAttachmentControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/attachments/{attachmentId}/bytes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (attachmentId != nil) {
        pathParams[@"attachmentId"] = attachmentId;
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
/// Get an attachment entity
/// 
///  @param attachmentId ID of attachment 
///
///  @returns OAIAttachmentEntityDto*
///
-(NSURLSessionTask*) getAttachmentWithAttachmentId: (NSString*) attachmentId
    completionHandler: (void (^)(OAIAttachmentEntityDto* output, NSError* error)) handler {
    // verify the required parameter 'attachmentId' is set
    if (attachmentId == nil) {
        NSParameterAssert(attachmentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"attachmentId"] };
            NSError* error = [NSError errorWithDomain:kOAIAttachmentControllerApiErrorDomain code:kOAIAttachmentControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/attachments/{attachmentId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"OAIAttachmentEntityDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAttachmentEntityDto*)data, error);
                                }
                            }];
}

///
/// Get email attachment metadata information
/// Returns the metadata for an attachment. It is saved separately to the content of the attachment. Contains properties `name` and `content-type` and `content-length` in bytes for a given attachment.
///  @param attachmentId ID of attachment 
///
///  @returns OAIAttachmentMetaData*
///
-(NSURLSessionTask*) getAttachmentInfoWithAttachmentId: (NSString*) attachmentId
    completionHandler: (void (^)(OAIAttachmentMetaData* output, NSError* error)) handler {
    // verify the required parameter 'attachmentId' is set
    if (attachmentId == nil) {
        NSParameterAssert(attachmentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"attachmentId"] };
            NSError* error = [NSError errorWithDomain:kOAIAttachmentControllerApiErrorDomain code:kOAIAttachmentControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/attachments/{attachmentId}/metadata"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
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
/// Get email attachments
/// Get all attachments in paginated response. Each entity contains meta data for the attachment such as `name` and `content-type`. Use the `attachmentId` and the download endpoints to get the file contents.
///  @param page Optional page index for list pagination (optional, default to @0)
///
///  @param size Optional page size for list pagination (optional, default to @20)
///
///  @param sort Optional createdAt sort direction ASC or DESC (optional, default to @"ASC")
///
///  @param fileNameFilter Optional file name and content type search filter (optional)
///
///  @param since Filter by created at after the given timestamp (optional)
///
///  @param before Filter by created at before the given timestamp (optional)
///
///  @param inboxId Optional inboxId to filter attachments by (optional)
///
///  @param emailId Optional emailId to filter attachments by (optional)
///
///  @param sentEmailId Optional sentEmailId to filter attachments by (optional)
///
///  @returns OAIPageAttachmentEntity*
///
-(NSURLSessionTask*) getAttachmentsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    fileNameFilter: (NSString*) fileNameFilter
    since: (NSDate*) since
    before: (NSDate*) before
    inboxId: (NSString*) inboxId
    emailId: (NSString*) emailId
    sentEmailId: (NSString*) sentEmailId
    completionHandler: (void (^)(OAIPageAttachmentEntity* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/attachments"];

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
    if (fileNameFilter != nil) {
        queryParams[@"fileNameFilter"] = fileNameFilter;
    }
    if (since != nil) {
        queryParams[@"since"] = since;
    }
    if (before != nil) {
        queryParams[@"before"] = before;
    }
    if (inboxId != nil) {
        queryParams[@"inboxId"] = inboxId;
    }
    if (emailId != nil) {
        queryParams[@"emailId"] = emailId;
    }
    if (sentEmailId != nil) {
        queryParams[@"sentEmailId"] = sentEmailId;
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
                              responseType: @"OAIPageAttachmentEntity*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPageAttachmentEntity*)data, error);
                                }
                            }];
}

///
/// Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
/// 
///  @param uploadAttachmentOptions  
///
///  @returns NSArray<NSString*>*
///
-(NSURLSessionTask*) uploadAttachmentWithUploadAttachmentOptions: (OAIUploadAttachmentOptions*) uploadAttachmentOptions
    completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler {
    // verify the required parameter 'uploadAttachmentOptions' is set
    if (uploadAttachmentOptions == nil) {
        NSParameterAssert(uploadAttachmentOptions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"uploadAttachmentOptions"] };
            NSError* error = [NSError errorWithDomain:kOAIAttachmentControllerApiErrorDomain code:kOAIAttachmentControllerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/attachments"];

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
    bodyParam = uploadAttachmentOptions;

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
                              responseType: @"NSArray<NSString*>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<NSString*>*)data, error);
                                }
                            }];
}

///
/// Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
/// 
///  @param contentType  (optional)
///
///  @param contentType2 Optional contentType for file. For instance `application/pdf` (optional)
///
///  @param contentId Optional content ID (CID) to save upload with (optional)
///
///  @param filename Optional filename to save upload with (optional)
///
///  @param fileSize Optional byte length to save upload with (optional)
///
///  @param filename2  (optional)
///
///  @returns NSArray<NSString*>*
///
-(NSURLSessionTask*) uploadAttachmentBytesWithContentType: (NSString*) contentType
    contentType2: (NSString*) contentType2
    contentId: (NSString*) contentId
    filename: (NSString*) filename
    fileSize: (NSNumber*) fileSize
    filename2: (NSString*) filename2
    completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/attachments/bytes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (contentType2 != nil) {
        queryParams[@"contentType"] = contentType2;
    }
    if (contentId != nil) {
        queryParams[@"contentId"] = contentId;
    }
    if (filename != nil) {
        queryParams[@"filename"] = filename;
    }
    if (fileSize != nil) {
        queryParams[@"fileSize"] = fileSize;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (contentType != nil) {
        headerParams[@"contentType"] = contentType;
    }
    if (filename2 != nil) {
        headerParams[@"filename"] = filename2;
    }
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
                              responseType: @"NSArray<NSString*>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<NSString*>*)data, error);
                                }
                            }];
}

///
/// Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
/// 
///  @param contentId Optional content ID of attachment (optional)
///
///  @param contentType Optional content type of attachment (optional)
///
///  @param filename Optional name of file (optional)
///
///  @param contentTypeHeader Optional content type header of attachment (optional)
///
///  @param xFilename Optional filename header of attachment (optional)
///
///  @param xFilenameRaw Optional raw filename header of attachment that will be converted to punycode (optional)
///
///  @param xFilesize Optional content size of attachment (optional)
///
///  @param inlineObject  (optional)
///
///  @returns NSArray<NSString*>*
///
-(NSURLSessionTask*) uploadMultipartFormWithContentId: (NSString*) contentId
    contentType: (NSString*) contentType
    filename: (NSString*) filename
    contentTypeHeader: (NSString*) contentTypeHeader
    xFilename: (NSString*) xFilename
    xFilenameRaw: (NSString*) xFilenameRaw
    xFilesize: (NSNumber*) xFilesize
    inlineObject: (OAIInlineObject*) inlineObject
    completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/attachments/multipart"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (contentId != nil) {
        queryParams[@"contentId"] = contentId;
    }
    if (contentType != nil) {
        queryParams[@"contentType"] = contentType;
    }
    if (filename != nil) {
        queryParams[@"filename"] = filename;
    }
    if (contentTypeHeader != nil) {
        queryParams[@"contentTypeHeader"] = contentTypeHeader;
    }
    if (xFilename != nil) {
        queryParams[@"x-filename"] = xFilename;
    }
    if (xFilenameRaw != nil) {
        queryParams[@"x-filename-raw"] = xFilenameRaw;
    }
    if (xFilesize != nil) {
        queryParams[@"x-filesize"] = xFilesize;
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
    bodyParam = inlineObject;

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
                              responseType: @"NSArray<NSString*>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<NSString*>*)data, error);
                                }
                            }];
}



@end
