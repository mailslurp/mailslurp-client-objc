# OAIDeliverabilityTestControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelDeliverabilitySimulationJob**](OAIDeliverabilityTestControllerApi#canceldeliverabilitysimulationjob) | **POST** /test/deliverability/{testId}/simulation-jobs/{jobId}/cancel | Cancel deliverability simulation job
[**createDeliverabilitySimulationJob**](OAIDeliverabilityTestControllerApi#createdeliverabilitysimulationjob) | **POST** /test/deliverability/{testId}/simulation-jobs | Create deliverability simulation job
[**createDeliverabilityTest**](OAIDeliverabilityTestControllerApi#createdeliverabilitytest) | **POST** /test/deliverability | Create deliverability/load test
[**deleteDeliverabilityTest**](OAIDeliverabilityTestControllerApi#deletedeliverabilitytest) | **DELETE** /test/deliverability/{testId} | Delete deliverability/load test
[**duplicateDeliverabilityTest**](OAIDeliverabilityTestControllerApi#duplicatedeliverabilitytest) | **POST** /test/deliverability/{testId}/duplicate | Duplicate deliverability/load test
[**exportDeliverabilityTestReport**](OAIDeliverabilityTestControllerApi#exportdeliverabilitytestreport) | **GET** /test/deliverability/{testId}/report/export | Export deliverability/load test report as PDF
[**exportDeliverabilityTestResults**](OAIDeliverabilityTestControllerApi#exportdeliverabilitytestresults) | **GET** /test/deliverability/{testId}/results/export | Export deliverability/load test entity results as CSV
[**getDeliverabilityAnalyticsSeries**](OAIDeliverabilityTestControllerApi#getdeliverabilityanalyticsseries) | **GET** /test/deliverability/analytics/series | Get deliverability analytics time series
[**getDeliverabilityFailureHotspots**](OAIDeliverabilityTestControllerApi#getdeliverabilityfailurehotspots) | **GET** /test/deliverability/analytics/hotspots | Get deliverability failure hotspots
[**getDeliverabilitySimulationJob**](OAIDeliverabilityTestControllerApi#getdeliverabilitysimulationjob) | **GET** /test/deliverability/{testId}/simulation-jobs/{jobId} | Get deliverability simulation job
[**getDeliverabilitySimulationJobEvents**](OAIDeliverabilityTestControllerApi#getdeliverabilitysimulationjobevents) | **GET** /test/deliverability/{testId}/simulation-jobs/{jobId}/events | Get deliverability simulation job events
[**getDeliverabilityTest**](OAIDeliverabilityTestControllerApi#getdeliverabilitytest) | **GET** /test/deliverability/{testId} | Get deliverability/load test
[**getDeliverabilityTestResults**](OAIDeliverabilityTestControllerApi#getdeliverabilitytestresults) | **GET** /test/deliverability/{testId}/results | Get deliverability/load test entity results
[**getDeliverabilityTests**](OAIDeliverabilityTestControllerApi#getdeliverabilitytests) | **GET** /test/deliverability | List deliverability/load tests
[**getLatestDeliverabilitySimulationJob**](OAIDeliverabilityTestControllerApi#getlatestdeliverabilitysimulationjob) | **GET** /test/deliverability/{testId}/simulation-jobs/latest | Get latest deliverability simulation job
[**pauseDeliverabilitySimulationJob**](OAIDeliverabilityTestControllerApi#pausedeliverabilitysimulationjob) | **POST** /test/deliverability/{testId}/simulation-jobs/{jobId}/pause | Pause deliverability simulation job
[**pauseDeliverabilityTest**](OAIDeliverabilityTestControllerApi#pausedeliverabilitytest) | **POST** /test/deliverability/{testId}/pause | Pause deliverability/load test
[**pollDeliverabilityTestStatus**](OAIDeliverabilityTestControllerApi#polldeliverabilityteststatus) | **GET** /test/deliverability/{testId}/status | Poll deliverability/load test status
[**resumeDeliverabilitySimulationJob**](OAIDeliverabilityTestControllerApi#resumedeliverabilitysimulationjob) | **POST** /test/deliverability/{testId}/simulation-jobs/{jobId}/resume | Resume deliverability simulation job
[**startDeliverabilityTest**](OAIDeliverabilityTestControllerApi#startdeliverabilitytest) | **POST** /test/deliverability/{testId}/start | Start or resume deliverability/load test
[**stopDeliverabilityTest**](OAIDeliverabilityTestControllerApi#stopdeliverabilitytest) | **POST** /test/deliverability/{testId}/stop | Stop deliverability/load test
[**updateDeliverabilityTest**](OAIDeliverabilityTestControllerApi#updatedeliverabilitytest) | **PATCH** /test/deliverability/{testId} | Update deliverability/load test


# **cancelDeliverabilitySimulationJob**
```objc
-(NSURLSessionTask*) cancelDeliverabilitySimulationJobWithTestId: (NSString*) testId
    jobId: (NSString*) jobId
        completionHandler: (void (^)(OAIDeliverabilitySimulationJobDto* output, NSError* error)) handler;
```

Cancel deliverability simulation job

Cancel a running or paused simulation job.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* testId = @"testId_example"; // 
NSString* jobId = @"jobId_example"; // 

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// Cancel deliverability simulation job
[apiInstance cancelDeliverabilitySimulationJobWithTestId:testId
              jobId:jobId
          completionHandler: ^(OAIDeliverabilitySimulationJobDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->cancelDeliverabilitySimulationJob: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | [**NSString***]()|  | 
 **jobId** | [**NSString***]()|  | 

### Return type

[**OAIDeliverabilitySimulationJobDto***](OAIDeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDeliverabilitySimulationJob**
```objc
-(NSURLSessionTask*) createDeliverabilitySimulationJobWithTestId: (NSString*) testId
    createDeliverabilitySimulationJobOptions: (OAICreateDeliverabilitySimulationJobOptions*) createDeliverabilitySimulationJobOptions
        completionHandler: (void (^)(OAIDeliverabilitySimulationJobDto* output, NSError* error)) handler;
```

Create deliverability simulation job

Create and start a simulation job for a running deliverability test. Only one active simulation job is allowed per user.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* testId = @"testId_example"; // 
OAICreateDeliverabilitySimulationJobOptions* createDeliverabilitySimulationJobOptions = [[OAICreateDeliverabilitySimulationJobOptions alloc] init]; // 

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// Create deliverability simulation job
[apiInstance createDeliverabilitySimulationJobWithTestId:testId
              createDeliverabilitySimulationJobOptions:createDeliverabilitySimulationJobOptions
          completionHandler: ^(OAIDeliverabilitySimulationJobDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->createDeliverabilitySimulationJob: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | [**NSString***]()|  | 
 **createDeliverabilitySimulationJobOptions** | [**OAICreateDeliverabilitySimulationJobOptions***](OAICreateDeliverabilitySimulationJobOptions)|  | 

### Return type

[**OAIDeliverabilitySimulationJobDto***](OAIDeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDeliverabilityTest**
```objc
-(NSURLSessionTask*) createDeliverabilityTestWithCreateDeliverabilityTestOptions: (OAICreateDeliverabilityTestOptions*) createDeliverabilityTestOptions
        completionHandler: (void (^)(OAIDeliverabilityTestDto* output, NSError* error)) handler;
```

Create deliverability/load test

Create a deliverability test for inboxes or phone numbers using ALL, PATTERN, or EXPLICIT selector scope.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateDeliverabilityTestOptions* createDeliverabilityTestOptions = [[OAICreateDeliverabilityTestOptions alloc] init]; // 

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// Create deliverability/load test
[apiInstance createDeliverabilityTestWithCreateDeliverabilityTestOptions:createDeliverabilityTestOptions
          completionHandler: ^(OAIDeliverabilityTestDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->createDeliverabilityTest: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDeliverabilityTestOptions** | [**OAICreateDeliverabilityTestOptions***](OAICreateDeliverabilityTestOptions)|  | 

### Return type

[**OAIDeliverabilityTestDto***](OAIDeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDeliverabilityTest**
```objc
-(NSURLSessionTask*) deleteDeliverabilityTestWithTestId: (NSString*) testId
        completionHandler: (void (^)(OAIDeleteResult* output, NSError* error)) handler;
```

Delete deliverability/load test

Delete test and all persisted entity-level results.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* testId = @"testId_example"; // 

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// Delete deliverability/load test
[apiInstance deleteDeliverabilityTestWithTestId:testId
          completionHandler: ^(OAIDeleteResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->deleteDeliverabilityTest: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | [**NSString***]()|  | 

### Return type

[**OAIDeleteResult***](OAIDeleteResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **duplicateDeliverabilityTest**
```objc
-(NSURLSessionTask*) duplicateDeliverabilityTestWithTestId: (NSString*) testId
        completionHandler: (void (^)(OAIDeliverabilityTestDto* output, NSError* error)) handler;
```

Duplicate deliverability/load test

Create a fresh deliverability test using an existing test configuration, including selector scope, exclusions, and expectations.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* testId = @"testId_example"; // 

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// Duplicate deliverability/load test
[apiInstance duplicateDeliverabilityTestWithTestId:testId
          completionHandler: ^(OAIDeliverabilityTestDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->duplicateDeliverabilityTest: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | [**NSString***]()|  | 

### Return type

[**OAIDeliverabilityTestDto***](OAIDeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **exportDeliverabilityTestReport**
```objc
-(NSURLSessionTask*) exportDeliverabilityTestReportWithTestId: (NSString*) testId
        completionHandler: (void (^)(NSError* error)) handler;
```

Export deliverability/load test report as PDF

Export a PDF report for a terminal deliverability test (COMPLETE, FAILED, or STOPPED), including configuration, summary outcomes, and detailed entity-level results.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* testId = @"testId_example"; // 

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// Export deliverability/load test report as PDF
[apiInstance exportDeliverabilityTestReportWithTestId:testId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->exportDeliverabilityTestReport: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **exportDeliverabilityTestResults**
```objc
-(NSURLSessionTask*) exportDeliverabilityTestResultsWithTestId: (NSString*) testId
    matched: (NSNumber*) matched
        completionHandler: (void (^)(NSError* error)) handler;
```

Export deliverability/load test entity results as CSV

Export per-entity deliverability results including expectation-level pass/fail counts. The latest status is evaluated with the same polling safeguards before export.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* testId = @"testId_example"; // 
NSNumber* matched = @56; //  (optional)

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// Export deliverability/load test entity results as CSV
[apiInstance exportDeliverabilityTestResultsWithTestId:testId
              matched:matched
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->exportDeliverabilityTestResults: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | [**NSString***]()|  | 
 **matched** | **NSNumber***|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverabilityAnalyticsSeries**
```objc
-(NSURLSessionTask*) getDeliverabilityAnalyticsSeriesWithSince: (NSDate*) since
    before: (NSDate*) before
    scope: (NSString*) scope
    bucket: (NSString*) bucket
    runLimit: (NSNumber*) runLimit
        completionHandler: (void (^)(OAIDeliverabilityAnalyticsSeriesDto* output, NSError* error)) handler;
```

Get deliverability analytics time series

Compare deliverability runs over a time range with bucketed chart metrics and run-level rows for table views.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSDate* since = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSString* scope = @"scope_example"; //  (optional)
NSString* bucket = @"DAY"; //  (optional) (default to @"DAY")
NSNumber* runLimit = @56; //  (optional)

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// Get deliverability analytics time series
[apiInstance getDeliverabilityAnalyticsSeriesWithSince:since
              before:before
              scope:scope
              bucket:bucket
              runLimit:runLimit
          completionHandler: ^(OAIDeliverabilityAnalyticsSeriesDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->getDeliverabilityAnalyticsSeries: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **NSDate***|  | [optional] 
 **before** | **NSDate***|  | [optional] 
 **scope** | **NSString***|  | [optional] 
 **bucket** | **NSString***|  | [optional] [default to @&quot;DAY&quot;]
 **runLimit** | **NSNumber***|  | [optional] 

### Return type

[**OAIDeliverabilityAnalyticsSeriesDto***](OAIDeliverabilityAnalyticsSeriesDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverabilityFailureHotspots**
```objc
-(NSURLSessionTask*) getDeliverabilityFailureHotspotsWithSince: (NSDate*) since
    before: (NSDate*) before
    scope: (NSString*) scope
    limit: (NSNumber*) limit
        completionHandler: (void (^)(OAIDeliverabilityFailureHotspotsDto* output, NSError* error)) handler;
```

Get deliverability failure hotspots

Find commonly failing entities and phone country/variant dimensions across deliverability runs in a time range.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSDate* since = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSString* scope = @"scope_example"; //  (optional)
NSNumber* limit = @56; //  (optional)

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// Get deliverability failure hotspots
[apiInstance getDeliverabilityFailureHotspotsWithSince:since
              before:before
              scope:scope
              limit:limit
          completionHandler: ^(OAIDeliverabilityFailureHotspotsDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->getDeliverabilityFailureHotspots: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **NSDate***|  | [optional] 
 **before** | **NSDate***|  | [optional] 
 **scope** | **NSString***|  | [optional] 
 **limit** | **NSNumber***|  | [optional] 

### Return type

[**OAIDeliverabilityFailureHotspotsDto***](OAIDeliverabilityFailureHotspotsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverabilitySimulationJob**
```objc
-(NSURLSessionTask*) getDeliverabilitySimulationJobWithTestId: (NSString*) testId
    jobId: (NSString*) jobId
        completionHandler: (void (^)(OAIDeliverabilitySimulationJobDto* output, NSError* error)) handler;
```

Get deliverability simulation job

Get simulation job status and progress counters.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* testId = @"testId_example"; // 
NSString* jobId = @"jobId_example"; // 

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// Get deliverability simulation job
[apiInstance getDeliverabilitySimulationJobWithTestId:testId
              jobId:jobId
          completionHandler: ^(OAIDeliverabilitySimulationJobDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->getDeliverabilitySimulationJob: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | [**NSString***]()|  | 
 **jobId** | [**NSString***]()|  | 

### Return type

[**OAIDeliverabilitySimulationJobDto***](OAIDeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverabilitySimulationJobEvents**
```objc
-(NSURLSessionTask*) getDeliverabilitySimulationJobEventsWithTestId: (NSString*) testId
    jobId: (NSString*) jobId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIDeliverabilitySimulationJobEventPageDto* output, NSError* error)) handler;
```

Get deliverability simulation job events

Get paged simulation events including send successes and failures.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* testId = @"testId_example"; // 
NSString* jobId = @"jobId_example"; // 
NSNumber* page = @0; //  (optional) (default to @0)
NSNumber* size = @20; //  (optional) (default to @20)
NSString* sort = @"DESC"; //  (optional) (default to @"DESC")

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// Get deliverability simulation job events
[apiInstance getDeliverabilitySimulationJobEventsWithTestId:testId
              jobId:jobId
              page:page
              size:size
              sort:sort
          completionHandler: ^(OAIDeliverabilitySimulationJobEventPageDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->getDeliverabilitySimulationJobEvents: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | [**NSString***]()|  | 
 **jobId** | [**NSString***]()|  | 
 **page** | **NSNumber***|  | [optional] [default to @0]
 **size** | **NSNumber***|  | [optional] [default to @20]
 **sort** | **NSString***|  | [optional] [default to @&quot;DESC&quot;]

### Return type

[**OAIDeliverabilitySimulationJobEventPageDto***](OAIDeliverabilitySimulationJobEventPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverabilityTest**
```objc
-(NSURLSessionTask*) getDeliverabilityTestWithTestId: (NSString*) testId
        completionHandler: (void (^)(OAIDeliverabilityTestDto* output, NSError* error)) handler;
```

Get deliverability/load test

Get deliverability test configuration and latest progress counters.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* testId = @"testId_example"; // 

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// Get deliverability/load test
[apiInstance getDeliverabilityTestWithTestId:testId
          completionHandler: ^(OAIDeliverabilityTestDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->getDeliverabilityTest: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | [**NSString***]()|  | 

### Return type

[**OAIDeliverabilityTestDto***](OAIDeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverabilityTestResults**
```objc
-(NSURLSessionTask*) getDeliverabilityTestResultsWithTestId: (NSString*) testId
    matched: (NSNumber*) matched
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIDeliverabilityEntityResultPageDto* output, NSError* error)) handler;
```

Get deliverability/load test entity results

Get paged per-entity expectation results with optional matched/unmatched filtering.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* testId = @"testId_example"; // 
NSNumber* matched = @56; //  (optional)
NSNumber* page = @0; //  (optional) (default to @0)
NSNumber* size = @20; //  (optional) (default to @20)
NSString* sort = @"ASC"; //  (optional) (default to @"ASC")

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// Get deliverability/load test entity results
[apiInstance getDeliverabilityTestResultsWithTestId:testId
              matched:matched
              page:page
              size:size
              sort:sort
          completionHandler: ^(OAIDeliverabilityEntityResultPageDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->getDeliverabilityTestResults: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | [**NSString***]()|  | 
 **matched** | **NSNumber***|  | [optional] 
 **page** | **NSNumber***|  | [optional] [default to @0]
 **size** | **NSNumber***|  | [optional] [default to @20]
 **sort** | **NSString***|  | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIDeliverabilityEntityResultPageDto***](OAIDeliverabilityEntityResultPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverabilityTests**
```objc
-(NSURLSessionTask*) getDeliverabilityTestsWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIDeliverabilityTestPageDto* output, NSError* error)) handler;
```

List deliverability/load tests

List deliverability tests for the authenticated account.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Page index (optional) (default to @0)
NSNumber* size = @20; // Page size (optional) (default to @20)
NSString* sort = @"DESC"; // Sort direction (optional) (default to @"DESC")

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// List deliverability/load tests
[apiInstance getDeliverabilityTestsWithPage:page
              size:size
              sort:sort
          completionHandler: ^(OAIDeliverabilityTestPageDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->getDeliverabilityTests: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Page index | [optional] [default to @0]
 **size** | **NSNumber***| Page size | [optional] [default to @20]
 **sort** | **NSString***| Sort direction | [optional] [default to @&quot;DESC&quot;]

### Return type

[**OAIDeliverabilityTestPageDto***](OAIDeliverabilityTestPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getLatestDeliverabilitySimulationJob**
```objc
-(NSURLSessionTask*) getLatestDeliverabilitySimulationJobWithTestId: (NSString*) testId
        completionHandler: (void (^)(OAIDeliverabilitySimulationJobDto* output, NSError* error)) handler;
```

Get latest deliverability simulation job

Get the most recent simulation job for a deliverability test.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* testId = @"testId_example"; // 

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// Get latest deliverability simulation job
[apiInstance getLatestDeliverabilitySimulationJobWithTestId:testId
          completionHandler: ^(OAIDeliverabilitySimulationJobDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->getLatestDeliverabilitySimulationJob: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | [**NSString***]()|  | 

### Return type

[**OAIDeliverabilitySimulationJobDto***](OAIDeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **pauseDeliverabilitySimulationJob**
```objc
-(NSURLSessionTask*) pauseDeliverabilitySimulationJobWithTestId: (NSString*) testId
    jobId: (NSString*) jobId
        completionHandler: (void (^)(OAIDeliverabilitySimulationJobDto* output, NSError* error)) handler;
```

Pause deliverability simulation job

Pause a running simulation job.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* testId = @"testId_example"; // 
NSString* jobId = @"jobId_example"; // 

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// Pause deliverability simulation job
[apiInstance pauseDeliverabilitySimulationJobWithTestId:testId
              jobId:jobId
          completionHandler: ^(OAIDeliverabilitySimulationJobDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->pauseDeliverabilitySimulationJob: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | [**NSString***]()|  | 
 **jobId** | [**NSString***]()|  | 

### Return type

[**OAIDeliverabilitySimulationJobDto***](OAIDeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **pauseDeliverabilityTest**
```objc
-(NSURLSessionTask*) pauseDeliverabilityTestWithTestId: (NSString*) testId
        completionHandler: (void (^)(OAIDeliverabilityTestDto* output, NSError* error)) handler;
```

Pause deliverability/load test

Pause a RUNNING or SCHEDULED deliverability test.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* testId = @"testId_example"; // 

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// Pause deliverability/load test
[apiInstance pauseDeliverabilityTestWithTestId:testId
          completionHandler: ^(OAIDeliverabilityTestDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->pauseDeliverabilityTest: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | [**NSString***]()|  | 

### Return type

[**OAIDeliverabilityTestDto***](OAIDeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **pollDeliverabilityTestStatus**
```objc
-(NSURLSessionTask*) pollDeliverabilityTestStatusWithTestId: (NSString*) testId
        completionHandler: (void (^)(OAIDeliverabilityPollStatusResultDto* output, NSError* error)) handler;
```

Poll deliverability/load test status

Poll test progress. Evaluation is throttled with a 5-second cache window to protect backing data stores.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* testId = @"testId_example"; // 

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// Poll deliverability/load test status
[apiInstance pollDeliverabilityTestStatusWithTestId:testId
          completionHandler: ^(OAIDeliverabilityPollStatusResultDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->pollDeliverabilityTestStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | [**NSString***]()|  | 

### Return type

[**OAIDeliverabilityPollStatusResultDto***](OAIDeliverabilityPollStatusResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **resumeDeliverabilitySimulationJob**
```objc
-(NSURLSessionTask*) resumeDeliverabilitySimulationJobWithTestId: (NSString*) testId
    jobId: (NSString*) jobId
        completionHandler: (void (^)(OAIDeliverabilitySimulationJobDto* output, NSError* error)) handler;
```

Resume deliverability simulation job

Resume a paused simulation job.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* testId = @"testId_example"; // 
NSString* jobId = @"jobId_example"; // 

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// Resume deliverability simulation job
[apiInstance resumeDeliverabilitySimulationJobWithTestId:testId
              jobId:jobId
          completionHandler: ^(OAIDeliverabilitySimulationJobDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->resumeDeliverabilitySimulationJob: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | [**NSString***]()|  | 
 **jobId** | [**NSString***]()|  | 

### Return type

[**OAIDeliverabilitySimulationJobDto***](OAIDeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **startDeliverabilityTest**
```objc
-(NSURLSessionTask*) startDeliverabilityTestWithTestId: (NSString*) testId
        completionHandler: (void (^)(OAIDeliverabilityTestDto* output, NSError* error)) handler;
```

Start or resume deliverability/load test

Start a CREATED test or resume a PAUSED/SCHEDULED test.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* testId = @"testId_example"; // 

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// Start or resume deliverability/load test
[apiInstance startDeliverabilityTestWithTestId:testId
          completionHandler: ^(OAIDeliverabilityTestDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->startDeliverabilityTest: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | [**NSString***]()|  | 

### Return type

[**OAIDeliverabilityTestDto***](OAIDeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **stopDeliverabilityTest**
```objc
-(NSURLSessionTask*) stopDeliverabilityTestWithTestId: (NSString*) testId
        completionHandler: (void (^)(OAIDeliverabilityTestDto* output, NSError* error)) handler;
```

Stop deliverability/load test

Stop a deliverability test and mark it terminal.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* testId = @"testId_example"; // 

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// Stop deliverability/load test
[apiInstance stopDeliverabilityTestWithTestId:testId
          completionHandler: ^(OAIDeliverabilityTestDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->stopDeliverabilityTest: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | [**NSString***]()|  | 

### Return type

[**OAIDeliverabilityTestDto***](OAIDeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateDeliverabilityTest**
```objc
-(NSURLSessionTask*) updateDeliverabilityTestWithTestId: (NSString*) testId
    updateDeliverabilityTestOptions: (OAIUpdateDeliverabilityTestOptions*) updateDeliverabilityTestOptions
        completionHandler: (void (^)(OAIDeliverabilityTestDto* output, NSError* error)) handler;
```

Update deliverability/load test

Update metadata, timeout, and expectations for a non-running non-terminal test.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* testId = @"testId_example"; // 
OAIUpdateDeliverabilityTestOptions* updateDeliverabilityTestOptions = [[OAIUpdateDeliverabilityTestOptions alloc] init]; // 

OAIDeliverabilityTestControllerApi*apiInstance = [[OAIDeliverabilityTestControllerApi alloc] init];

// Update deliverability/load test
[apiInstance updateDeliverabilityTestWithTestId:testId
              updateDeliverabilityTestOptions:updateDeliverabilityTestOptions
          completionHandler: ^(OAIDeliverabilityTestDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliverabilityTestControllerApi->updateDeliverabilityTest: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | [**NSString***]()|  | 
 **updateDeliverabilityTestOptions** | [**OAIUpdateDeliverabilityTestOptions***](OAIUpdateDeliverabilityTestOptions)|  | 

### Return type

[**OAIDeliverabilityTestDto***](OAIDeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

