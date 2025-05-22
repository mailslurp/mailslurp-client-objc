# OAIInboxForwarderControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewInboxForwarder**](OAIInboxForwarderControllerApi#createnewinboxforwarder) | **POST** /forwarders | Create an inbox forwarder
[**deleteInboxForwarder**](OAIInboxForwarderControllerApi#deleteinboxforwarder) | **DELETE** /forwarders/{id} | Delete an inbox forwarder
[**deleteInboxForwarders**](OAIInboxForwarderControllerApi#deleteinboxforwarders) | **DELETE** /forwarders | Delete inbox forwarders
[**getAllInboxForwarderEvents**](OAIInboxForwarderControllerApi#getallinboxforwarderevents) | **GET** /forwarders/events | Get all inbox forwarder events
[**getForwarderEvent**](OAIInboxForwarderControllerApi#getforwarderevent) | **GET** /forwarders/events/{eventId} | Get a forwarder event
[**getInboxForwarder**](OAIInboxForwarderControllerApi#getinboxforwarder) | **GET** /forwarders/{id} | Get an inbox forwarder
[**getInboxForwarderEvent**](OAIInboxForwarderControllerApi#getinboxforwarderevent) | **GET** /forwarders/{id}/events/{eventId} | Get an inbox forwarder event
[**getInboxForwarderEvents**](OAIInboxForwarderControllerApi#getinboxforwarderevents) | **GET** /forwarders/{id}/events | Get an inbox forwarder event list
[**getInboxForwarders**](OAIInboxForwarderControllerApi#getinboxforwarders) | **GET** /forwarders | List inbox forwarders
[**testInboxForwarder**](OAIInboxForwarderControllerApi#testinboxforwarder) | **POST** /forwarders/{id}/test | Test an inbox forwarder
[**testInboxForwardersForInbox**](OAIInboxForwarderControllerApi#testinboxforwardersforinbox) | **PUT** /forwarders | Test inbox forwarders for inbox
[**testNewInboxForwarder**](OAIInboxForwarderControllerApi#testnewinboxforwarder) | **PATCH** /forwarders | Test new inbox forwarder
[**updateInboxForwarder**](OAIInboxForwarderControllerApi#updateinboxforwarder) | **PUT** /forwarders/{id} | Update an inbox forwarder


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


OAICreateInboxForwarderOptions* createInboxForwarderOptions = [[OAICreateInboxForwarderOptions alloc] init]; // 
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
 **createInboxForwarderOptions** | [**OAICreateInboxForwarderOptions***](OAICreateInboxForwarderOptions)|  | 
 **inboxId** | [**NSString***]()| Inbox id to attach forwarder to | [optional] 

### Return type

[**OAIInboxForwarderDto***](OAIInboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

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

# **getAllInboxForwarderEvents**
```objc
-(NSURLSessionTask*) getAllInboxForwarderEventsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    inboxId: (NSString*) inboxId
    emailId: (NSString*) emailId
    sentId: (NSString*) sentId
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageInboxForwarderEvents* output, NSError* error)) handler;
```

Get all inbox forwarder events

Get all inbox forwarder events

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index in inbox forwarder event list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in inbox forwarder event list pagination (optional) (default to @20)
NSString* inboxId = @"inboxId_example"; // Optional inbox ID to filter for (optional)
NSString* emailId = @"emailId_example"; // Optional email ID to filter for (optional)
NSString* sentId = @"sentId_example"; // Optional sent ID to filter for (optional)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIInboxForwarderControllerApi*apiInstance = [[OAIInboxForwarderControllerApi alloc] init];

// Get all inbox forwarder events
[apiInstance getAllInboxForwarderEventsWithPage:page
              size:size
              inboxId:inboxId
              emailId:emailId
              sentId:sentId
              sort:sort
          completionHandler: ^(OAIPageInboxForwarderEvents* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxForwarderControllerApi->getAllInboxForwarderEvents: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index in inbox forwarder event list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in inbox forwarder event list pagination | [optional] [default to @20]
 **inboxId** | [**NSString***]()| Optional inbox ID to filter for | [optional] 
 **emailId** | [**NSString***]()| Optional email ID to filter for | [optional] 
 **sentId** | [**NSString***]()| Optional sent ID to filter for | [optional] 
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageInboxForwarderEvents***](OAIPageInboxForwarderEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getForwarderEvent**
```objc
-(NSURLSessionTask*) getForwarderEventWithEventId: (NSString*) eventId
        completionHandler: (void (^)(OAIInboxForwarderEventDto* output, NSError* error)) handler;
```

Get a forwarder event

Get forwarder event

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* eventId = @"eventId_example"; // ID of inbox forwarder event

OAIInboxForwarderControllerApi*apiInstance = [[OAIInboxForwarderControllerApi alloc] init];

// Get a forwarder event
[apiInstance getForwarderEventWithEventId:eventId
          completionHandler: ^(OAIInboxForwarderEventDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxForwarderControllerApi->getForwarderEvent: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventId** | [**NSString***]()| ID of inbox forwarder event | 

### Return type

[**OAIInboxForwarderEventDto***](OAIInboxForwarderEventDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxForwarder**
```objc
-(NSURLSessionTask*) getInboxForwarderWithId: (NSString*) _id
        completionHandler: (void (^)(OAIInboxForwarderDto* output, NSError* error)) handler;
```

Get an inbox forwarder

Get inbox forwarder

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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxForwarderEvent**
```objc
-(NSURLSessionTask*) getInboxForwarderEventWithId: (NSString*) _id
    eventId: (NSString*) eventId
        completionHandler: (void (^)(OAIInboxForwarderEventDto* output, NSError* error)) handler;
```

Get an inbox forwarder event

Get inbox forwarder event

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of inbox forwarder
NSString* eventId = @"eventId_example"; // ID of inbox forwarder event

OAIInboxForwarderControllerApi*apiInstance = [[OAIInboxForwarderControllerApi alloc] init];

// Get an inbox forwarder event
[apiInstance getInboxForwarderEventWithId:_id
              eventId:eventId
          completionHandler: ^(OAIInboxForwarderEventDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxForwarderControllerApi->getInboxForwarderEvent: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of inbox forwarder | 
 **eventId** | [**NSString***]()| ID of inbox forwarder event | 

### Return type

[**OAIInboxForwarderEventDto***](OAIInboxForwarderEventDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxForwarderEvents**
```objc
-(NSURLSessionTask*) getInboxForwarderEventsWithId: (NSString*) _id
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageInboxForwarderEvents* output, NSError* error)) handler;
```

Get an inbox forwarder event list

Get inbox forwarder events

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of inbox forwarder
NSNumber* page = @0; // Optional page index in inbox forwarder event list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in inbox forwarder event list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIInboxForwarderControllerApi*apiInstance = [[OAIInboxForwarderControllerApi alloc] init];

// Get an inbox forwarder event list
[apiInstance getInboxForwarderEventsWithId:_id
              page:page
              size:size
              sort:sort
          completionHandler: ^(OAIPageInboxForwarderEvents* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxForwarderControllerApi->getInboxForwarderEvents: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of inbox forwarder | 
 **page** | **NSNumber***| Optional page index in inbox forwarder event list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in inbox forwarder event list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageInboxForwarderEvents***](OAIPageInboxForwarderEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxForwarders**
```objc
-(NSURLSessionTask*) getInboxForwardersWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
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


NSString* inboxId = @"inboxId_example"; // Optional inbox id to get forwarders from (optional)
NSNumber* page = @0; // Optional page index in inbox forwarder list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in inbox forwarder list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAIInboxForwarderControllerApi*apiInstance = [[OAIInboxForwarderControllerApi alloc] init];

// List inbox forwarders
[apiInstance getInboxForwardersWithInboxId:inboxId
              page:page
              size:size
              sort:sort
              searchFilter:searchFilter
              since:since
              before:before
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
 **inboxId** | [**NSString***]()| Optional inbox id to get forwarders from | [optional] 
 **page** | **NSNumber***| Optional page index in inbox forwarder list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in inbox forwarder list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPageInboxForwarderDto***](OAIPageInboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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
OAIInboxForwarderTestOptions* inboxForwarderTestOptions = [[OAIInboxForwarderTestOptions alloc] init]; // 

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
 **inboxForwarderTestOptions** | [**OAIInboxForwarderTestOptions***](OAIInboxForwarderTestOptions)|  | 

### Return type

[**OAIInboxForwarderTestResult***](OAIInboxForwarderTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

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
OAIInboxForwarderTestOptions* inboxForwarderTestOptions = [[OAIInboxForwarderTestOptions alloc] init]; // 

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
 **inboxForwarderTestOptions** | [**OAIInboxForwarderTestOptions***](OAIInboxForwarderTestOptions)|  | 

### Return type

[**OAIInboxForwarderTestResult***](OAIInboxForwarderTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

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


OAITestNewInboxForwarderOptions* testNewInboxForwarderOptions = [[OAITestNewInboxForwarderOptions alloc] init]; // 

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
 **testNewInboxForwarderOptions** | [**OAITestNewInboxForwarderOptions***](OAITestNewInboxForwarderOptions)|  | 

### Return type

[**OAIInboxForwarderTestResult***](OAIInboxForwarderTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateInboxForwarder**
```objc
-(NSURLSessionTask*) updateInboxForwarderWithId: (NSString*) _id
    createInboxForwarderOptions: (OAICreateInboxForwarderOptions*) createInboxForwarderOptions
        completionHandler: (void (^)(OAIInboxForwarderDto* output, NSError* error)) handler;
```

Update an inbox forwarder

Update inbox forwarder

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of inbox forwarder
OAICreateInboxForwarderOptions* createInboxForwarderOptions = [[OAICreateInboxForwarderOptions alloc] init]; // 

OAIInboxForwarderControllerApi*apiInstance = [[OAIInboxForwarderControllerApi alloc] init];

// Update an inbox forwarder
[apiInstance updateInboxForwarderWithId:_id
              createInboxForwarderOptions:createInboxForwarderOptions
          completionHandler: ^(OAIInboxForwarderDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxForwarderControllerApi->updateInboxForwarder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of inbox forwarder | 
 **createInboxForwarderOptions** | [**OAICreateInboxForwarderOptions***](OAICreateInboxForwarderOptions)|  | 

### Return type

[**OAIInboxForwarderDto***](OAIInboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

