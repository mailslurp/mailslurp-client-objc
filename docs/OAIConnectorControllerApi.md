# OAIConnectorControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createConnector**](OAIConnectorControllerApi#createconnector) | **POST** /connectors | Create an inbox connector
[**deleteAllConnector**](OAIConnectorControllerApi#deleteallconnector) | **DELETE** /connectors | Delete all inbox connectors
[**deleteConnector**](OAIConnectorControllerApi#deleteconnector) | **DELETE** /connectors/{id} | Delete an inbox connector
[**getAllConnectorSyncEvents**](OAIConnectorControllerApi#getallconnectorsyncevents) | **GET** /connectors/events | Get all inbox connector sync events
[**getConnector**](OAIConnectorControllerApi#getconnector) | **GET** /connectors/{id} | Get an inbox connector
[**getConnectorSyncEvent**](OAIConnectorControllerApi#getconnectorsyncevent) | **GET** /connectors/events/{id} | Get an inbox connector sync event
[**getConnectorSyncEvents**](OAIConnectorControllerApi#getconnectorsyncevents) | **GET** /connectors/{id}/events | Get an inbox connector sync events
[**getConnectors**](OAIConnectorControllerApi#getconnectors) | **GET** /connectors | Get inbox connectors
[**syncConnector**](OAIConnectorControllerApi#syncconnector) | **POST** /connectors/{id}/sync | Sync an inbox connector
[**updateConnector**](OAIConnectorControllerApi#updateconnector) | **PUT** /connectors/{id} | Update an inbox connector


# **createConnector**
```objc
-(NSURLSessionTask*) createConnectorWithCreateConnectorOptions: (OAICreateConnectorOptions*) createConnectorOptions
        completionHandler: (void (^)(OAIConnectorDto* output, NSError* error)) handler;
```

Create an inbox connector

Sync emails between external mailboxes and MailSlurp inboxes

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateConnectorOptions* createConnectorOptions = [[OAICreateConnectorOptions alloc] init]; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Create an inbox connector
[apiInstance createConnectorWithCreateConnectorOptions:createConnectorOptions
          completionHandler: ^(OAIConnectorDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->createConnector: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createConnectorOptions** | [**OAICreateConnectorOptions***](OAICreateConnectorOptions)|  | 

### Return type

[**OAIConnectorDto***](OAIConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllConnector**
```objc
-(NSURLSessionTask*) deleteAllConnectorWithCompletionHandler: 
        (void (^)(NSError* error)) handler;
```

Delete all inbox connectors

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Delete all inbox connectors
[apiInstance deleteAllConnectorWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->deleteAllConnector: %@", error);
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

# **deleteConnector**
```objc
-(NSURLSessionTask*) deleteConnectorWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete an inbox connector

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Delete an inbox connector
[apiInstance deleteConnectorWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->deleteConnector: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllConnectorSyncEvents**
```objc
-(NSURLSessionTask*) getAllConnectorSyncEventsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageConnectorSyncEvents* output, NSError* error)) handler;
```

Get all inbox connector sync events

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index in connector list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in connector list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Get all inbox connector sync events
[apiInstance getAllConnectorSyncEventsWithPage:page
              size:size
              sort:sort
              since:since
              before:before
          completionHandler: ^(OAIPageConnectorSyncEvents* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->getAllConnectorSyncEvents: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index in connector list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in connector list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPageConnectorSyncEvents***](OAIPageConnectorSyncEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnector**
```objc
-(NSURLSessionTask*) getConnectorWithId: (NSString*) _id
        completionHandler: (void (^)(OAIConnectorDto* output, NSError* error)) handler;
```

Get an inbox connector

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Get an inbox connector
[apiInstance getConnectorWithId:_id
          completionHandler: ^(OAIConnectorDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->getConnector: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

[**OAIConnectorDto***](OAIConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorSyncEvent**
```objc
-(NSURLSessionTask*) getConnectorSyncEventWithId: (NSString*) _id
        completionHandler: (void (^)(OAIConnectorSyncEventDto* output, NSError* error)) handler;
```

Get an inbox connector sync event

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Get an inbox connector sync event
[apiInstance getConnectorSyncEventWithId:_id
          completionHandler: ^(OAIConnectorSyncEventDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->getConnectorSyncEvent: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

[**OAIConnectorSyncEventDto***](OAIConnectorSyncEventDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectorSyncEvents**
```objc
-(NSURLSessionTask*) getConnectorSyncEventsWithId: (NSString*) _id
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageConnectorSyncEvents* output, NSError* error)) handler;
```

Get an inbox connector sync events

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 
NSNumber* page = @0; // Optional page index in connector list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in connector list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Get an inbox connector sync events
[apiInstance getConnectorSyncEventsWithId:_id
              page:page
              size:size
              sort:sort
              since:since
              before:before
          completionHandler: ^(OAIPageConnectorSyncEvents* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->getConnectorSyncEvents: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 
 **page** | **NSNumber***| Optional page index in connector list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in connector list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPageConnectorSyncEvents***](OAIPageConnectorSyncEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConnectors**
```objc
-(NSURLSessionTask*) getConnectorsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageConnector* output, NSError* error)) handler;
```

Get inbox connectors

List inbox connectors that sync external emails to MailSlurp inboxes

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index in connector list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in connector list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Get inbox connectors
[apiInstance getConnectorsWithPage:page
              size:size
              sort:sort
              since:since
              before:before
          completionHandler: ^(OAIPageConnector* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->getConnectors: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index in connector list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in connector list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPageConnector***](OAIPageConnector)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **syncConnector**
```objc
-(NSURLSessionTask*) syncConnectorWithId: (NSString*) _id
        completionHandler: (void (^)(OAIConnectorSyncRequestResult* output, NSError* error)) handler;
```

Sync an inbox connector

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Sync an inbox connector
[apiInstance syncConnectorWithId:_id
          completionHandler: ^(OAIConnectorSyncRequestResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->syncConnector: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

[**OAIConnectorSyncRequestResult***](OAIConnectorSyncRequestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateConnector**
```objc
-(NSURLSessionTask*) updateConnectorWithId: (NSString*) _id
    createConnectorOptions: (OAICreateConnectorOptions*) createConnectorOptions
        completionHandler: (void (^)(OAIConnectorDto* output, NSError* error)) handler;
```

Update an inbox connector

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 
OAICreateConnectorOptions* createConnectorOptions = [[OAICreateConnectorOptions alloc] init]; // 

OAIConnectorControllerApi*apiInstance = [[OAIConnectorControllerApi alloc] init];

// Update an inbox connector
[apiInstance updateConnectorWithId:_id
              createConnectorOptions:createConnectorOptions
          completionHandler: ^(OAIConnectorDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConnectorControllerApi->updateConnector: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 
 **createConnectorOptions** | [**OAICreateConnectorOptions***](OAICreateConnectorOptions)|  | 

### Return type

[**OAIConnectorDto***](OAIConnectorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

