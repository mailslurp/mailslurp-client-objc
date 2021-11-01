# OAISentEmailsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllSentTrackingPixels**](OAISentEmailsControllerApi#getallsenttrackingpixels) | **GET** /sent/tracking-pixels | Get all sent email tracking pixels in paginated form
[**getSentEmail**](OAISentEmailsControllerApi#getsentemail) | **GET** /sent/{id} | Get sent email receipt
[**getSentEmailHTMLContent**](OAISentEmailsControllerApi#getsentemailhtmlcontent) | **GET** /sent/{id}/html | Get sent email HTML content
[**getSentEmailTrackingPixels**](OAISentEmailsControllerApi#getsentemailtrackingpixels) | **GET** /sent/{id}/tracking-pixels | Get all tracking pixels for a sent email in paginated form
[**getSentEmails**](OAISentEmailsControllerApi#getsentemails) | **GET** /sent | Get all sent emails in paginated form
[**getSentOrganizationEmails**](OAISentEmailsControllerApi#getsentorganizationemails) | **GET** /sent/organization | Get all sent organization emails in paginated form


# **getAllSentTrackingPixels**
```objc
-(NSURLSessionTask*) getAllSentTrackingPixelsWithBefore: (NSDate*) before
    page: (NSNumber*) page
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageTrackingPixelProjection* output, NSError* error)) handler;
```

Get all sent email tracking pixels in paginated form

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSNumber* page = @0; // Optional page index in sent email tracking pixel list pagination (optional) (default to @0)
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSNumber* size = @20; // Optional page size in sent email tracking pixel list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAISentEmailsControllerApi*apiInstance = [[OAISentEmailsControllerApi alloc] init];

// Get all sent email tracking pixels in paginated form
[apiInstance getAllSentTrackingPixelsWithBefore:before
              page:page
              searchFilter:searchFilter
              since:since
              size:size
              sort:sort
          completionHandler: ^(OAIPageTrackingPixelProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISentEmailsControllerApi->getAllSentTrackingPixels: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **page** | **NSNumber***| Optional page index in sent email tracking pixel list pagination | [optional] [default to @0]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **size** | **NSNumber***| Optional page size in sent email tracking pixel list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageTrackingPixelProjection***](OAIPageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmail**
```objc
-(NSURLSessionTask*) getSentEmailWithId: (NSString*) _id
        completionHandler: (void (^)(OAISentEmailDto* output, NSError* error)) handler;
```

Get sent email receipt

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // id

OAISentEmailsControllerApi*apiInstance = [[OAISentEmailsControllerApi alloc] init];

// Get sent email receipt
[apiInstance getSentEmailWithId:_id
          completionHandler: ^(OAISentEmailDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISentEmailsControllerApi->getSentEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| id | 

### Return type

[**OAISentEmailDto***](OAISentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmailHTMLContent**
```objc
-(NSURLSessionTask*) getSentEmailHTMLContentWithId: (NSString*) _id
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get sent email HTML content

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // id

OAISentEmailsControllerApi*apiInstance = [[OAISentEmailsControllerApi alloc] init];

// Get sent email HTML content
[apiInstance getSentEmailHTMLContentWithId:_id
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISentEmailsControllerApi->getSentEmailHTMLContent: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| id | 

### Return type

**NSString***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmailTrackingPixels**
```objc
-(NSURLSessionTask*) getSentEmailTrackingPixelsWithId: (NSString*) _id
    before: (NSDate*) before
    page: (NSNumber*) page
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageTrackingPixelProjection* output, NSError* error)) handler;
```

Get all tracking pixels for a sent email in paginated form

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // id
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSNumber* page = @0; // Optional page index in sent email tracking pixel list pagination (optional) (default to @0)
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSNumber* size = @20; // Optional page size in sent email tracking pixel list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAISentEmailsControllerApi*apiInstance = [[OAISentEmailsControllerApi alloc] init];

// Get all tracking pixels for a sent email in paginated form
[apiInstance getSentEmailTrackingPixelsWithId:_id
              before:before
              page:page
              searchFilter:searchFilter
              since:since
              size:size
              sort:sort
          completionHandler: ^(OAIPageTrackingPixelProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISentEmailsControllerApi->getSentEmailTrackingPixels: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| id | 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **page** | **NSNumber***| Optional page index in sent email tracking pixel list pagination | [optional] [default to @0]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **size** | **NSNumber***| Optional page size in sent email tracking pixel list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageTrackingPixelProjection***](OAIPageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmails**
```objc
-(NSURLSessionTask*) getSentEmailsWithBefore: (NSDate*) before
    inboxId: (NSString*) inboxId
    page: (NSNumber*) page
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageSentEmailProjection* output, NSError* error)) handler;
```

Get all sent emails in paginated form

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSString* inboxId = @"inboxId_example"; // Optional inboxId to filter sender of sent emails by (optional)
NSNumber* page = @0; // Optional page index in inbox sent email list pagination (optional) (default to @0)
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSNumber* size = @20; // Optional page size in inbox sent email list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAISentEmailsControllerApi*apiInstance = [[OAISentEmailsControllerApi alloc] init];

// Get all sent emails in paginated form
[apiInstance getSentEmailsWithBefore:before
              inboxId:inboxId
              page:page
              searchFilter:searchFilter
              since:since
              size:size
              sort:sort
          completionHandler: ^(OAIPageSentEmailProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISentEmailsControllerApi->getSentEmails: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **inboxId** | [**NSString***]()| Optional inboxId to filter sender of sent emails by | [optional] 
 **page** | **NSNumber***| Optional page index in inbox sent email list pagination | [optional] [default to @0]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **size** | **NSNumber***| Optional page size in inbox sent email list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageSentEmailProjection***](OAIPageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentOrganizationEmails**
```objc
-(NSURLSessionTask*) getSentOrganizationEmailsWithBefore: (NSDate*) before
    inboxId: (NSString*) inboxId
    page: (NSNumber*) page
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageSentEmailProjection* output, NSError* error)) handler;
```

Get all sent organization emails in paginated form

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)
NSString* inboxId = @"inboxId_example"; // Optional inboxId to filter sender of sent emails by (optional)
NSNumber* page = @0; // Optional page index in sent email list pagination (optional) (default to @0)
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSNumber* size = @20; // Optional page size in sent email list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAISentEmailsControllerApi*apiInstance = [[OAISentEmailsControllerApi alloc] init];

// Get all sent organization emails in paginated form
[apiInstance getSentOrganizationEmailsWithBefore:before
              inboxId:inboxId
              page:page
              searchFilter:searchFilter
              since:since
              size:size
              sort:sort
          completionHandler: ^(OAIPageSentEmailProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISentEmailsControllerApi->getSentOrganizationEmails: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 
 **inboxId** | [**NSString***]()| Optional inboxId to filter sender of sent emails by | [optional] 
 **page** | **NSNumber***| Optional page index in sent email list pagination | [optional] [default to @0]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **size** | **NSNumber***| Optional page size in sent email list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageSentEmailProjection***](OAIPageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

