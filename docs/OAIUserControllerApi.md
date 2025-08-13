# OAIUserControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEntityAutomations**](OAIUserControllerApi#getentityautomations) | **GET** /user/automations | 
[**getEntityEvents**](OAIUserControllerApi#getentityevents) | **GET** /user/events | 
[**getEntityFavorites**](OAIUserControllerApi#getentityfavorites) | **GET** /user/favorites | 
[**getJsonPropertyAsString**](OAIUserControllerApi#getjsonpropertyasstring) | **POST** /user/json/pluck | 
[**getUserInfo**](OAIUserControllerApi#getuserinfo) | **GET** /user/info | 


# **getEntityAutomations**
```objc
-(NSURLSessionTask*) getEntityAutomationsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    inboxId: (NSString*) inboxId
    phoneId: (NSString*) phoneId
    filter: (NSString*) filter
        completionHandler: (void (^)(OAIPageEntityAutomationItems* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index (optional) (default to @0)
NSNumber* size = @20; // Optional page size (optional) (default to @20)
NSString* sort = @"DESC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"DESC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSString* inboxId = @"inboxId_example"; // Optional inbox ID (optional)
NSString* phoneId = @"phoneId_example"; // Optional phone ID (optional)
NSString* filter = @"filter_example"; // Optional automation type filter (optional)

OAIUserControllerApi*apiInstance = [[OAIUserControllerApi alloc] init];

[apiInstance getEntityAutomationsWithPage:page
              size:size
              sort:sort
              since:since
              before:before
              inboxId:inboxId
              phoneId:phoneId
              filter:filter
          completionHandler: ^(OAIPageEntityAutomationItems* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIUserControllerApi->getEntityAutomations: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;DESC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **inboxId** | [**NSString***]()| Optional inbox ID | [optional] 
 **phoneId** | [**NSString***]()| Optional phone ID | [optional] 
 **filter** | **NSString***| Optional automation type filter | [optional] 

### Return type

[**OAIPageEntityAutomationItems***](OAIPageEntityAutomationItems)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEntityEvents**
```objc
-(NSURLSessionTask*) getEntityEventsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    inboxId: (NSString*) inboxId
    emailId: (NSString*) emailId
    phoneId: (NSString*) phoneId
    smsId: (NSString*) smsId
    attachmentId: (NSString*) attachmentId
    filter: (NSString*) filter
        completionHandler: (void (^)(OAIPageEntityEventItems* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index (optional) (default to @0)
NSNumber* size = @20; // Optional page size (optional) (default to @20)
NSString* sort = @"DESC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"DESC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSString* inboxId = @"inboxId_example"; // Optional inbox ID (optional)
NSString* emailId = @"emailId_example"; // Optional email ID (optional)
NSString* phoneId = @"phoneId_example"; // Optional phone ID (optional)
NSString* smsId = @"smsId_example"; // Optional SMS ID (optional)
NSString* attachmentId = @"attachmentId_example"; // Optional attachment ID (optional)
NSString* filter = @"filter_example"; // Optional type filter (optional)

OAIUserControllerApi*apiInstance = [[OAIUserControllerApi alloc] init];

[apiInstance getEntityEventsWithPage:page
              size:size
              sort:sort
              since:since
              before:before
              inboxId:inboxId
              emailId:emailId
              phoneId:phoneId
              smsId:smsId
              attachmentId:attachmentId
              filter:filter
          completionHandler: ^(OAIPageEntityEventItems* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIUserControllerApi->getEntityEvents: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;DESC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **inboxId** | [**NSString***]()| Optional inbox ID | [optional] 
 **emailId** | [**NSString***]()| Optional email ID | [optional] 
 **phoneId** | [**NSString***]()| Optional phone ID | [optional] 
 **smsId** | [**NSString***]()| Optional SMS ID | [optional] 
 **attachmentId** | [**NSString***]()| Optional attachment ID | [optional] 
 **filter** | **NSString***| Optional type filter | [optional] 

### Return type

[**OAIPageEntityEventItems***](OAIPageEntityEventItems)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEntityFavorites**
```objc
-(NSURLSessionTask*) getEntityFavoritesWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    filter: (NSString*) filter
        completionHandler: (void (^)(OAIPageEntityFavouriteItems* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index (optional) (default to @0)
NSNumber* size = @20; // Optional page size (optional) (default to @20)
NSString* sort = @"DESC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"DESC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSString* filter = @"filter_example"; // Optional type filter (optional)

OAIUserControllerApi*apiInstance = [[OAIUserControllerApi alloc] init];

[apiInstance getEntityFavoritesWithPage:page
              size:size
              sort:sort
              since:since
              before:before
              filter:filter
          completionHandler: ^(OAIPageEntityFavouriteItems* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIUserControllerApi->getEntityFavorites: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;DESC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **filter** | **NSString***| Optional type filter | [optional] 

### Return type

[**OAIPageEntityFavouriteItems***](OAIPageEntityFavouriteItems)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getJsonPropertyAsString**
```objc
-(NSURLSessionTask*) getJsonPropertyAsStringWithProperty: (NSString*) _property
    body: (NSObject*) body
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```



Utility function to extract properties from JSON objects in language where this is cumbersome.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _property = @"_property_example"; // JSON property name or dot separated path selector such as `a.b.c`
NSObject* body = NULL; // 

OAIUserControllerApi*apiInstance = [[OAIUserControllerApi alloc] init];

[apiInstance getJsonPropertyAsStringWithProperty:_property
              body:body
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIUserControllerApi->getJsonPropertyAsString: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_property** | **NSString***| JSON property name or dot separated path selector such as &#x60;a.b.c&#x60; | 
 **body** | **NSObject***|  | 

### Return type

**NSString***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getUserInfo**
```objc
-(NSURLSessionTask*) getUserInfoWithCompletionHandler: 
        (void (^)(OAIUserInfoDto* output, NSError* error)) handler;
```



Get account information for your user

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIUserControllerApi*apiInstance = [[OAIUserControllerApi alloc] init];

[apiInstance getUserInfoWithCompletionHandler: 
          ^(OAIUserInfoDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIUserControllerApi->getUserInfo: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIUserInfoDto***](OAIUserInfoDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

