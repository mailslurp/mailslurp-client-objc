# OAIImapControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**imapServerFetch**](OAIImapControllerApi#imapserverfetch) | **POST** /imap/server/fetch | Fetch message in an inbox
[**imapServerGet**](OAIImapControllerApi#imapserverget) | **POST** /imap/server/get | Get a message by email ID
[**imapServerList**](OAIImapControllerApi#imapserverlist) | **POST** /imap/server/list | List messages in an inbox
[**imapServerSearch**](OAIImapControllerApi#imapserversearch) | **POST** /imap/server/search | Search messages in an inbox
[**imapServerStatus**](OAIImapControllerApi#imapserverstatus) | **POST** /imap/server/status | Get status for mailbox
[**imapServerUpdateFlags**](OAIImapControllerApi#imapserverupdateflags) | **POST** /imap/server/update-flags | 


# **imapServerFetch**
```objc
-(NSURLSessionTask*) imapServerFetchWithSeqNum: (NSNumber*) seqNum
    inboxId: (NSString*) inboxId
        completionHandler: (void (^)(OAIImapServerFetchResult* output, NSError* error)) handler;
```

Fetch message in an inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* seqNum = @56; // 
NSString* inboxId = @"inboxId_example"; // Inbox ID to search (optional)

OAIImapControllerApi*apiInstance = [[OAIImapControllerApi alloc] init];

// Fetch message in an inbox
[apiInstance imapServerFetchWithSeqNum:seqNum
              inboxId:inboxId
          completionHandler: ^(OAIImapServerFetchResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIImapControllerApi->imapServerFetch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seqNum** | **NSNumber***|  | 
 **inboxId** | [**NSString***]()| Inbox ID to search | [optional] 

### Return type

[**OAIImapServerFetchResult***](OAIImapServerFetchResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **imapServerGet**
```objc
-(NSURLSessionTask*) imapServerGetWithEmailId: (NSString*) emailId
    inboxId: (NSString*) inboxId
        completionHandler: (void (^)(OAIImapServerGetResult* output, NSError* error)) handler;
```

Get a message by email ID

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // Email ID to get
NSString* inboxId = @"inboxId_example"; // Inbox ID to search (optional)

OAIImapControllerApi*apiInstance = [[OAIImapControllerApi alloc] init];

// Get a message by email ID
[apiInstance imapServerGetWithEmailId:emailId
              inboxId:inboxId
          completionHandler: ^(OAIImapServerGetResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIImapControllerApi->imapServerGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| Email ID to get | 
 **inboxId** | [**NSString***]()| Inbox ID to search | [optional] 

### Return type

[**OAIImapServerGetResult***](OAIImapServerGetResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **imapServerList**
```objc
-(NSURLSessionTask*) imapServerListWithImapServerListOptions: (OAIImapServerListOptions*) imapServerListOptions
    inboxId: (NSString*) inboxId
        completionHandler: (void (^)(OAIImapServerListResult* output, NSError* error)) handler;
```

List messages in an inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIImapServerListOptions* imapServerListOptions = [[OAIImapServerListOptions alloc] init]; // 
NSString* inboxId = @"inboxId_example"; // Inbox ID to list (optional)

OAIImapControllerApi*apiInstance = [[OAIImapControllerApi alloc] init];

// List messages in an inbox
[apiInstance imapServerListWithImapServerListOptions:imapServerListOptions
              inboxId:inboxId
          completionHandler: ^(OAIImapServerListResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIImapControllerApi->imapServerList: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imapServerListOptions** | [**OAIImapServerListOptions***](OAIImapServerListOptions)|  | 
 **inboxId** | [**NSString***]()| Inbox ID to list | [optional] 

### Return type

[**OAIImapServerListResult***](OAIImapServerListResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **imapServerSearch**
```objc
-(NSURLSessionTask*) imapServerSearchWithImapServerSearchOptions: (OAIImapServerSearchOptions*) imapServerSearchOptions
    inboxId: (NSString*) inboxId
        completionHandler: (void (^)(OAIImapServerSearchResult* output, NSError* error)) handler;
```

Search messages in an inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIImapServerSearchOptions* imapServerSearchOptions = [[OAIImapServerSearchOptions alloc] init]; // 
NSString* inboxId = @"inboxId_example"; // Inbox ID to search (optional)

OAIImapControllerApi*apiInstance = [[OAIImapControllerApi alloc] init];

// Search messages in an inbox
[apiInstance imapServerSearchWithImapServerSearchOptions:imapServerSearchOptions
              inboxId:inboxId
          completionHandler: ^(OAIImapServerSearchResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIImapControllerApi->imapServerSearch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imapServerSearchOptions** | [**OAIImapServerSearchOptions***](OAIImapServerSearchOptions)|  | 
 **inboxId** | [**NSString***]()| Inbox ID to search | [optional] 

### Return type

[**OAIImapServerSearchResult***](OAIImapServerSearchResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **imapServerStatus**
```objc
-(NSURLSessionTask*) imapServerStatusWithImapServerStatusOptions: (OAIImapServerStatusOptions*) imapServerStatusOptions
    inboxId: (NSString*) inboxId
        completionHandler: (void (^)(OAIImapServerStatusResult* output, NSError* error)) handler;
```

Get status for mailbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIImapServerStatusOptions* imapServerStatusOptions = [[OAIImapServerStatusOptions alloc] init]; // 
NSString* inboxId = @"inboxId_example"; // Inbox ID to list (optional)

OAIImapControllerApi*apiInstance = [[OAIImapControllerApi alloc] init];

// Get status for mailbox
[apiInstance imapServerStatusWithImapServerStatusOptions:imapServerStatusOptions
              inboxId:inboxId
          completionHandler: ^(OAIImapServerStatusResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIImapControllerApi->imapServerStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imapServerStatusOptions** | [**OAIImapServerStatusOptions***](OAIImapServerStatusOptions)|  | 
 **inboxId** | [**NSString***]()| Inbox ID to list | [optional] 

### Return type

[**OAIImapServerStatusResult***](OAIImapServerStatusResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **imapServerUpdateFlags**
```objc
-(NSURLSessionTask*) imapServerUpdateFlagsWithImapUpdateFlagsOptions: (OAIImapUpdateFlagsOptions*) imapUpdateFlagsOptions
    inboxId: (NSString*) inboxId
        completionHandler: (void (^)(NSError* error)) handler;
```



Update message flags

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIImapUpdateFlagsOptions* imapUpdateFlagsOptions = [[OAIImapUpdateFlagsOptions alloc] init]; // 
NSString* inboxId = @"inboxId_example"; //  (optional)

OAIImapControllerApi*apiInstance = [[OAIImapControllerApi alloc] init];

[apiInstance imapServerUpdateFlagsWithImapUpdateFlagsOptions:imapUpdateFlagsOptions
              inboxId:inboxId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIImapControllerApi->imapServerUpdateFlags: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imapUpdateFlagsOptions** | [**OAIImapUpdateFlagsOptions***](OAIImapUpdateFlagsOptions)|  | 
 **inboxId** | [**NSString***]()|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

