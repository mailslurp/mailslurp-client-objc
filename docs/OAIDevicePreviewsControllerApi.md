# OAIDevicePreviewsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelDevicePreviewRun**](OAIDevicePreviewsControllerApi#canceldevicepreviewrun) | **POST** /emails/device-previews/{runId}/cancel | Cancel a running device preview run
[**createDevicePreviewFeedback**](OAIDevicePreviewsControllerApi#createdevicepreviewfeedback) | **POST** /emails/device-previews/feedback | Create device preview feedback
[**createDevicePreviewRun**](OAIDevicePreviewsControllerApi#createdevicepreviewrun) | **POST** /emails/{emailId}/device-previews | Create a new device preview run for an email
[**deleteDevicePreviewRun**](OAIDevicePreviewsControllerApi#deletedevicepreviewrun) | **DELETE** /emails/device-previews/{runId} | Delete local device preview run data
[**ensureDevicePreviewRun**](OAIDevicePreviewsControllerApi#ensuredevicepreviewrun) | **PUT** /emails/{emailId}/device-previews/latest | Return active run for email or create one when none exists
[**getDevicePreviewFeedback**](OAIDevicePreviewsControllerApi#getdevicepreviewfeedback) | **GET** /emails/device-previews/feedback/{feedbackId} | Get a single device preview feedback item
[**getDevicePreviewFeedbackItems**](OAIDevicePreviewsControllerApi#getdevicepreviewfeedbackitems) | **GET** /emails/device-previews/feedback | List device preview feedback
[**getDevicePreviewRun**](OAIDevicePreviewsControllerApi#getdevicepreviewrun) | **GET** /emails/device-previews/{runId} | Get device preview run status
[**getDevicePreviewRunProviderProgress**](OAIDevicePreviewsControllerApi#getdevicepreviewrunproviderprogress) | **GET** /emails/device-previews/{runId}/providers/{provider} | Get provider-level progress for a device preview run
[**getDevicePreviewRunResults**](OAIDevicePreviewsControllerApi#getdevicepreviewrunresults) | **GET** /emails/device-previews/{runId}/results | Get device preview run results
[**getDevicePreviewRunScreenshot**](OAIDevicePreviewsControllerApi#getdevicepreviewrunscreenshot) | **GET** /emails/device-previews/{runId}/screenshots/{screenshotId}/image | Get a seeded device preview screenshot image
[**getDevicePreviewRuns**](OAIDevicePreviewsControllerApi#getdevicepreviewruns) | **GET** /emails/{emailId}/device-previews | List previous device preview runs for an email
[**getDevicePreviewRunsForAccount**](OAIDevicePreviewsControllerApi#getdevicepreviewrunsforaccount) | **GET** /emails/device-previews | List previous device preview runs for account
[**getDevicePreviewRunsOffsetPaginated**](OAIDevicePreviewsControllerApi#getdevicepreviewrunsoffsetpaginated) | **GET** /emails/{emailId}/device-previews/offset-paginated | List previous device preview runs for an email in paginated form
[**updateDevicePreviewFeedback**](OAIDevicePreviewsControllerApi#updatedevicepreviewfeedback) | **PUT** /emails/device-previews/feedback/{feedbackId} | Update device preview feedback


# **cancelDevicePreviewRun**
```objc
-(NSURLSessionTask*) cancelDevicePreviewRunWithRunId: (NSString*) runId
    cancelDevicePreviewRunOptions: (OAICancelDevicePreviewRunOptions*) cancelDevicePreviewRunOptions
        completionHandler: (void (^)(OAICancelDevicePreviewRunResult* output, NSError* error)) handler;
```

Cancel a running device preview run

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* runId = @"runId_example"; // 
OAICancelDevicePreviewRunOptions* cancelDevicePreviewRunOptions = [[OAICancelDevicePreviewRunOptions alloc] init]; //  (optional)

OAIDevicePreviewsControllerApi*apiInstance = [[OAIDevicePreviewsControllerApi alloc] init];

// Cancel a running device preview run
[apiInstance cancelDevicePreviewRunWithRunId:runId
              cancelDevicePreviewRunOptions:cancelDevicePreviewRunOptions
          completionHandler: ^(OAICancelDevicePreviewRunResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDevicePreviewsControllerApi->cancelDevicePreviewRun: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | [**NSString***]()|  | 
 **cancelDevicePreviewRunOptions** | [**OAICancelDevicePreviewRunOptions***](OAICancelDevicePreviewRunOptions)|  | [optional] 

### Return type

[**OAICancelDevicePreviewRunResult***](OAICancelDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDevicePreviewFeedback**
```objc
-(NSURLSessionTask*) createDevicePreviewFeedbackWithCreateDevicePreviewFeedbackOptions: (OAICreateDevicePreviewFeedbackOptions*) createDevicePreviewFeedbackOptions
        completionHandler: (void (^)(OAIDevicePreviewFeedbackDto* output, NSError* error)) handler;
```

Create device preview feedback

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateDevicePreviewFeedbackOptions* createDevicePreviewFeedbackOptions = [[OAICreateDevicePreviewFeedbackOptions alloc] init]; // 

OAIDevicePreviewsControllerApi*apiInstance = [[OAIDevicePreviewsControllerApi alloc] init];

// Create device preview feedback
[apiInstance createDevicePreviewFeedbackWithCreateDevicePreviewFeedbackOptions:createDevicePreviewFeedbackOptions
          completionHandler: ^(OAIDevicePreviewFeedbackDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDevicePreviewsControllerApi->createDevicePreviewFeedback: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDevicePreviewFeedbackOptions** | [**OAICreateDevicePreviewFeedbackOptions***](OAICreateDevicePreviewFeedbackOptions)|  | 

### Return type

[**OAIDevicePreviewFeedbackDto***](OAIDevicePreviewFeedbackDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDevicePreviewRun**
```objc
-(NSURLSessionTask*) createDevicePreviewRunWithEmailId: (NSString*) emailId
    createDevicePreviewOptions: (OAICreateDevicePreviewOptions*) createDevicePreviewOptions
        completionHandler: (void (^)(OAICreateDevicePreviewRunResult* output, NSError* error)) handler;
```

Create a new device preview run for an email

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // 
OAICreateDevicePreviewOptions* createDevicePreviewOptions = [[OAICreateDevicePreviewOptions alloc] init]; //  (optional)

OAIDevicePreviewsControllerApi*apiInstance = [[OAIDevicePreviewsControllerApi alloc] init];

// Create a new device preview run for an email
[apiInstance createDevicePreviewRunWithEmailId:emailId
              createDevicePreviewOptions:createDevicePreviewOptions
          completionHandler: ^(OAICreateDevicePreviewRunResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDevicePreviewsControllerApi->createDevicePreviewRun: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()|  | 
 **createDevicePreviewOptions** | [**OAICreateDevicePreviewOptions***](OAICreateDevicePreviewOptions)|  | [optional] 

### Return type

[**OAICreateDevicePreviewRunResult***](OAICreateDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDevicePreviewRun**
```objc
-(NSURLSessionTask*) deleteDevicePreviewRunWithRunId: (NSString*) runId
        completionHandler: (void (^)(OAIDeleteDevicePreviewRunResult* output, NSError* error)) handler;
```

Delete local device preview run data

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* runId = @"runId_example"; // 

OAIDevicePreviewsControllerApi*apiInstance = [[OAIDevicePreviewsControllerApi alloc] init];

// Delete local device preview run data
[apiInstance deleteDevicePreviewRunWithRunId:runId
          completionHandler: ^(OAIDeleteDevicePreviewRunResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDevicePreviewsControllerApi->deleteDevicePreviewRun: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | [**NSString***]()|  | 

### Return type

[**OAIDeleteDevicePreviewRunResult***](OAIDeleteDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **ensureDevicePreviewRun**
```objc
-(NSURLSessionTask*) ensureDevicePreviewRunWithEmailId: (NSString*) emailId
    createDevicePreviewOptions: (OAICreateDevicePreviewOptions*) createDevicePreviewOptions
        completionHandler: (void (^)(OAICreateDevicePreviewRunResult* output, NSError* error)) handler;
```

Return active run for email or create one when none exists

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // 
OAICreateDevicePreviewOptions* createDevicePreviewOptions = [[OAICreateDevicePreviewOptions alloc] init]; //  (optional)

OAIDevicePreviewsControllerApi*apiInstance = [[OAIDevicePreviewsControllerApi alloc] init];

// Return active run for email or create one when none exists
[apiInstance ensureDevicePreviewRunWithEmailId:emailId
              createDevicePreviewOptions:createDevicePreviewOptions
          completionHandler: ^(OAICreateDevicePreviewRunResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDevicePreviewsControllerApi->ensureDevicePreviewRun: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()|  | 
 **createDevicePreviewOptions** | [**OAICreateDevicePreviewOptions***](OAICreateDevicePreviewOptions)|  | [optional] 

### Return type

[**OAICreateDevicePreviewRunResult***](OAICreateDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewFeedback**
```objc
-(NSURLSessionTask*) getDevicePreviewFeedbackWithFeedbackId: (NSString*) feedbackId
        completionHandler: (void (^)(OAIDevicePreviewFeedbackDto* output, NSError* error)) handler;
```

Get a single device preview feedback item

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* feedbackId = @"feedbackId_example"; // 

OAIDevicePreviewsControllerApi*apiInstance = [[OAIDevicePreviewsControllerApi alloc] init];

// Get a single device preview feedback item
[apiInstance getDevicePreviewFeedbackWithFeedbackId:feedbackId
          completionHandler: ^(OAIDevicePreviewFeedbackDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDevicePreviewsControllerApi->getDevicePreviewFeedback: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedbackId** | [**NSString***]()|  | 

### Return type

[**OAIDevicePreviewFeedbackDto***](OAIDevicePreviewFeedbackDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewFeedbackItems**
```objc
-(NSURLSessionTask*) getDevicePreviewFeedbackItemsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    source: (NSString*) source
    runId: (NSString*) runId
    status: (NSString*) status
    provider: (NSString*) provider
    category: (NSString*) category
    search: (NSString*) search
        completionHandler: (void (^)(OAIDevicePreviewFeedbackListDto* output, NSError* error)) handler;
```

List device preview feedback

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @56; //  (optional)
NSNumber* size = @56; //  (optional)
NSString* source = @"source_example"; //  (optional)
NSString* runId = @"runId_example"; //  (optional)
NSString* status = @"status_example"; //  (optional)
NSString* provider = @"provider_example"; //  (optional)
NSString* category = @"category_example"; //  (optional)
NSString* search = @"search_example"; //  (optional)

OAIDevicePreviewsControllerApi*apiInstance = [[OAIDevicePreviewsControllerApi alloc] init];

// List device preview feedback
[apiInstance getDevicePreviewFeedbackItemsWithPage:page
              size:size
              source:source
              runId:runId
              status:status
              provider:provider
              category:category
              search:search
          completionHandler: ^(OAIDevicePreviewFeedbackListDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDevicePreviewsControllerApi->getDevicePreviewFeedbackItems: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **size** | **NSNumber***|  | [optional] 
 **source** | **NSString***|  | [optional] 
 **runId** | [**NSString***]()|  | [optional] 
 **status** | **NSString***|  | [optional] 
 **provider** | **NSString***|  | [optional] 
 **category** | **NSString***|  | [optional] 
 **search** | **NSString***|  | [optional] 

### Return type

[**OAIDevicePreviewFeedbackListDto***](OAIDevicePreviewFeedbackListDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRun**
```objc
-(NSURLSessionTask*) getDevicePreviewRunWithRunId: (NSString*) runId
        completionHandler: (void (^)(OAIDevicePreviewRunDto* output, NSError* error)) handler;
```

Get device preview run status

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* runId = @"runId_example"; // 

OAIDevicePreviewsControllerApi*apiInstance = [[OAIDevicePreviewsControllerApi alloc] init];

// Get device preview run status
[apiInstance getDevicePreviewRunWithRunId:runId
          completionHandler: ^(OAIDevicePreviewRunDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDevicePreviewsControllerApi->getDevicePreviewRun: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | [**NSString***]()|  | 

### Return type

[**OAIDevicePreviewRunDto***](OAIDevicePreviewRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunProviderProgress**
```objc
-(NSURLSessionTask*) getDevicePreviewRunProviderProgressWithRunId: (NSString*) runId
    provider: (NSString*) provider
        completionHandler: (void (^)(OAIDevicePreviewProviderProgressDto* output, NSError* error)) handler;
```

Get provider-level progress for a device preview run

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* runId = @"runId_example"; // 
NSString* provider = @"provider_example"; // 

OAIDevicePreviewsControllerApi*apiInstance = [[OAIDevicePreviewsControllerApi alloc] init];

// Get provider-level progress for a device preview run
[apiInstance getDevicePreviewRunProviderProgressWithRunId:runId
              provider:provider
          completionHandler: ^(OAIDevicePreviewProviderProgressDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDevicePreviewsControllerApi->getDevicePreviewRunProviderProgress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | [**NSString***]()|  | 
 **provider** | **NSString***|  | 

### Return type

[**OAIDevicePreviewProviderProgressDto***](OAIDevicePreviewProviderProgressDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunResults**
```objc
-(NSURLSessionTask*) getDevicePreviewRunResultsWithRunId: (NSString*) runId
        completionHandler: (void (^)(OAIDevicePreviewRunResultsDto* output, NSError* error)) handler;
```

Get device preview run results

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* runId = @"runId_example"; // 

OAIDevicePreviewsControllerApi*apiInstance = [[OAIDevicePreviewsControllerApi alloc] init];

// Get device preview run results
[apiInstance getDevicePreviewRunResultsWithRunId:runId
          completionHandler: ^(OAIDevicePreviewRunResultsDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDevicePreviewsControllerApi->getDevicePreviewRunResults: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | [**NSString***]()|  | 

### Return type

[**OAIDevicePreviewRunResultsDto***](OAIDevicePreviewRunResultsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunScreenshot**
```objc
-(NSURLSessionTask*) getDevicePreviewRunScreenshotWithRunId: (NSString*) runId
    screenshotId: (NSString*) screenshotId
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Get a seeded device preview screenshot image

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* runId = @"runId_example"; // 
NSString* screenshotId = @"screenshotId_example"; // 

OAIDevicePreviewsControllerApi*apiInstance = [[OAIDevicePreviewsControllerApi alloc] init];

// Get a seeded device preview screenshot image
[apiInstance getDevicePreviewRunScreenshotWithRunId:runId
              screenshotId:screenshotId
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDevicePreviewsControllerApi->getDevicePreviewRunScreenshot: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | [**NSString***]()|  | 
 **screenshotId** | [**NSString***]()|  | 

### Return type

**NSData***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRuns**
```objc
-(NSURLSessionTask*) getDevicePreviewRunsWithEmailId: (NSString*) emailId
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<OAIDevicePreviewRunDto>* output, NSError* error)) handler;
```

List previous device preview runs for an email

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // 
NSNumber* limit = @50; //  (optional) (default to @50)

OAIDevicePreviewsControllerApi*apiInstance = [[OAIDevicePreviewsControllerApi alloc] init];

// List previous device preview runs for an email
[apiInstance getDevicePreviewRunsWithEmailId:emailId
              limit:limit
          completionHandler: ^(NSArray<OAIDevicePreviewRunDto>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDevicePreviewsControllerApi->getDevicePreviewRuns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()|  | 
 **limit** | **NSNumber***|  | [optional] [default to @50]

### Return type

[**NSArray<OAIDevicePreviewRunDto>***](OAIDevicePreviewRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunsForAccount**
```objc
-(NSURLSessionTask*) getDevicePreviewRunsForAccountWithLimit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<OAIDevicePreviewRunDto>* output, NSError* error)) handler;
```

List previous device preview runs for account

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* limit = @50; //  (optional) (default to @50)

OAIDevicePreviewsControllerApi*apiInstance = [[OAIDevicePreviewsControllerApi alloc] init];

// List previous device preview runs for account
[apiInstance getDevicePreviewRunsForAccountWithLimit:limit
          completionHandler: ^(NSArray<OAIDevicePreviewRunDto>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDevicePreviewsControllerApi->getDevicePreviewRunsForAccount: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **NSNumber***|  | [optional] [default to @50]

### Return type

[**NSArray<OAIDevicePreviewRunDto>***](OAIDevicePreviewRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunsOffsetPaginated**
```objc
-(NSURLSessionTask*) getDevicePreviewRunsOffsetPaginatedWithEmailId: (NSString*) emailId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageDevicePreviewRunProjection* output, NSError* error)) handler;
```

List previous device preview runs for an email in paginated form

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailId = @"emailId_example"; // 
NSNumber* page = @0; // Optional page index in list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size for paginated result list. (optional) (default to @20)
NSString* sort = @"DESC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"DESC")

OAIDevicePreviewsControllerApi*apiInstance = [[OAIDevicePreviewsControllerApi alloc] init];

// List previous device preview runs for an email in paginated form
[apiInstance getDevicePreviewRunsOffsetPaginatedWithEmailId:emailId
              page:page
              size:size
              sort:sort
          completionHandler: ^(OAIPageDevicePreviewRunProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDevicePreviewsControllerApi->getDevicePreviewRunsOffsetPaginated: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**NSString***]()|  | 
 **page** | **NSNumber***| Optional page index in list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size for paginated result list. | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;DESC&quot;]

### Return type

[**OAIPageDevicePreviewRunProjection***](OAIPageDevicePreviewRunProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateDevicePreviewFeedback**
```objc
-(NSURLSessionTask*) updateDevicePreviewFeedbackWithFeedbackId: (NSString*) feedbackId
    updateDevicePreviewFeedbackOptions: (OAIUpdateDevicePreviewFeedbackOptions*) updateDevicePreviewFeedbackOptions
        completionHandler: (void (^)(OAIDevicePreviewFeedbackDto* output, NSError* error)) handler;
```

Update device preview feedback

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* feedbackId = @"feedbackId_example"; // 
OAIUpdateDevicePreviewFeedbackOptions* updateDevicePreviewFeedbackOptions = [[OAIUpdateDevicePreviewFeedbackOptions alloc] init]; // 

OAIDevicePreviewsControllerApi*apiInstance = [[OAIDevicePreviewsControllerApi alloc] init];

// Update device preview feedback
[apiInstance updateDevicePreviewFeedbackWithFeedbackId:feedbackId
              updateDevicePreviewFeedbackOptions:updateDevicePreviewFeedbackOptions
          completionHandler: ^(OAIDevicePreviewFeedbackDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDevicePreviewsControllerApi->updateDevicePreviewFeedback: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedbackId** | [**NSString***]()|  | 
 **updateDevicePreviewFeedbackOptions** | [**OAIUpdateDevicePreviewFeedbackOptions***](OAIUpdateDevicePreviewFeedbackOptions)|  | 

### Return type

[**OAIDevicePreviewFeedbackDto***](OAIDevicePreviewFeedbackDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

