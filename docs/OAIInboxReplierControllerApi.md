# OAIInboxReplierControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewInboxReplier**](OAIInboxReplierControllerApi#createnewinboxreplier) | **POST** /repliers | Create an inbox replier
[**deleteInboxReplier**](OAIInboxReplierControllerApi#deleteinboxreplier) | **DELETE** /repliers/{id} | Delete an inbox replier
[**deleteInboxRepliers**](OAIInboxReplierControllerApi#deleteinboxrepliers) | **DELETE** /repliers | Delete inbox repliers
[**getInboxReplier**](OAIInboxReplierControllerApi#getinboxreplier) | **GET** /repliers/{id} | Get an inbox replier
[**getInboxReplierEvents**](OAIInboxReplierControllerApi#getinboxreplierevents) | **GET** /repliers/{id}/events | Get an inbox replier event list
[**getInboxRepliers**](OAIInboxReplierControllerApi#getinboxrepliers) | **GET** /repliers | List inbox repliers
[**updateInboxReplier**](OAIInboxReplierControllerApi#updateinboxreplier) | **PUT** /repliers/{id} | Update an inbox replier


# **createNewInboxReplier**
```objc
-(NSURLSessionTask*) createNewInboxReplierWithCreateInboxReplierOptions: (OAICreateInboxReplierOptions*) createInboxReplierOptions
        completionHandler: (void (^)(OAIInboxReplierDto* output, NSError* error)) handler;
```

Create an inbox replier

Create a new inbox rule for reply toing, blocking, and allowing emails when sending and receiving

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateInboxReplierOptions* createInboxReplierOptions = [[OAICreateInboxReplierOptions alloc] init]; // 

OAIInboxReplierControllerApi*apiInstance = [[OAIInboxReplierControllerApi alloc] init];

// Create an inbox replier
[apiInstance createNewInboxReplierWithCreateInboxReplierOptions:createInboxReplierOptions
          completionHandler: ^(OAIInboxReplierDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxReplierControllerApi->createNewInboxReplier: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createInboxReplierOptions** | [**OAICreateInboxReplierOptions***](OAICreateInboxReplierOptions)|  | 

### Return type

[**OAIInboxReplierDto***](OAIInboxReplierDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInboxReplier**
```objc
-(NSURLSessionTask*) deleteInboxReplierWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete an inbox replier

Delete inbox replier

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of inbox replier

OAIInboxReplierControllerApi*apiInstance = [[OAIInboxReplierControllerApi alloc] init];

// Delete an inbox replier
[apiInstance deleteInboxReplierWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIInboxReplierControllerApi->deleteInboxReplier: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of inbox replier | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInboxRepliers**
```objc
-(NSURLSessionTask*) deleteInboxRepliersWithInboxId: (NSString*) inboxId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete inbox repliers

Delete inbox repliers. Accepts optional inboxId filter.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // Optional inbox id to attach replier to (optional)

OAIInboxReplierControllerApi*apiInstance = [[OAIInboxReplierControllerApi alloc] init];

// Delete inbox repliers
[apiInstance deleteInboxRepliersWithInboxId:inboxId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIInboxReplierControllerApi->deleteInboxRepliers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| Optional inbox id to attach replier to | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxReplier**
```objc
-(NSURLSessionTask*) getInboxReplierWithId: (NSString*) _id
        completionHandler: (void (^)(OAIInboxReplierDto* output, NSError* error)) handler;
```

Get an inbox replier

Get inbox ruleset

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of inbox replier

OAIInboxReplierControllerApi*apiInstance = [[OAIInboxReplierControllerApi alloc] init];

// Get an inbox replier
[apiInstance getInboxReplierWithId:_id
          completionHandler: ^(OAIInboxReplierDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxReplierControllerApi->getInboxReplier: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of inbox replier | 

### Return type

[**OAIInboxReplierDto***](OAIInboxReplierDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxReplierEvents**
```objc
-(NSURLSessionTask*) getInboxReplierEventsWithId: (NSString*) _id
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageInboxReplierEvents* output, NSError* error)) handler;
```

Get an inbox replier event list

Get inbox ruleset events

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of inbox replier
NSNumber* page = @0; // Optional page index in inbox replier event list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in inbox replier event list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIInboxReplierControllerApi*apiInstance = [[OAIInboxReplierControllerApi alloc] init];

// Get an inbox replier event list
[apiInstance getInboxReplierEventsWithId:_id
              page:page
              size:size
              sort:sort
          completionHandler: ^(OAIPageInboxReplierEvents* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxReplierControllerApi->getInboxReplierEvents: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of inbox replier | 
 **page** | **NSNumber***| Optional page index in inbox replier event list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in inbox replier event list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageInboxReplierEvents***](OAIPageInboxReplierEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxRepliers**
```objc
-(NSURLSessionTask*) getInboxRepliersWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageInboxReplierDto* output, NSError* error)) handler;
```

List inbox repliers

List all repliers attached to an inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // Optional inbox id to get repliers from (optional)
NSNumber* page = @0; // Optional page index in inbox replier list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in inbox replier list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAIInboxReplierControllerApi*apiInstance = [[OAIInboxReplierControllerApi alloc] init];

// List inbox repliers
[apiInstance getInboxRepliersWithInboxId:inboxId
              page:page
              size:size
              sort:sort
              since:since
              before:before
          completionHandler: ^(OAIPageInboxReplierDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxReplierControllerApi->getInboxRepliers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()| Optional inbox id to get repliers from | [optional] 
 **page** | **NSNumber***| Optional page index in inbox replier list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in inbox replier list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPageInboxReplierDto***](OAIPageInboxReplierDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateInboxReplier**
```objc
-(NSURLSessionTask*) updateInboxReplierWithId: (NSString*) _id
    updateInboxReplierOptions: (OAIUpdateInboxReplierOptions*) updateInboxReplierOptions
        completionHandler: (void (^)(OAIInboxReplierDto* output, NSError* error)) handler;
```

Update an inbox replier

Update inbox ruleset

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of inbox replier
OAIUpdateInboxReplierOptions* updateInboxReplierOptions = [[OAIUpdateInboxReplierOptions alloc] init]; // 

OAIInboxReplierControllerApi*apiInstance = [[OAIInboxReplierControllerApi alloc] init];

// Update an inbox replier
[apiInstance updateInboxReplierWithId:_id
              updateInboxReplierOptions:updateInboxReplierOptions
          completionHandler: ^(OAIInboxReplierDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxReplierControllerApi->updateInboxReplier: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of inbox replier | 
 **updateInboxReplierOptions** | [**OAIUpdateInboxReplierOptions***](OAIUpdateInboxReplierOptions)|  | 

### Return type

[**OAIInboxReplierDto***](OAIInboxReplierDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

