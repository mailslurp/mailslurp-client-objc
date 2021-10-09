# OAIInboxForwarderControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewInboxForwarder**](OAIInboxForwarderControllerApi#createnewinboxforwarder) | **POST** /forwarders | Create an inbox forwarder
[**deleteInboxForwarder**](OAIInboxForwarderControllerApi#deleteinboxforwarder) | **DELETE** /forwarders/{id} | Delete an inbox forwarder
[**deleteInboxForwarders**](OAIInboxForwarderControllerApi#deleteinboxforwarders) | **DELETE** /forwarders | Delete inbox forwarders
[**getInboxForwarder**](OAIInboxForwarderControllerApi#getinboxforwarder) | **GET** /forwarders/{id} | Get an inbox forwarder
[**getInboxForwarders**](OAIInboxForwarderControllerApi#getinboxforwarders) | **GET** /forwarders | List inbox forwarders
[**testInboxForwarder**](OAIInboxForwarderControllerApi#testinboxforwarder) | **POST** /forwarders/{id}/test | Test an inbox forwarder
[**testInboxForwardersForInbox**](OAIInboxForwarderControllerApi#testinboxforwardersforinbox) | **PUT** /forwarders | Test inbox forwarders for inbox
[**testNewInboxForwarder**](OAIInboxForwarderControllerApi#testnewinboxforwarder) | **PATCH** /forwarders | Test new inbox forwarder


# **createNewInboxForwarder**
```objc
-(NSURLSessionTask*) createNewInboxForwarderWithCreateInboxForwarderOptions: (OAICreateInboxForwarderOptions*) createInboxForwarderOptions
    inboxId: (NSString*) inboxId
        completionHandler: (void (^)(OAIInboxForwarderDto* output, NSError* error)) handler;
```

Create an inbox forwarder

Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateInboxForwarderOptions* createInboxForwarderOptions = [[OAICreateInboxForwarderOptions alloc] init]; // createInboxForwarderOptions
NSString* inboxId = @"inboxId_example"; // Inbox id to attach forwarder to (optional)

OAIInboxForwarderControllerApi*apiInstance = [[OAIInboxForwarderControllerApi alloc] init];

// Create an inbox forwarder
[apiInstance createNewInboxForwarderWithCreateInboxForwarderOptions:createInboxForwarderOptions
              inboxId:inboxId
          completionHandler: ^(OAIInboxForwarderDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxForwarderControllerApi->createNewInboxForwarder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createInboxForwarderOptions** | [**OAICreateInboxForwarderOptions***](OAICreateInboxForwarderOptions)| createInboxForwarderOptions | 
 **inboxId** | [**NSString***]()| Inbox id to attach forwarder to | [optional] 

### Return type

[**OAIInboxForwarderDto***](OAIInboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInboxForwarder**
```objc
-(NSURLSessionTask*) deleteInboxForwarderWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete an inbox forwarder

Delete inbox forwarder

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of inbox forwarder

OAIInboxForwarderControllerApi*apiInstance = [[OAIInboxForwarderControllerApi alloc] init];

// Delete an inbox forwarder
[apiInstance deleteInboxForwarderWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIInboxForwarderControllerApi->deleteInboxForwarder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of inbox forwarder | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInboxForwarders**
```objc
-(NSURLSessionTask*) deleteInboxForwardersWithInboxId: (NSString*) inboxId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete inbox forwarders

Delete inbox forwarders. Accepts optional inboxId filter.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // Optional inbox id to attach forwarder to (optional)

OAIInboxForwarderControllerApi*apiInstance = [[OAIInboxForwarderControllerApi alloc] init];

// Delete inbox forwarders
[apiInstance deleteInboxForwardersWithInboxId:inboxId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIInboxForwarderControllerApi->deleteInboxForwarders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| Optional inbox id to attach forwarder to | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxForwarder**
```objc
-(NSURLSessionTask*) getInboxForwarderWithId: (NSString*) _id
        completionHandler: (void (^)(OAIInboxForwarderDto* output, NSError* error)) handler;
```

Get an inbox forwarder

Get inbox ruleset

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of inbox forwarder

OAIInboxForwarderControllerApi*apiInstance = [[OAIInboxForwarderControllerApi alloc] init];

// Get an inbox forwarder
[apiInstance getInboxForwarderWithId:_id
          completionHandler: ^(OAIInboxForwarderDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxForwarderControllerApi->getInboxForwarder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of inbox forwarder | 

### Return type

[**OAIInboxForwarderDto***](OAIInboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxForwarders**
```objc
-(NSURLSessionTask*) getInboxForwardersWithBefore: (NSDate*) before
    inboxId: (NSString*) inboxId
    page: (NSNumber*) page
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageInboxForwarderDto* output, NSError* error)) handler;
```

List inbox forwarders

List all forwarders attached to an inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSString* inboxId = @"inboxId_example"; // Optional inbox id to get forwarders from (optional)
NSNumber* page = @0; // Optional page index in inbox forwarder list pagination (optional) (default to @0)
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSNumber* size = @20; // Optional page size in inbox forwarder list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIInboxForwarderControllerApi*apiInstance = [[OAIInboxForwarderControllerApi alloc] init];

// List inbox forwarders
[apiInstance getInboxForwardersWithBefore:before
              inboxId:inboxId
              page:page
              searchFilter:searchFilter
              since:since
              size:size
              sort:sort
          completionHandler: ^(OAIPageInboxForwarderDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxForwarderControllerApi->getInboxForwarders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **inboxId** | [**NSString***]()| Optional inbox id to get forwarders from | [optional] 
 **page** | **NSNumber***| Optional page index in inbox forwarder list pagination | [optional] [default to @0]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **size** | **NSNumber***| Optional page size in inbox forwarder list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageInboxForwarderDto***](OAIPageInboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testInboxForwarder**
```objc
-(NSURLSessionTask*) testInboxForwarderWithId: (NSString*) _id
    inboxForwarderTestOptions: (OAIInboxForwarderTestOptions*) inboxForwarderTestOptions
        completionHandler: (void (^)(OAIInboxForwarderTestResult* output, NSError* error)) handler;
```

Test an inbox forwarder

Test an inbox forwarder

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of inbox forwarder
OAIInboxForwarderTestOptions* inboxForwarderTestOptions = [[OAIInboxForwarderTestOptions alloc] init]; // inboxForwarderTestOptions

OAIInboxForwarderControllerApi*apiInstance = [[OAIInboxForwarderControllerApi alloc] init];

// Test an inbox forwarder
[apiInstance testInboxForwarderWithId:_id
              inboxForwarderTestOptions:inboxForwarderTestOptions
          completionHandler: ^(OAIInboxForwarderTestResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxForwarderControllerApi->testInboxForwarder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of inbox forwarder | 
 **inboxForwarderTestOptions** | [**OAIInboxForwarderTestOptions***](OAIInboxForwarderTestOptions)| inboxForwarderTestOptions | 

### Return type

[**OAIInboxForwarderTestResult***](OAIInboxForwarderTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testInboxForwardersForInbox**
```objc
-(NSURLSessionTask*) testInboxForwardersForInboxWithInboxId: (NSString*) inboxId
    inboxForwarderTestOptions: (OAIInboxForwarderTestOptions*) inboxForwarderTestOptions
        completionHandler: (void (^)(OAIInboxForwarderTestResult* output, NSError* error)) handler;
```

Test inbox forwarders for inbox

Test inbox forwarders for inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // ID of inbox
OAIInboxForwarderTestOptions* inboxForwarderTestOptions = [[OAIInboxForwarderTestOptions alloc] init]; // inboxForwarderTestOptions

OAIInboxForwarderControllerApi*apiInstance = [[OAIInboxForwarderControllerApi alloc] init];

// Test inbox forwarders for inbox
[apiInstance testInboxForwardersForInboxWithInboxId:inboxId
              inboxForwarderTestOptions:inboxForwarderTestOptions
          completionHandler: ^(OAIInboxForwarderTestResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxForwarderControllerApi->testInboxForwardersForInbox: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| ID of inbox | 
 **inboxForwarderTestOptions** | [**OAIInboxForwarderTestOptions***](OAIInboxForwarderTestOptions)| inboxForwarderTestOptions | 

### Return type

[**OAIInboxForwarderTestResult***](OAIInboxForwarderTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testNewInboxForwarder**
```objc
-(NSURLSessionTask*) testNewInboxForwarderWithTestNewInboxForwarderOptions: (OAITestNewInboxForwarderOptions*) testNewInboxForwarderOptions
        completionHandler: (void (^)(OAIInboxForwarderTestResult* output, NSError* error)) handler;
```

Test new inbox forwarder

Test new inbox forwarder

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAITestNewInboxForwarderOptions* testNewInboxForwarderOptions = [[OAITestNewInboxForwarderOptions alloc] init]; // testNewInboxForwarderOptions

OAIInboxForwarderControllerApi*apiInstance = [[OAIInboxForwarderControllerApi alloc] init];

// Test new inbox forwarder
[apiInstance testNewInboxForwarderWithTestNewInboxForwarderOptions:testNewInboxForwarderOptions
          completionHandler: ^(OAIInboxForwarderTestResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxForwarderControllerApi->testNewInboxForwarder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testNewInboxForwarderOptions** | [**OAITestNewInboxForwarderOptions***](OAITestNewInboxForwarderOptions)| testNewInboxForwarderOptions | 

### Return type

[**OAIInboxForwarderTestResult***](OAIInboxForwarderTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

