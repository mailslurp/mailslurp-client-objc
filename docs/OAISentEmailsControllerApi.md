# OAISentEmailsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAllSentEmails**](OAISentEmailsControllerApi#deleteallsentemails) | **DELETE** /sent | Delete all sent email receipts
[**deleteSentEmail**](OAISentEmailsControllerApi#deletesentemail) | **DELETE** /sent/{id} | Delete sent email receipt
[**getAllSentTrackingPixels**](OAISentEmailsControllerApi#getallsenttrackingpixels) | **GET** /sent/tracking-pixels | 
[**getRawSentEmailContents**](OAISentEmailsControllerApi#getrawsentemailcontents) | **GET** /sent/{emailId}/raw | Get raw sent email string. Returns unparsed raw SMTP message with headers and body.
[**getRawSentEmailJson**](OAISentEmailsControllerApi#getrawsentemailjson) | **GET** /sent/{emailId}/raw/json | Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.
[**getSentDeliveryStatus**](OAISentEmailsControllerApi#getsentdeliverystatus) | **GET** /sent/delivery-status/{deliveryId} | 
[**getSentDeliveryStatuses**](OAISentEmailsControllerApi#getsentdeliverystatuses) | **GET** /sent/delivery-status | 
[**getSentDeliveryStatusesBySentId**](OAISentEmailsControllerApi#getsentdeliverystatusesbysentid) | **GET** /sent/{sentId}/delivery-status | 
[**getSentEmail**](OAISentEmailsControllerApi#getsentemail) | **GET** /sent/{id} | Get sent email receipt
[**getSentEmailHTMLContent**](OAISentEmailsControllerApi#getsentemailhtmlcontent) | **GET** /sent/{id}/html | Get sent email HTML content
[**getSentEmailPreviewURLs**](OAISentEmailsControllerApi#getsentemailpreviewurls) | **GET** /sent/{id}/urls | Get sent email URL for viewing in browser or downloading
[**getSentEmailTrackingPixels**](OAISentEmailsControllerApi#getsentemailtrackingpixels) | **GET** /sent/{id}/tracking-pixels | 
[**getSentEmails**](OAISentEmailsControllerApi#getsentemails) | **GET** /sent | Get all sent emails in paginated form
[**getSentEmailsWithQueueResults**](OAISentEmailsControllerApi#getsentemailswithqueueresults) | **GET** /sent/queue-results | Get results of email sent with queues in paginated form
[**getSentOrganizationEmails**](OAISentEmailsControllerApi#getsentorganizationemails) | **GET** /sent/organization | 
[**waitForDeliveryStatuses**](OAISentEmailsControllerApi#waitfordeliverystatuses) | **GET** /sent/delivery-status/wait-for | 


# **deleteAllSentEmails**
```objc
-(NSURLSessionTask*) deleteAllSentEmailsWithCompletionHandler: 
        (void (^)(NSError* error)) handler;
```

Delete all sent email receipts

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAISentEmailsControllerApi*apiInstance = [[OAISentEmailsControllerApi alloc] init];

// Delete all sent email receipts
[apiInstance deleteAllSentEmailsWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAISentEmailsControllerApi->deleteAllSentEmails: %@", error);
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

# **deleteSentEmail**
```objc
-(NSURLSessionTask*) deleteSentEmailWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete sent email receipt

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAISentEmailsControllerApi*apiInstance = [[OAISentEmailsControllerApi alloc] init];

// Delete sent email receipt
[apiInstance deleteSentEmailWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAISentEmailsControllerApi->deleteSentEmail: %@", error);
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

# **getAllSentTrackingPixels**
```objc
-(NSURLSessionTask*) getAllSentTrackingPixelsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
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


NSNumber* page = @0; // Optional page index in sent email tracking pixel list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in sent email tracking pixel list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAISentEmailsControllerApi*apiInstance = [[OAISentEmailsControllerApi alloc] init];

[apiInstance getAllSentTrackingPixelsWithPage:page
              size:size
              sort:sort
              searchFilter:searchFilter
              since:since
              before:before
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
 **page** | **NSNumber***| Optional page index in sent email tracking pixel list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in sent email tracking pixel list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPageTrackingPixelProjection***](OAIPageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRawSentEmailContents**
```objc
-(NSURLSessionTask*) getRawSentEmailContentsWithEmailId: (NSString*) emailId
        completionHandler: (void (^)(NSError* error)) handler;
```

Get raw sent email string. Returns unparsed raw SMTP message with headers and body.

Returns a raw, unparsed, and unprocessed sent email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawSentEmailJson endpoint

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of email

OAISentEmailsControllerApi*apiInstance = [[OAISentEmailsControllerApi alloc] init];

// Get raw sent email string. Returns unparsed raw SMTP message with headers and body.
[apiInstance getRawSentEmailContentsWithEmailId:emailId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAISentEmailsControllerApi->getRawSentEmailContents: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| ID of email | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRawSentEmailJson**
```objc
-(NSURLSessionTask*) getRawSentEmailJsonWithEmailId: (NSString*) emailId
        completionHandler: (void (^)(OAIRawEmailJson* output, NSError* error)) handler;
```

Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.

Returns a raw, unparsed, and unprocessed sent email wrapped in a JSON response object for easier handling when compared with the getRawSentEmail text/plain response

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // ID of email

OAISentEmailsControllerApi*apiInstance = [[OAISentEmailsControllerApi alloc] init];

// Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.
[apiInstance getRawSentEmailJsonWithEmailId:emailId
          completionHandler: ^(OAIRawEmailJson* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISentEmailsControllerApi->getRawSentEmailJson: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()| ID of email | 

### Return type

[**OAIRawEmailJson***](OAIRawEmailJson)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentDeliveryStatus**
```objc
-(NSURLSessionTask*) getSentDeliveryStatusWithDeliveryId: (NSString*) deliveryId
        completionHandler: (void (^)(OAIDeliveryStatusDto* output, NSError* error)) handler;
```



Get a sent email delivery status

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* deliveryId = @"deliveryId_example"; // 

OAISentEmailsControllerApi*apiInstance = [[OAISentEmailsControllerApi alloc] init];

[apiInstance getSentDeliveryStatusWithDeliveryId:deliveryId
          completionHandler: ^(OAIDeliveryStatusDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISentEmailsControllerApi->getSentDeliveryStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryId** | [**NSString***]()|  | 

### Return type

[**OAIDeliveryStatusDto***](OAIDeliveryStatusDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentDeliveryStatuses**
```objc
-(NSURLSessionTask*) getSentDeliveryStatusesWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageDeliveryStatus* output, NSError* error)) handler;
```



Get all sent email delivery statuses

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index in delivery status list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in delivery status list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAISentEmailsControllerApi*apiInstance = [[OAISentEmailsControllerApi alloc] init];

[apiInstance getSentDeliveryStatusesWithPage:page
              size:size
              sort:sort
              since:since
              before:before
          completionHandler: ^(OAIPageDeliveryStatus* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISentEmailsControllerApi->getSentDeliveryStatuses: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index in delivery status list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in delivery status list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPageDeliveryStatus***](OAIPageDeliveryStatus)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentDeliveryStatusesBySentId**
```objc
-(NSURLSessionTask*) getSentDeliveryStatusesBySentIdWithSentId: (NSString*) sentId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageDeliveryStatus* output, NSError* error)) handler;
```



Get all sent email delivery statuses

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* sentId = @"sentId_example"; // ID of the sent email that you want to get the delivery status of. Sent email object is returned when sending an email
NSNumber* page = @0; // Optional page index in delivery status list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in delivery status list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAISentEmailsControllerApi*apiInstance = [[OAISentEmailsControllerApi alloc] init];

[apiInstance getSentDeliveryStatusesBySentIdWithSentId:sentId
              page:page
              size:size
              sort:sort
              since:since
              before:before
          completionHandler: ^(OAIPageDeliveryStatus* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISentEmailsControllerApi->getSentDeliveryStatusesBySentId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sentId** | [**NSString***]()| ID of the sent email that you want to get the delivery status of. Sent email object is returned when sending an email | 
 **page** | **NSNumber***| Optional page index in delivery status list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in delivery status list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPageDeliveryStatus***](OAIPageDeliveryStatus)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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


NSString* _id = @"_id_example"; // 

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
 **_id** | [**NSString***]()|  | 

### Return type

[**OAISentEmailDto***](OAISentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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


NSString* _id = @"_id_example"; // 

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
 **_id** | [**NSString***]()|  | 

### Return type

**NSString***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmailPreviewURLs**
```objc
-(NSURLSessionTask*) getSentEmailPreviewURLsWithId: (NSString*) _id
        completionHandler: (void (^)(OAIEmailPreviewUrls* output, NSError* error)) handler;
```

Get sent email URL for viewing in browser or downloading

Get a list of URLs for sent email content as text/html or raw SMTP message for viewing the message in a browser.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAISentEmailsControllerApi*apiInstance = [[OAISentEmailsControllerApi alloc] init];

// Get sent email URL for viewing in browser or downloading
[apiInstance getSentEmailPreviewURLsWithId:_id
          completionHandler: ^(OAIEmailPreviewUrls* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISentEmailsControllerApi->getSentEmailPreviewURLs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

[**OAIEmailPreviewUrls***](OAIEmailPreviewUrls)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmailTrackingPixels**
```objc
-(NSURLSessionTask*) getSentEmailTrackingPixelsWithId: (NSString*) _id
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
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


NSString* _id = @"_id_example"; // 
NSNumber* page = @0; // Optional page index in sent email tracking pixel list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in sent email tracking pixel list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAISentEmailsControllerApi*apiInstance = [[OAISentEmailsControllerApi alloc] init];

[apiInstance getSentEmailTrackingPixelsWithId:_id
              page:page
              size:size
              sort:sort
              searchFilter:searchFilter
              since:since
              before:before
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
 **_id** | [**NSString***]()|  | 
 **page** | **NSNumber***| Optional page index in sent email tracking pixel list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in sent email tracking pixel list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPageTrackingPixelProjection***](OAIPageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmails**
```objc
-(NSURLSessionTask*) getSentEmailsWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
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


NSString* inboxId = @"inboxId_example"; // Optional inboxId to filter sender of sent emails by (optional)
NSNumber* page = @0; // Optional page index in inbox sent email list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in inbox sent email list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAISentEmailsControllerApi*apiInstance = [[OAISentEmailsControllerApi alloc] init];

// Get all sent emails in paginated form
[apiInstance getSentEmailsWithInboxId:inboxId
              page:page
              size:size
              sort:sort
              searchFilter:searchFilter
              since:since
              before:before
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
 **inboxId** | [**NSString***]()| Optional inboxId to filter sender of sent emails by | [optional] 
 **page** | **NSNumber***| Optional page index in inbox sent email list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in inbox sent email list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPageSentEmailProjection***](OAIPageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmailsWithQueueResults**
```objc
-(NSURLSessionTask*) getSentEmailsWithQueueResultsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageSentEmailWithQueueProjection* output, NSError* error)) handler;
```

Get results of email sent with queues in paginated form

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index in inbox sent email list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in inbox sent email list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAISentEmailsControllerApi*apiInstance = [[OAISentEmailsControllerApi alloc] init];

// Get results of email sent with queues in paginated form
[apiInstance getSentEmailsWithQueueResultsWithPage:page
              size:size
              sort:sort
              since:since
              before:before
          completionHandler: ^(OAIPageSentEmailWithQueueProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISentEmailsControllerApi->getSentEmailsWithQueueResults: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index in inbox sent email list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in inbox sent email list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPageSentEmailWithQueueProjection***](OAIPageSentEmailWithQueueProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentOrganizationEmails**
```objc
-(NSURLSessionTask*) getSentOrganizationEmailsWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
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


NSString* inboxId = @"inboxId_example"; // Optional inboxId to filter sender of sent emails by (optional)
NSNumber* page = @0; // Optional page index in sent email list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in sent email list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAISentEmailsControllerApi*apiInstance = [[OAISentEmailsControllerApi alloc] init];

[apiInstance getSentOrganizationEmailsWithInboxId:inboxId
              page:page
              size:size
              sort:sort
              searchFilter:searchFilter
              since:since
              before:before
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
 **inboxId** | [**NSString***]()| Optional inboxId to filter sender of sent emails by | [optional] 
 **page** | **NSNumber***| Optional page index in sent email list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in sent email list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPageSentEmailProjection***](OAIPageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForDeliveryStatuses**
```objc
-(NSURLSessionTask*) waitForDeliveryStatusesWithSentId: (NSString*) sentId
    inboxId: (NSString*) inboxId
    timeout: (NSNumber*) timeout
    index: (NSNumber*) index
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIDeliveryStatusDto* output, NSError* error)) handler;
```



Wait for delivery statuses

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* sentId = @"sentId_example"; // Optional sent email ID filter (optional)
NSString* inboxId = @"inboxId_example"; // Optional inbox ID filter (optional)
NSNumber* timeout = @56; // Optional timeout milliseconds (optional)
NSNumber* index = @56; // Zero based index of the delivery status to wait for. If 1 delivery status already and you want to wait for the 2nd pass index=1 (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAISentEmailsControllerApi*apiInstance = [[OAISentEmailsControllerApi alloc] init];

[apiInstance waitForDeliveryStatusesWithSentId:sentId
              inboxId:inboxId
              timeout:timeout
              index:index
              since:since
              before:before
          completionHandler: ^(OAIDeliveryStatusDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISentEmailsControllerApi->waitForDeliveryStatuses: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sentId** | [**NSString***]()| Optional sent email ID filter | [optional] 
 **inboxId** | [**NSString***]()| Optional inbox ID filter | [optional] 
 **timeout** | **NSNumber***| Optional timeout milliseconds | [optional] 
 **index** | **NSNumber***| Zero based index of the delivery status to wait for. If 1 delivery status already and you want to wait for the 2nd pass index&#x3D;1 | [optional] 
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIDeliveryStatusDto***](OAIDeliveryStatusDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

