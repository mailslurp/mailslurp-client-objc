# OAIAttachmentControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uploadAttachment**](OAIAttachmentControllerApi.md#uploadattachment) | **POST** /attachments | Upload an attachment for sending
[**uploadMultipartForm**](OAIAttachmentControllerApi.md#uploadmultipartform) | **POST** /attachments/multipart | Upload an attachment for sending using Multipart Form


# **uploadAttachment**
```objc
-(NSURLSessionTask*) uploadAttachmentWithUploadOptions: (OAIUploadAttachmentOptions*) uploadOptions
        completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler;
```

Upload an attachment for sending

When sending emails with attachments first upload each attachment with this endpoint. Record the returned attachment IDs. Then use these attachment IDs in the SendEmailOptions when sending an email. This means that attachments can easily be reused.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIUploadAttachmentOptions* uploadOptions = [[OAIUploadAttachmentOptions alloc] init]; // uploadOptions

OAIAttachmentControllerApi*apiInstance = [[OAIAttachmentControllerApi alloc] init];

// Upload an attachment for sending
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
 **uploadOptions** | [**OAIUploadAttachmentOptions***](OAIUploadAttachmentOptions.md)| uploadOptions | 

### Return type

**NSArray<NSString*>***

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadMultipartForm**
```objc
-(NSURLSessionTask*) uploadMultipartFormWithFile: (NSURL*) file
    contentType: (NSString*) contentType
    filename: (NSString*) filename
    xFilename: (NSString*) xFilename
        completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler;
```

Upload an attachment for sending using Multipart Form

When sending emails with attachments first upload each attachment with this endpoint. Record the returned attachment IDs. Then use these attachment IDs in the SendEmailOptions when sending an email. This means that attachments can easily be reused.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSURL* file = [NSURL fileURLWithPath:@"/path/to/file"]; // file
NSString* contentType = @"contentType_example"; // contentType (optional)
NSString* filename = @"filename_example"; // filename (optional)
NSString* xFilename = @"xFilename_example"; // x-filename (optional)

OAIAttachmentControllerApi*apiInstance = [[OAIAttachmentControllerApi alloc] init];

// Upload an attachment for sending using Multipart Form
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
 **contentType** | **NSString***| contentType | [optional] 
 **filename** | **NSString***| filename | [optional] 
 **xFilename** | **NSString***| x-filename | [optional] 

### Return type

**NSArray<NSString*>***

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

