# OAIBulkActionsControllerApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkCreateInboxes**](OAIBulkActionsControllerApi#bulkcreateinboxes) | **POST** /bulk/inboxes | Bulk create Inboxes (email addresses)
[**bulkDeleteInboxes**](OAIBulkActionsControllerApi#bulkdeleteinboxes) | **DELETE** /bulk/inboxes | Bulk Delete Inboxes
[**bulkSendEmails**](OAIBulkActionsControllerApi#bulksendemails) | **POST** /bulk/send | Bulk Send Emails


# **bulkCreateInboxes**
```objc
-(NSURLSessionTask*) bulkCreateInboxesWithCount: (NSNumber*) count
        completionHandler: (void (^)(NSArray<OAIInboxDto>* output, NSError* error)) handler;
```

Bulk create Inboxes (email addresses)

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* count = @56; // Number of inboxes to be created in bulk

OAIBulkActionsControllerApi*apiInstance = [[OAIBulkActionsControllerApi alloc] init];

// Bulk create Inboxes (email addresses)
[apiInstance bulkCreateInboxesWithCount:count
          completionHandler: ^(NSArray<OAIInboxDto>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBulkActionsControllerApi->bulkCreateInboxes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **NSNumber***| Number of inboxes to be created in bulk | 

### Return type

[**NSArray<OAIInboxDto>***](OAIInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **bulkDeleteInboxes**
```objc
-(NSURLSessionTask*) bulkDeleteInboxesWithRequestBody: (NSArray<NSString*>*) requestBody
        completionHandler: (void (^)(NSError* error)) handler;
```

Bulk Delete Inboxes

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSArray<NSString*>* requestBody = @[@"requestBody_example"]; // 

OAIBulkActionsControllerApi*apiInstance = [[OAIBulkActionsControllerApi alloc] init];

// Bulk Delete Inboxes
[apiInstance bulkDeleteInboxesWithRequestBody:requestBody
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIBulkActionsControllerApi->bulkDeleteInboxes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**NSArray&lt;NSString*&gt;***](NSString)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **bulkSendEmails**
```objc
-(NSURLSessionTask*) bulkSendEmailsWithBulkSendEmailOptions: (OAIBulkSendEmailOptions*) bulkSendEmailOptions
        completionHandler: (void (^)(NSError* error)) handler;
```

Bulk Send Emails

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIBulkSendEmailOptions* bulkSendEmailOptions = [[OAIBulkSendEmailOptions alloc] init]; // 

OAIBulkActionsControllerApi*apiInstance = [[OAIBulkActionsControllerApi alloc] init];

// Bulk Send Emails
[apiInstance bulkSendEmailsWithBulkSendEmailOptions:bulkSendEmailOptions
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIBulkActionsControllerApi->bulkSendEmails: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkSendEmailOptions** | [**OAIBulkSendEmailOptions***](OAIBulkSendEmailOptions)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

