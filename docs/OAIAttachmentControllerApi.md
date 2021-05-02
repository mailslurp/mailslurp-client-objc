# OAIAttachmentControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downloadAttachmentAsBase64Encoded**](OAIAttachmentControllerApi#downloadattachmentasbase64encoded) | **GET** /attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string (alternative to binary responses). To read the content decode the Base64 encoded contents.
[**downloadAttachmentAsBytes**](OAIAttachmentControllerApi#downloadattachmentasbytes) | **GET** /attachments/{attachmentId}/bytes | Download attachments. Get email attachment bytes. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints.
[**getAttachmentInfo**](OAIAttachmentControllerApi#getattachmentinfo) | **GET** /attachments/{attachmentId}/metadata | Get email attachment metadata information
[**uploadAttachment**](OAIAttachmentControllerApi#uploadattachment) | **POST** /attachments | Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
[**uploadAttachmentBytes**](OAIAttachmentControllerApi#uploadattachmentbytes) | **POST** /attachments/bytes | Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
[**uploadMultipartForm**](OAIAttachmentControllerApi#uploadmultipartform) | **POST** /attachments/multipart | Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.


# **downloadAttachmentAsBase64Encoded**
```objc
-(NSURLSessionTask*) downloadAttachmentAsBase64EncodedWithAttachmentId: (NSString*) attachmentId
        completionHandler: (void (^)(OAIDownloadAttachmentDto* output, NSError* error)) handler;
```

Get email attachment as base64 encoded string (alternative to binary responses). To read the content decode the Base64 encoded contents.

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

// Get email attachment as base64 encoded string (alternative to binary responses). To read the content decode the Base64 encoded contents.
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
 - **Accept**: application/json

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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **uploadAttachment**
```objc
-(NSURLSessionTask*) uploadAttachmentWithUploadOptions: (OAIUploadAttachmentOptions*) uploadOptions
        completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler;
```

Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.

Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIUploadAttachmentOptions* uploadOptions = [[OAIUploadAttachmentOptions alloc] init]; // uploadOptions

OAIAttachmentControllerApi*apiInstance = [[OAIAttachmentControllerApi alloc] init];

// Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
[apiInstance uploadAttachmentWithUploadOptions:uploadOptions
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
 **uploadOptions** | [**OAIUploadAttachmentOptions***](OAIUploadAttachmentOptions)| uploadOptions | 

### Return type

**NSArray<NSString*>***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **uploadAttachmentBytes**
```objc
-(NSURLSessionTask*) uploadAttachmentBytesWithString: (NSString*) string
    filename: (NSString*) filename
    byteArray: (NSData*) byteArray
        completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler;
```

Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.

Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* string = @"string_example"; // Optional contentType for file. For instance `application/pdf` (optional)
NSString* filename = @"filename_example"; // Optional filename to save upload with (optional)
NSData* byteArray = 1234; // Byte array request body (optional)

OAIAttachmentControllerApi*apiInstance = [[OAIAttachmentControllerApi alloc] init];

// Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
[apiInstance uploadAttachmentBytesWithString:string
              filename:filename
              byteArray:byteArray
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
 **string** | **NSString***| Optional contentType for file. For instance &#x60;application/pdf&#x60; | [optional] 
 **filename** | **NSString***| Optional filename to save upload with | [optional] 
 **byteArray** | **NSData***| Byte array request body | [optional] 

### Return type

**NSArray<NSString*>***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **uploadMultipartForm**
```objc
-(NSURLSessionTask*) uploadMultipartFormWithFile: (NSURL*) file
    contentType: (NSString*) contentType
    filename: (NSString*) filename
    xFilename: (NSString*) xFilename
        completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler;
```

Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.

Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSURL* file = [NSURL fileURLWithPath:@"/path/to/file"]; // file
NSString* contentType = @"contentType_example"; // Optional content type of attachment (optional)
NSString* filename = @"filename_example"; // Optional name of file (optional)
NSString* xFilename = @"xFilename_example"; // Optional content type header of attachment (optional)

OAIAttachmentControllerApi*apiInstance = [[OAIAttachmentControllerApi alloc] init];

// Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
[apiInstance uploadMultipartFormWithFile:file
              contentType:contentType
              filename:filename
              xFilename:xFilename
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
 **file** | **NSURL*****NSURL***| file | 
 **contentType** | **NSString***| Optional content type of attachment | [optional] 
 **filename** | **NSString***| Optional name of file | [optional] 
 **xFilename** | **NSString***| Optional content type header of attachment | [optional] 

### Return type

**NSArray<NSString*>***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

