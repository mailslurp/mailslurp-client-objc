# OAIAttachmentControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAllAttachments**](OAIAttachmentControllerApi#deleteallattachments) | **DELETE** /attachments | Delete all attachments
[**deleteAttachment**](OAIAttachmentControllerApi#deleteattachment) | **DELETE** /attachments/{attachmentId} | Delete an attachment
[**downloadAttachmentAsBase64Encoded**](OAIAttachmentControllerApi#downloadattachmentasbase64encoded) | **GET** /attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
[**downloadAttachmentAsBytes**](OAIAttachmentControllerApi#downloadattachmentasbytes) | **GET** /attachments/{attachmentId}/bytes | Download attachments. Get email attachment bytes. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints.
[**getAttachment**](OAIAttachmentControllerApi#getattachment) | **GET** /attachments/{attachmentId} | Get an attachment entity
[**getAttachmentInfo**](OAIAttachmentControllerApi#getattachmentinfo) | **GET** /attachments/{attachmentId}/metadata | Get email attachment metadata information
[**getAttachments**](OAIAttachmentControllerApi#getattachments) | **GET** /attachments | Get email attachments
[**uploadAttachment**](OAIAttachmentControllerApi#uploadattachment) | **POST** /attachments | Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
[**uploadAttachmentBytes**](OAIAttachmentControllerApi#uploadattachmentbytes) | **POST** /attachments/bytes | Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
[**uploadMultipartForm**](OAIAttachmentControllerApi#uploadmultipartform) | **POST** /attachments/multipart | Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.


# **deleteAllAttachments**
```objc
-(NSURLSessionTask*) deleteAllAttachmentsWithCompletionHandler: 
        (void (^)(NSError* error)) handler;
```

Delete all attachments

Delete all attachments

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIAttachmentControllerApi*apiInstance = [[OAIAttachmentControllerApi alloc] init];

// Delete all attachments
[apiInstance deleteAllAttachmentsWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIAttachmentControllerApi->deleteAllAttachments: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAttachment**
```objc
-(NSURLSessionTask*) deleteAttachmentWithAttachmentId: (NSString*) attachmentId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete an attachment

Delete an attachment

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* attachmentId = @"attachmentId_example"; // ID of attachment

OAIAttachmentControllerApi*apiInstance = [[OAIAttachmentControllerApi alloc] init];

// Delete an attachment
[apiInstance deleteAttachmentWithAttachmentId:attachmentId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIAttachmentControllerApi->deleteAttachment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **NSString***| ID of attachment | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadAttachmentAsBase64Encoded**
```objc
-(NSURLSessionTask*) downloadAttachmentAsBase64EncodedWithAttachmentId: (NSString*) attachmentId
        completionHandler: (void (^)(OAIDownloadAttachmentDto* output, NSError* error)) handler;
```

Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.

Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* attachmentId = @"attachmentId_example"; // ID of attachment

OAIAttachmentControllerApi*apiInstance = [[OAIAttachmentControllerApi alloc] init];

// Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
[apiInstance downloadAttachmentAsBase64EncodedWithAttachmentId:attachmentId
          completionHandler: ^(OAIDownloadAttachmentDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAttachmentControllerApi->downloadAttachmentAsBase64Encoded: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **NSString***| ID of attachment | 

### Return type

[**OAIDownloadAttachmentDto***](OAIDownloadAttachmentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadAttachmentAsBytes**
```objc
-(NSURLSessionTask*) downloadAttachmentAsBytesWithAttachmentId: (NSString*) attachmentId
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.

Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* attachmentId = @"attachmentId_example"; // ID of attachment

OAIAttachmentControllerApi*apiInstance = [[OAIAttachmentControllerApi alloc] init];

// Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.
[apiInstance downloadAttachmentAsBytesWithAttachmentId:attachmentId
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAttachmentControllerApi->downloadAttachmentAsBytes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **NSString***| ID of attachment | 

### Return type

**NSData***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAttachment**
```objc
-(NSURLSessionTask*) getAttachmentWithAttachmentId: (NSString*) attachmentId
        completionHandler: (void (^)(OAIAttachmentEntityDto* output, NSError* error)) handler;
```

Get an attachment entity

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* attachmentId = @"attachmentId_example"; // ID of attachment

OAIAttachmentControllerApi*apiInstance = [[OAIAttachmentControllerApi alloc] init];

// Get an attachment entity
[apiInstance getAttachmentWithAttachmentId:attachmentId
          completionHandler: ^(OAIAttachmentEntityDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAttachmentControllerApi->getAttachment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **NSString***| ID of attachment | 

### Return type

[**OAIAttachmentEntityDto***](OAIAttachmentEntityDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAttachmentInfo**
```objc
-(NSURLSessionTask*) getAttachmentInfoWithAttachmentId: (NSString*) attachmentId
        completionHandler: (void (^)(OAIAttachmentMetaData* output, NSError* error)) handler;
```

Get email attachment metadata information

Returns the metadata for an attachment. It is saved separately to the content of the attachment. Contains properties `name` and `content-type` and `content-length` in bytes for a given attachment.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* attachmentId = @"attachmentId_example"; // ID of attachment

OAIAttachmentControllerApi*apiInstance = [[OAIAttachmentControllerApi alloc] init];

// Get email attachment metadata information
[apiInstance getAttachmentInfoWithAttachmentId:attachmentId
          completionHandler: ^(OAIAttachmentMetaData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAttachmentControllerApi->getAttachmentInfo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **NSString***| ID of attachment | 

### Return type

[**OAIAttachmentMetaData***](OAIAttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAttachments**
```objc
-(NSURLSessionTask*) getAttachmentsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    fileNameFilter: (NSString*) fileNameFilter
    since: (NSDate*) since
    before: (NSDate*) before
    inboxId: (NSString*) inboxId
    emailId: (NSString*) emailId
    sentEmailId: (NSString*) sentEmailId
        completionHandler: (void (^)(OAIPageAttachmentEntity* output, NSError* error)) handler;
```

Get email attachments

Get all attachments in paginated response. Each entity contains meta data for the attachment such as `name` and `content-type`. Use the `attachmentId` and the download endpoints to get the file contents.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index for list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size for list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSString* fileNameFilter = @"fileNameFilter_example"; // Optional file name and content type search filter (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSString* inboxId = @"inboxId_example"; // Optional inboxId to filter attachments by (optional)
NSString* emailId = @"emailId_example"; // Optional emailId to filter attachments by (optional)
NSString* sentEmailId = @"sentEmailId_example"; // Optional sentEmailId to filter attachments by (optional)

OAIAttachmentControllerApi*apiInstance = [[OAIAttachmentControllerApi alloc] init];

// Get email attachments
[apiInstance getAttachmentsWithPage:page
              size:size
              sort:sort
              fileNameFilter:fileNameFilter
              since:since
              before:before
              inboxId:inboxId
              emailId:emailId
              sentEmailId:sentEmailId
          completionHandler: ^(OAIPageAttachmentEntity* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAttachmentControllerApi->getAttachments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index for list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size for list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **fileNameFilter** | **NSString***| Optional file name and content type search filter | [optional] 
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **inboxId** | [**NSString***]()| Optional inboxId to filter attachments by | [optional] 
 **emailId** | [**NSString***]()| Optional emailId to filter attachments by | [optional] 
 **sentEmailId** | [**NSString***]()| Optional sentEmailId to filter attachments by | [optional] 

### Return type

[**OAIPageAttachmentEntity***](OAIPageAttachmentEntity)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **uploadAttachment**
```objc
-(NSURLSessionTask*) uploadAttachmentWithUploadAttachmentOptions: (OAIUploadAttachmentOptions*) uploadAttachmentOptions
        completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler;
```

Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIUploadAttachmentOptions* uploadAttachmentOptions = [[OAIUploadAttachmentOptions alloc] init]; // 

OAIAttachmentControllerApi*apiInstance = [[OAIAttachmentControllerApi alloc] init];

// Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
[apiInstance uploadAttachmentWithUploadAttachmentOptions:uploadAttachmentOptions
          completionHandler: ^(NSArray<NSString*>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAttachmentControllerApi->uploadAttachment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uploadAttachmentOptions** | [**OAIUploadAttachmentOptions***](OAIUploadAttachmentOptions)|  | 

### Return type

**NSArray<NSString*>***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **uploadAttachmentBytes**
```objc
-(NSURLSessionTask*) uploadAttachmentBytesWithContentType: (NSString*) contentType
    contentType2: (NSString*) contentType2
    contentId: (NSString*) contentId
    filename: (NSString*) filename
    fileSize: (NSNumber*) fileSize
    filename2: (NSString*) filename2
        completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler;
```

Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* contentType = @"contentType_example"; //  (optional)
NSString* contentType2 = @"contentType_example"; // Optional contentType for file. For instance `application/pdf` (optional)
NSString* contentId = @"contentId_example"; // Optional content ID (CID) to save upload with (optional)
NSString* filename = @"filename_example"; // Optional filename to save upload with (optional)
NSNumber* fileSize = @56; // Optional byte length to save upload with (optional)
NSString* filename2 = @"filename_example"; //  (optional)

OAIAttachmentControllerApi*apiInstance = [[OAIAttachmentControllerApi alloc] init];

// Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
[apiInstance uploadAttachmentBytesWithContentType:contentType
              contentType2:contentType2
              contentId:contentId
              filename:filename
              fileSize:fileSize
              filename2:filename2
          completionHandler: ^(NSArray<NSString*>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAttachmentControllerApi->uploadAttachmentBytes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **NSString***|  | [optional] 
 **contentType2** | **NSString***| Optional contentType for file. For instance &#x60;application/pdf&#x60; | [optional] 
 **contentId** | **NSString***| Optional content ID (CID) to save upload with | [optional] 
 **filename** | **NSString***| Optional filename to save upload with | [optional] 
 **fileSize** | **NSNumber***| Optional byte length to save upload with | [optional] 
 **filename2** | **NSString***|  | [optional] 

### Return type

**NSArray<NSString*>***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **uploadMultipartForm**
```objc
-(NSURLSessionTask*) uploadMultipartFormWithContentId: (NSString*) contentId
    contentType: (NSString*) contentType
    filename: (NSString*) filename
    contentTypeHeader: (NSString*) contentTypeHeader
    xFilename: (NSString*) xFilename
    xFilenameRaw: (NSString*) xFilenameRaw
    xFilesize: (NSNumber*) xFilesize
    inlineObject: (OAIInlineObject*) inlineObject
        completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler;
```

Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* contentId = @"contentId_example"; // Optional content ID of attachment (optional)
NSString* contentType = @"contentType_example"; // Optional content type of attachment (optional)
NSString* filename = @"filename_example"; // Optional name of file (optional)
NSString* contentTypeHeader = @"contentTypeHeader_example"; // Optional content type header of attachment (optional)
NSString* xFilename = @"xFilename_example"; // Optional filename header of attachment (optional)
NSString* xFilenameRaw = @"xFilenameRaw_example"; // Optional raw filename header of attachment that will be converted to punycode (optional)
NSNumber* xFilesize = @56; // Optional content size of attachment (optional)
OAIInlineObject* inlineObject = [[OAIInlineObject alloc] init]; //  (optional)

OAIAttachmentControllerApi*apiInstance = [[OAIAttachmentControllerApi alloc] init];

// Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
[apiInstance uploadMultipartFormWithContentId:contentId
              contentType:contentType
              filename:filename
              contentTypeHeader:contentTypeHeader
              xFilename:xFilename
              xFilenameRaw:xFilenameRaw
              xFilesize:xFilesize
              inlineObject:inlineObject
          completionHandler: ^(NSArray<NSString*>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAttachmentControllerApi->uploadMultipartForm: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentId** | **NSString***| Optional content ID of attachment | [optional] 
 **contentType** | **NSString***| Optional content type of attachment | [optional] 
 **filename** | **NSString***| Optional name of file | [optional] 
 **contentTypeHeader** | **NSString***| Optional content type header of attachment | [optional] 
 **xFilename** | **NSString***| Optional filename header of attachment | [optional] 
 **xFilenameRaw** | **NSString***| Optional raw filename header of attachment that will be converted to punycode | [optional] 
 **xFilesize** | **NSNumber***| Optional content size of attachment | [optional] 
 **inlineObject** | [**OAIInlineObject***](OAIInlineObject)|  | [optional] 

### Return type

**NSArray<NSString*>***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

