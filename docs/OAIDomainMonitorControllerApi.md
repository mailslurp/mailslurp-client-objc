# OAIDomainMonitorControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**compareDomainMonitorRuns**](OAIDomainMonitorControllerApi#comparedomainmonitorruns) | **GET** /domain-monitor/monitors/{monitorId}/runs/{runId}/compare/{otherRunId} | Compare two monitor runs
[**createDomainMonitor**](OAIDomainMonitorControllerApi#createdomainmonitor) | **POST** /domain-monitor/monitors | Create domain monitor
[**createDomainMonitorAlertSink**](OAIDomainMonitorControllerApi#createdomainmonitoralertsink) | **POST** /domain-monitor/monitors/{monitorId}/alert-sinks | Create alert sink for monitor
[**deleteDomainMonitor**](OAIDomainMonitorControllerApi#deletedomainmonitor) | **DELETE** /domain-monitor/monitors/{monitorId} | Delete domain monitor
[**deleteDomainMonitorAlertSink**](OAIDomainMonitorControllerApi#deletedomainmonitoralertsink) | **DELETE** /domain-monitor/monitors/{monitorId}/alert-sinks/{sinkId} | Delete monitor alert sink
[**getDomainMonitor**](OAIDomainMonitorControllerApi#getdomainmonitor) | **GET** /domain-monitor/monitors/{monitorId} | Get domain monitor
[**getDomainMonitorAlertSinks**](OAIDomainMonitorControllerApi#getdomainmonitoralertsinks) | **GET** /domain-monitor/monitors/{monitorId}/alert-sinks | List alert sinks for monitor
[**getDomainMonitorAuthStack**](OAIDomainMonitorControllerApi#getdomainmonitorauthstack) | **GET** /domain-monitor/monitors/{monitorId}/auth-stack | Get current auth stack for monitor domain
[**getDomainMonitorInsights**](OAIDomainMonitorControllerApi#getdomainmonitorinsights) | **GET** /domain-monitor/monitors/{monitorId}/insights | Get monitor insights
[**getDomainMonitorRun**](OAIDomainMonitorControllerApi#getdomainmonitorrun) | **GET** /domain-monitor/monitors/{monitorId}/runs/{runId} | Get monitor run
[**getDomainMonitorRuns**](OAIDomainMonitorControllerApi#getdomainmonitorruns) | **GET** /domain-monitor/monitors/{monitorId}/runs | List monitor runs
[**getDomainMonitorSeries**](OAIDomainMonitorControllerApi#getdomainmonitorseries) | **GET** /domain-monitor/monitors/{monitorId}/series | Get monitor trend series
[**getDomainMonitorSummary**](OAIDomainMonitorControllerApi#getdomainmonitorsummary) | **GET** /domain-monitor/monitors/{monitorId}/summary | Get domain monitor summary
[**getDomainMonitors**](OAIDomainMonitorControllerApi#getdomainmonitors) | **GET** /domain-monitor/monitors | List domain monitors
[**runDomainMonitorNow**](OAIDomainMonitorControllerApi#rundomainmonitornow) | **POST** /domain-monitor/monitors/{monitorId}/run-now | Run monitor now
[**runDueDomainMonitors**](OAIDomainMonitorControllerApi#runduedomainmonitors) | **POST** /domain-monitor/monitors/run-due | Run due monitors for user
[**updateDomainMonitor**](OAIDomainMonitorControllerApi#updatedomainmonitor) | **PUT** /domain-monitor/monitors/{monitorId} | Update domain monitor


# **compareDomainMonitorRuns**
```objc
-(NSURLSessionTask*) compareDomainMonitorRunsWithMonitorId: (NSString*) monitorId
    runId: (NSString*) runId
    otherRunId: (NSString*) otherRunId
        completionHandler: (void (^)(OAIDomainMonitorRunComparisonDto* output, NSError* error)) handler;
```

Compare two monitor runs

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* monitorId = @"monitorId_example"; // 
NSString* runId = @"runId_example"; // 
NSString* otherRunId = @"otherRunId_example"; // 

OAIDomainMonitorControllerApi*apiInstance = [[OAIDomainMonitorControllerApi alloc] init];

// Compare two monitor runs
[apiInstance compareDomainMonitorRunsWithMonitorId:monitorId
              runId:runId
              otherRunId:otherRunId
          completionHandler: ^(OAIDomainMonitorRunComparisonDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainMonitorControllerApi->compareDomainMonitorRuns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | [**NSString***]()|  | 
 **runId** | [**NSString***]()|  | 
 **otherRunId** | [**NSString***]()|  | 

### Return type

[**OAIDomainMonitorRunComparisonDto***](OAIDomainMonitorRunComparisonDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDomainMonitor**
```objc
-(NSURLSessionTask*) createDomainMonitorWithCreateDomainMonitorOptions: (OAICreateDomainMonitorOptions*) createDomainMonitorOptions
        completionHandler: (void (^)(OAIDomainMonitorDto* output, NSError* error)) handler;
```

Create domain monitor

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateDomainMonitorOptions* createDomainMonitorOptions = [[OAICreateDomainMonitorOptions alloc] init]; // 

OAIDomainMonitorControllerApi*apiInstance = [[OAIDomainMonitorControllerApi alloc] init];

// Create domain monitor
[apiInstance createDomainMonitorWithCreateDomainMonitorOptions:createDomainMonitorOptions
          completionHandler: ^(OAIDomainMonitorDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainMonitorControllerApi->createDomainMonitor: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDomainMonitorOptions** | [**OAICreateDomainMonitorOptions***](OAICreateDomainMonitorOptions)|  | 

### Return type

[**OAIDomainMonitorDto***](OAIDomainMonitorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDomainMonitorAlertSink**
```objc
-(NSURLSessionTask*) createDomainMonitorAlertSinkWithMonitorId: (NSString*) monitorId
    createDomainMonitorAlertSinkOptions: (OAICreateDomainMonitorAlertSinkOptions*) createDomainMonitorAlertSinkOptions
        completionHandler: (void (^)(OAIDomainMonitorAlertSinkDto* output, NSError* error)) handler;
```

Create alert sink for monitor

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* monitorId = @"monitorId_example"; // 
OAICreateDomainMonitorAlertSinkOptions* createDomainMonitorAlertSinkOptions = [[OAICreateDomainMonitorAlertSinkOptions alloc] init]; // 

OAIDomainMonitorControllerApi*apiInstance = [[OAIDomainMonitorControllerApi alloc] init];

// Create alert sink for monitor
[apiInstance createDomainMonitorAlertSinkWithMonitorId:monitorId
              createDomainMonitorAlertSinkOptions:createDomainMonitorAlertSinkOptions
          completionHandler: ^(OAIDomainMonitorAlertSinkDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainMonitorControllerApi->createDomainMonitorAlertSink: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | [**NSString***]()|  | 
 **createDomainMonitorAlertSinkOptions** | [**OAICreateDomainMonitorAlertSinkOptions***](OAICreateDomainMonitorAlertSinkOptions)|  | 

### Return type

[**OAIDomainMonitorAlertSinkDto***](OAIDomainMonitorAlertSinkDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDomainMonitor**
```objc
-(NSURLSessionTask*) deleteDomainMonitorWithMonitorId: (NSString*) monitorId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete domain monitor

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* monitorId = @"monitorId_example"; // 

OAIDomainMonitorControllerApi*apiInstance = [[OAIDomainMonitorControllerApi alloc] init];

// Delete domain monitor
[apiInstance deleteDomainMonitorWithMonitorId:monitorId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIDomainMonitorControllerApi->deleteDomainMonitor: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDomainMonitorAlertSink**
```objc
-(NSURLSessionTask*) deleteDomainMonitorAlertSinkWithMonitorId: (NSString*) monitorId
    sinkId: (NSString*) sinkId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete monitor alert sink

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* monitorId = @"monitorId_example"; // 
NSString* sinkId = @"sinkId_example"; // 

OAIDomainMonitorControllerApi*apiInstance = [[OAIDomainMonitorControllerApi alloc] init];

// Delete monitor alert sink
[apiInstance deleteDomainMonitorAlertSinkWithMonitorId:monitorId
              sinkId:sinkId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIDomainMonitorControllerApi->deleteDomainMonitorAlertSink: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | [**NSString***]()|  | 
 **sinkId** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitor**
```objc
-(NSURLSessionTask*) getDomainMonitorWithMonitorId: (NSString*) monitorId
        completionHandler: (void (^)(OAIDomainMonitorDto* output, NSError* error)) handler;
```

Get domain monitor

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* monitorId = @"monitorId_example"; // 

OAIDomainMonitorControllerApi*apiInstance = [[OAIDomainMonitorControllerApi alloc] init];

// Get domain monitor
[apiInstance getDomainMonitorWithMonitorId:monitorId
          completionHandler: ^(OAIDomainMonitorDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainMonitorControllerApi->getDomainMonitor: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | [**NSString***]()|  | 

### Return type

[**OAIDomainMonitorDto***](OAIDomainMonitorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitorAlertSinks**
```objc
-(NSURLSessionTask*) getDomainMonitorAlertSinksWithMonitorId: (NSString*) monitorId
        completionHandler: (void (^)(NSArray<OAIDomainMonitorAlertSinkDto>* output, NSError* error)) handler;
```

List alert sinks for monitor

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* monitorId = @"monitorId_example"; // 

OAIDomainMonitorControllerApi*apiInstance = [[OAIDomainMonitorControllerApi alloc] init];

// List alert sinks for monitor
[apiInstance getDomainMonitorAlertSinksWithMonitorId:monitorId
          completionHandler: ^(NSArray<OAIDomainMonitorAlertSinkDto>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainMonitorControllerApi->getDomainMonitorAlertSinks: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | [**NSString***]()|  | 

### Return type

[**NSArray<OAIDomainMonitorAlertSinkDto>***](OAIDomainMonitorAlertSinkDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitorAuthStack**
```objc
-(NSURLSessionTask*) getDomainMonitorAuthStackWithMonitorId: (NSString*) monitorId
    dkimSelector: (NSString*) dkimSelector
        completionHandler: (void (^)(OAICheckEmailAuthStackResults* output, NSError* error)) handler;
```

Get current auth stack for monitor domain

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* monitorId = @"monitorId_example"; // 
NSString* dkimSelector = @"dkimSelector_example"; //  (optional)

OAIDomainMonitorControllerApi*apiInstance = [[OAIDomainMonitorControllerApi alloc] init];

// Get current auth stack for monitor domain
[apiInstance getDomainMonitorAuthStackWithMonitorId:monitorId
              dkimSelector:dkimSelector
          completionHandler: ^(OAICheckEmailAuthStackResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainMonitorControllerApi->getDomainMonitorAuthStack: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | [**NSString***]()|  | 
 **dkimSelector** | **NSString***|  | [optional] 

### Return type

[**OAICheckEmailAuthStackResults***](OAICheckEmailAuthStackResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitorInsights**
```objc
-(NSURLSessionTask*) getDomainMonitorInsightsWithMonitorId: (NSString*) monitorId
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIDomainMonitorInsightsDto* output, NSError* error)) handler;
```

Get monitor insights

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* monitorId = @"monitorId_example"; // 
NSDate* since = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; //  (optional)

OAIDomainMonitorControllerApi*apiInstance = [[OAIDomainMonitorControllerApi alloc] init];

// Get monitor insights
[apiInstance getDomainMonitorInsightsWithMonitorId:monitorId
              since:since
              before:before
          completionHandler: ^(OAIDomainMonitorInsightsDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainMonitorControllerApi->getDomainMonitorInsights: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | [**NSString***]()|  | 
 **since** | **NSDate***|  | [optional] 
 **before** | **NSDate***|  | [optional] 

### Return type

[**OAIDomainMonitorInsightsDto***](OAIDomainMonitorInsightsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitorRun**
```objc
-(NSURLSessionTask*) getDomainMonitorRunWithMonitorId: (NSString*) monitorId
    runId: (NSString*) runId
        completionHandler: (void (^)(OAIDomainMonitorRunDto* output, NSError* error)) handler;
```

Get monitor run

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* monitorId = @"monitorId_example"; // 
NSString* runId = @"runId_example"; // 

OAIDomainMonitorControllerApi*apiInstance = [[OAIDomainMonitorControllerApi alloc] init];

// Get monitor run
[apiInstance getDomainMonitorRunWithMonitorId:monitorId
              runId:runId
          completionHandler: ^(OAIDomainMonitorRunDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainMonitorControllerApi->getDomainMonitorRun: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | [**NSString***]()|  | 
 **runId** | [**NSString***]()|  | 

### Return type

[**OAIDomainMonitorRunDto***](OAIDomainMonitorRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitorRuns**
```objc
-(NSURLSessionTask*) getDomainMonitorRunsWithMonitorId: (NSString*) monitorId
    since: (NSDate*) since
    before: (NSDate*) before
    status: (NSString*) status
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<OAIDomainMonitorRunDto>* output, NSError* error)) handler;
```

List monitor runs

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* monitorId = @"monitorId_example"; // 
NSDate* since = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSString* status = @"status_example"; //  (optional)
NSNumber* limit = @56; //  (optional)

OAIDomainMonitorControllerApi*apiInstance = [[OAIDomainMonitorControllerApi alloc] init];

// List monitor runs
[apiInstance getDomainMonitorRunsWithMonitorId:monitorId
              since:since
              before:before
              status:status
              limit:limit
          completionHandler: ^(NSArray<OAIDomainMonitorRunDto>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainMonitorControllerApi->getDomainMonitorRuns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | [**NSString***]()|  | 
 **since** | **NSDate***|  | [optional] 
 **before** | **NSDate***|  | [optional] 
 **status** | **NSString***|  | [optional] 
 **limit** | **NSNumber***|  | [optional] 

### Return type

[**NSArray<OAIDomainMonitorRunDto>***](OAIDomainMonitorRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitorSeries**
```objc
-(NSURLSessionTask*) getDomainMonitorSeriesWithMonitorId: (NSString*) monitorId
    since: (NSDate*) since
    before: (NSDate*) before
    bucket: (NSString*) bucket
        completionHandler: (void (^)(OAIDomainMonitorSeriesDto* output, NSError* error)) handler;
```

Get monitor trend series

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* monitorId = @"monitorId_example"; // 
NSDate* since = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSString* bucket = @"DAY"; //  (optional) (default to @"DAY")

OAIDomainMonitorControllerApi*apiInstance = [[OAIDomainMonitorControllerApi alloc] init];

// Get monitor trend series
[apiInstance getDomainMonitorSeriesWithMonitorId:monitorId
              since:since
              before:before
              bucket:bucket
          completionHandler: ^(OAIDomainMonitorSeriesDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainMonitorControllerApi->getDomainMonitorSeries: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | [**NSString***]()|  | 
 **since** | **NSDate***|  | [optional] 
 **before** | **NSDate***|  | [optional] 
 **bucket** | **NSString***|  | [optional] [default to @&quot;DAY&quot;]

### Return type

[**OAIDomainMonitorSeriesDto***](OAIDomainMonitorSeriesDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitorSummary**
```objc
-(NSURLSessionTask*) getDomainMonitorSummaryWithMonitorId: (NSString*) monitorId
    dkimSelector: (NSString*) dkimSelector
        completionHandler: (void (^)(OAIDomainMonitorSummaryDto* output, NSError* error)) handler;
```

Get domain monitor summary

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* monitorId = @"monitorId_example"; // 
NSString* dkimSelector = @"dkimSelector_example"; //  (optional)

OAIDomainMonitorControllerApi*apiInstance = [[OAIDomainMonitorControllerApi alloc] init];

// Get domain monitor summary
[apiInstance getDomainMonitorSummaryWithMonitorId:monitorId
              dkimSelector:dkimSelector
          completionHandler: ^(OAIDomainMonitorSummaryDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainMonitorControllerApi->getDomainMonitorSummary: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | [**NSString***]()|  | 
 **dkimSelector** | **NSString***|  | [optional] 

### Return type

[**OAIDomainMonitorSummaryDto***](OAIDomainMonitorSummaryDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitors**
```objc
-(NSURLSessionTask*) getDomainMonitorsWithCompletionHandler: 
        (void (^)(NSArray<OAIDomainMonitorDto>* output, NSError* error)) handler;
```

List domain monitors

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIDomainMonitorControllerApi*apiInstance = [[OAIDomainMonitorControllerApi alloc] init];

// List domain monitors
[apiInstance getDomainMonitorsWithCompletionHandler: 
          ^(NSArray<OAIDomainMonitorDto>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainMonitorControllerApi->getDomainMonitors: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIDomainMonitorDto>***](OAIDomainMonitorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **runDomainMonitorNow**
```objc
-(NSURLSessionTask*) runDomainMonitorNowWithMonitorId: (NSString*) monitorId
        completionHandler: (void (^)(OAIDomainMonitorRunNowResult* output, NSError* error)) handler;
```

Run monitor now

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* monitorId = @"monitorId_example"; // 

OAIDomainMonitorControllerApi*apiInstance = [[OAIDomainMonitorControllerApi alloc] init];

// Run monitor now
[apiInstance runDomainMonitorNowWithMonitorId:monitorId
          completionHandler: ^(OAIDomainMonitorRunNowResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainMonitorControllerApi->runDomainMonitorNow: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | [**NSString***]()|  | 

### Return type

[**OAIDomainMonitorRunNowResult***](OAIDomainMonitorRunNowResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **runDueDomainMonitors**
```objc
-(NSURLSessionTask*) runDueDomainMonitorsWithMaxRuns: (NSNumber*) maxRuns
        completionHandler: (void (^)(OAIDomainMonitorRunDueResult* output, NSError* error)) handler;
```

Run due monitors for user

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* maxRuns = @56; //  (optional)

OAIDomainMonitorControllerApi*apiInstance = [[OAIDomainMonitorControllerApi alloc] init];

// Run due monitors for user
[apiInstance runDueDomainMonitorsWithMaxRuns:maxRuns
          completionHandler: ^(OAIDomainMonitorRunDueResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainMonitorControllerApi->runDueDomainMonitors: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxRuns** | **NSNumber***|  | [optional] 

### Return type

[**OAIDomainMonitorRunDueResult***](OAIDomainMonitorRunDueResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateDomainMonitor**
```objc
-(NSURLSessionTask*) updateDomainMonitorWithMonitorId: (NSString*) monitorId
    updateDomainMonitorOptions: (OAIUpdateDomainMonitorOptions*) updateDomainMonitorOptions
        completionHandler: (void (^)(OAIDomainMonitorDto* output, NSError* error)) handler;
```

Update domain monitor

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* monitorId = @"monitorId_example"; // 
OAIUpdateDomainMonitorOptions* updateDomainMonitorOptions = [[OAIUpdateDomainMonitorOptions alloc] init]; // 

OAIDomainMonitorControllerApi*apiInstance = [[OAIDomainMonitorControllerApi alloc] init];

// Update domain monitor
[apiInstance updateDomainMonitorWithMonitorId:monitorId
              updateDomainMonitorOptions:updateDomainMonitorOptions
          completionHandler: ^(OAIDomainMonitorDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainMonitorControllerApi->updateDomainMonitor: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monitorId** | [**NSString***]()|  | 
 **updateDomainMonitorOptions** | [**OAIUpdateDomainMonitorOptions***](OAIUpdateDomainMonitorOptions)|  | 

### Return type

[**OAIDomainMonitorDto***](OAIDomainMonitorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

