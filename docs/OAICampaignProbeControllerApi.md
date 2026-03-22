# OAICampaignProbeControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**compareCampaignProbeRuns**](OAICampaignProbeControllerApi#comparecampaignproberuns) | **GET** /campaign-probe/probes/{probeId}/runs/{runId}/compare/{otherRunId} | Compare two campaign probe runs
[**createCampaignProbe**](OAICampaignProbeControllerApi#createcampaignprobe) | **POST** /campaign-probe/probes | Create campaign probe
[**deleteCampaignProbe**](OAICampaignProbeControllerApi#deletecampaignprobe) | **DELETE** /campaign-probe/probes/{probeId} | Delete campaign probe
[**getCampaignProbe**](OAICampaignProbeControllerApi#getcampaignprobe) | **GET** /campaign-probe/probes/{probeId} | Get campaign probe
[**getCampaignProbeInsights**](OAICampaignProbeControllerApi#getcampaignprobeinsights) | **GET** /campaign-probe/probes/{probeId}/insights | Get campaign probe insights
[**getCampaignProbeRun**](OAICampaignProbeControllerApi#getcampaignproberun) | **GET** /campaign-probe/probes/{probeId}/runs/{runId} | Get campaign probe run
[**getCampaignProbeRuns**](OAICampaignProbeControllerApi#getcampaignproberuns) | **GET** /campaign-probe/probes/{probeId}/runs | List campaign probe runs
[**getCampaignProbeSeries**](OAICampaignProbeControllerApi#getcampaignprobeseries) | **GET** /campaign-probe/probes/{probeId}/series | Get campaign probe trend series
[**getCampaignProbes**](OAICampaignProbeControllerApi#getcampaignprobes) | **GET** /campaign-probe/probes | List campaign probes
[**runCampaignProbeNow**](OAICampaignProbeControllerApi#runcampaignprobenow) | **POST** /campaign-probe/probes/{probeId}/run-now | Run campaign probe now
[**runDueCampaignProbes**](OAICampaignProbeControllerApi#runduecampaignprobes) | **POST** /campaign-probe/probes/run-due | Run due campaign probes for user
[**updateCampaignProbe**](OAICampaignProbeControllerApi#updatecampaignprobe) | **PUT** /campaign-probe/probes/{probeId} | Update campaign probe


# **compareCampaignProbeRuns**
```objc
-(NSURLSessionTask*) compareCampaignProbeRunsWithProbeId: (NSString*) probeId
    runId: (NSString*) runId
    otherRunId: (NSString*) otherRunId
        completionHandler: (void (^)(OAICampaignProbeRunComparisonDto* output, NSError* error)) handler;
```

Compare two campaign probe runs

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* probeId = @"probeId_example"; // 
NSString* runId = @"runId_example"; // 
NSString* otherRunId = @"otherRunId_example"; // 

OAICampaignProbeControllerApi*apiInstance = [[OAICampaignProbeControllerApi alloc] init];

// Compare two campaign probe runs
[apiInstance compareCampaignProbeRunsWithProbeId:probeId
              runId:runId
              otherRunId:otherRunId
          completionHandler: ^(OAICampaignProbeRunComparisonDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICampaignProbeControllerApi->compareCampaignProbeRuns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probeId** | [**NSString***]()|  | 
 **runId** | [**NSString***]()|  | 
 **otherRunId** | [**NSString***]()|  | 

### Return type

[**OAICampaignProbeRunComparisonDto***](OAICampaignProbeRunComparisonDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createCampaignProbe**
```objc
-(NSURLSessionTask*) createCampaignProbeWithCreateCampaignProbeOptions: (OAICreateCampaignProbeOptions*) createCampaignProbeOptions
        completionHandler: (void (^)(OAICampaignProbeDto* output, NSError* error)) handler;
```

Create campaign probe

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateCampaignProbeOptions* createCampaignProbeOptions = [[OAICreateCampaignProbeOptions alloc] init]; // 

OAICampaignProbeControllerApi*apiInstance = [[OAICampaignProbeControllerApi alloc] init];

// Create campaign probe
[apiInstance createCampaignProbeWithCreateCampaignProbeOptions:createCampaignProbeOptions
          completionHandler: ^(OAICampaignProbeDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICampaignProbeControllerApi->createCampaignProbe: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCampaignProbeOptions** | [**OAICreateCampaignProbeOptions***](OAICreateCampaignProbeOptions)|  | 

### Return type

[**OAICampaignProbeDto***](OAICampaignProbeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteCampaignProbe**
```objc
-(NSURLSessionTask*) deleteCampaignProbeWithProbeId: (NSString*) probeId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete campaign probe

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* probeId = @"probeId_example"; // 

OAICampaignProbeControllerApi*apiInstance = [[OAICampaignProbeControllerApi alloc] init];

// Delete campaign probe
[apiInstance deleteCampaignProbeWithProbeId:probeId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAICampaignProbeControllerApi->deleteCampaignProbe: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probeId** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getCampaignProbe**
```objc
-(NSURLSessionTask*) getCampaignProbeWithProbeId: (NSString*) probeId
        completionHandler: (void (^)(OAICampaignProbeDto* output, NSError* error)) handler;
```

Get campaign probe

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* probeId = @"probeId_example"; // 

OAICampaignProbeControllerApi*apiInstance = [[OAICampaignProbeControllerApi alloc] init];

// Get campaign probe
[apiInstance getCampaignProbeWithProbeId:probeId
          completionHandler: ^(OAICampaignProbeDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICampaignProbeControllerApi->getCampaignProbe: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probeId** | [**NSString***]()|  | 

### Return type

[**OAICampaignProbeDto***](OAICampaignProbeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getCampaignProbeInsights**
```objc
-(NSURLSessionTask*) getCampaignProbeInsightsWithProbeId: (NSString*) probeId
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAICampaignProbeInsightsDto* output, NSError* error)) handler;
```

Get campaign probe insights

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* probeId = @"probeId_example"; // 
NSDate* since = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; //  (optional)

OAICampaignProbeControllerApi*apiInstance = [[OAICampaignProbeControllerApi alloc] init];

// Get campaign probe insights
[apiInstance getCampaignProbeInsightsWithProbeId:probeId
              since:since
              before:before
          completionHandler: ^(OAICampaignProbeInsightsDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICampaignProbeControllerApi->getCampaignProbeInsights: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probeId** | [**NSString***]()|  | 
 **since** | **NSDate***|  | [optional] 
 **before** | **NSDate***|  | [optional] 

### Return type

[**OAICampaignProbeInsightsDto***](OAICampaignProbeInsightsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getCampaignProbeRun**
```objc
-(NSURLSessionTask*) getCampaignProbeRunWithProbeId: (NSString*) probeId
    runId: (NSString*) runId
        completionHandler: (void (^)(OAICampaignProbeRunDto* output, NSError* error)) handler;
```

Get campaign probe run

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* probeId = @"probeId_example"; // 
NSString* runId = @"runId_example"; // 

OAICampaignProbeControllerApi*apiInstance = [[OAICampaignProbeControllerApi alloc] init];

// Get campaign probe run
[apiInstance getCampaignProbeRunWithProbeId:probeId
              runId:runId
          completionHandler: ^(OAICampaignProbeRunDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICampaignProbeControllerApi->getCampaignProbeRun: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probeId** | [**NSString***]()|  | 
 **runId** | [**NSString***]()|  | 

### Return type

[**OAICampaignProbeRunDto***](OAICampaignProbeRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getCampaignProbeRuns**
```objc
-(NSURLSessionTask*) getCampaignProbeRunsWithProbeId: (NSString*) probeId
    since: (NSDate*) since
    before: (NSDate*) before
    status: (NSString*) status
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<OAICampaignProbeRunDto>* output, NSError* error)) handler;
```

List campaign probe runs

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* probeId = @"probeId_example"; // 
NSDate* since = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSString* status = @"status_example"; //  (optional)
NSNumber* limit = @56; //  (optional)

OAICampaignProbeControllerApi*apiInstance = [[OAICampaignProbeControllerApi alloc] init];

// List campaign probe runs
[apiInstance getCampaignProbeRunsWithProbeId:probeId
              since:since
              before:before
              status:status
              limit:limit
          completionHandler: ^(NSArray<OAICampaignProbeRunDto>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICampaignProbeControllerApi->getCampaignProbeRuns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probeId** | [**NSString***]()|  | 
 **since** | **NSDate***|  | [optional] 
 **before** | **NSDate***|  | [optional] 
 **status** | **NSString***|  | [optional] 
 **limit** | **NSNumber***|  | [optional] 

### Return type

[**NSArray<OAICampaignProbeRunDto>***](OAICampaignProbeRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getCampaignProbeSeries**
```objc
-(NSURLSessionTask*) getCampaignProbeSeriesWithProbeId: (NSString*) probeId
    since: (NSDate*) since
    before: (NSDate*) before
    bucket: (NSString*) bucket
        completionHandler: (void (^)(OAICampaignProbeSeriesDto* output, NSError* error)) handler;
```

Get campaign probe trend series

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* probeId = @"probeId_example"; // 
NSDate* since = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSString* bucket = @"DAY"; //  (optional) (default to @"DAY")

OAICampaignProbeControllerApi*apiInstance = [[OAICampaignProbeControllerApi alloc] init];

// Get campaign probe trend series
[apiInstance getCampaignProbeSeriesWithProbeId:probeId
              since:since
              before:before
              bucket:bucket
          completionHandler: ^(OAICampaignProbeSeriesDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICampaignProbeControllerApi->getCampaignProbeSeries: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probeId** | [**NSString***]()|  | 
 **since** | **NSDate***|  | [optional] 
 **before** | **NSDate***|  | [optional] 
 **bucket** | **NSString***|  | [optional] [default to @&quot;DAY&quot;]

### Return type

[**OAICampaignProbeSeriesDto***](OAICampaignProbeSeriesDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getCampaignProbes**
```objc
-(NSURLSessionTask*) getCampaignProbesWithCompletionHandler: 
        (void (^)(NSArray<OAICampaignProbeDto>* output, NSError* error)) handler;
```

List campaign probes

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAICampaignProbeControllerApi*apiInstance = [[OAICampaignProbeControllerApi alloc] init];

// List campaign probes
[apiInstance getCampaignProbesWithCompletionHandler: 
          ^(NSArray<OAICampaignProbeDto>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICampaignProbeControllerApi->getCampaignProbes: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAICampaignProbeDto>***](OAICampaignProbeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **runCampaignProbeNow**
```objc
-(NSURLSessionTask*) runCampaignProbeNowWithProbeId: (NSString*) probeId
    createCampaignProbeRunOptions: (OAICreateCampaignProbeRunOptions*) createCampaignProbeRunOptions
        completionHandler: (void (^)(OAICampaignProbeRunNowResult* output, NSError* error)) handler;
```

Run campaign probe now

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* probeId = @"probeId_example"; // 
OAICreateCampaignProbeRunOptions* createCampaignProbeRunOptions = [[OAICreateCampaignProbeRunOptions alloc] init]; // 

OAICampaignProbeControllerApi*apiInstance = [[OAICampaignProbeControllerApi alloc] init];

// Run campaign probe now
[apiInstance runCampaignProbeNowWithProbeId:probeId
              createCampaignProbeRunOptions:createCampaignProbeRunOptions
          completionHandler: ^(OAICampaignProbeRunNowResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICampaignProbeControllerApi->runCampaignProbeNow: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probeId** | [**NSString***]()|  | 
 **createCampaignProbeRunOptions** | [**OAICreateCampaignProbeRunOptions***](OAICreateCampaignProbeRunOptions)|  | 

### Return type

[**OAICampaignProbeRunNowResult***](OAICampaignProbeRunNowResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **runDueCampaignProbes**
```objc
-(NSURLSessionTask*) runDueCampaignProbesWithMaxRuns: (NSNumber*) maxRuns
        completionHandler: (void (^)(OAICampaignProbeRunDueResult* output, NSError* error)) handler;
```

Run due campaign probes for user

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* maxRuns = @56; //  (optional)

OAICampaignProbeControllerApi*apiInstance = [[OAICampaignProbeControllerApi alloc] init];

// Run due campaign probes for user
[apiInstance runDueCampaignProbesWithMaxRuns:maxRuns
          completionHandler: ^(OAICampaignProbeRunDueResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICampaignProbeControllerApi->runDueCampaignProbes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxRuns** | **NSNumber***|  | [optional] 

### Return type

[**OAICampaignProbeRunDueResult***](OAICampaignProbeRunDueResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateCampaignProbe**
```objc
-(NSURLSessionTask*) updateCampaignProbeWithProbeId: (NSString*) probeId
    updateCampaignProbeOptions: (OAIUpdateCampaignProbeOptions*) updateCampaignProbeOptions
        completionHandler: (void (^)(OAICampaignProbeDto* output, NSError* error)) handler;
```

Update campaign probe

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* probeId = @"probeId_example"; // 
OAIUpdateCampaignProbeOptions* updateCampaignProbeOptions = [[OAIUpdateCampaignProbeOptions alloc] init]; // 

OAICampaignProbeControllerApi*apiInstance = [[OAICampaignProbeControllerApi alloc] init];

// Update campaign probe
[apiInstance updateCampaignProbeWithProbeId:probeId
              updateCampaignProbeOptions:updateCampaignProbeOptions
          completionHandler: ^(OAICampaignProbeDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICampaignProbeControllerApi->updateCampaignProbe: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probeId** | [**NSString***]()|  | 
 **updateCampaignProbeOptions** | [**OAIUpdateCampaignProbeOptions***](OAIUpdateCampaignProbeOptions)|  | 

### Return type

[**OAICampaignProbeDto***](OAICampaignProbeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

