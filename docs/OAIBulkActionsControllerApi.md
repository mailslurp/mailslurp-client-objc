# OAIBulkActionsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkCreateInboxes**](OAIBulkActionsControllerApi#bulkcreateinboxes) | **POST** /bulk/inboxes | Bulk create Inboxes (email addresses)
[**bulkDeleteInboxes**](OAIBulkActionsControllerApi#bulkdeleteinboxes) | **DELETE** /bulk/inboxes | Bulk Delete Inboxes
[**bulkSendEmails**](OAIBulkActionsControllerApi#bulksendemails) | **POST** /bulk/send | Bulk Send Emails


# **bulkCreateInboxes**
```objc
-(NSURLSessionTask*) bulkCreateInboxesWithCount: (NSNumber*) count
        completionHandler: (void (^)(NSArray<OAIInbox>* output, NSError* error)) handler;
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
          completionHandler: ^(NSArray<OAIInbox>* output, NSError* error) {
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

[**NSArray<OAIInbox>***](OAIInbox)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **bulkDeleteInboxes**
```objc
-(NSURLSessionTask*) bulkDeleteInboxesWithIds: (NSArray<NSString*>*) ids
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


NSArray<NSString*>* ids = @[@"ids_example"]; // ids

OAIBulkActionsControllerApi*apiInstance = [[OAIBulkActionsControllerApi alloc] init];

// Bulk Delete Inboxes
[apiInstance bulkDeleteInboxesWithIds:ids
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIBulkActionsControllerApi->bulkDeleteInboxes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**NSArray&lt;NSString*&gt;***](NSString)| ids | 

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


OAIBulkSendEmailOptions* bulkSendEmailOptions = [[OAIBulkSendEmailOptions alloc] init]; // bulkSendEmailOptions

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
 **bulkSendEmailOptions** | [**OAIBulkSendEmailOptions***](OAIBulkSendEmailOptions)| bulkSendEmailOptions | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

