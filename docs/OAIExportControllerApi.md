# OAIExportControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exportEntities**](OAIExportControllerApi#exportentities) | **GET** /export | Export inboxes link callable via browser
[**getExportLink**](OAIExportControllerApi#getexportlink) | **POST** /export | Get export link


# **exportEntities**
```objc
-(NSURLSessionTask*) exportEntitiesWithExportType: (NSString*) exportType
    apiKey: (NSString*) apiKey
    outputFormat: (NSString*) outputFormat
    filter: (NSString*) filter
    listSeparatorToken: (NSString*) listSeparatorToken
    excludePreviouslyExported: (NSNumber*) excludePreviouslyExported
    createdEarliestTime: (NSDate*) createdEarliestTime
    createdOldestTime: (NSDate*) createdOldestTime
        completionHandler: (void (^)(NSArray<NSData*>* output, NSError* error)) handler;
```

Export inboxes link callable via browser

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* exportType = @"exportType_example"; // 
NSString* apiKey = @"apiKey_example"; // 
NSString* outputFormat = @"outputFormat_example"; // 
NSString* filter = @"filter_example"; //  (optional)
NSString* listSeparatorToken = @"listSeparatorToken_example"; //  (optional)
NSNumber* excludePreviouslyExported = @56; //  (optional)
NSDate* createdEarliestTime = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSDate* createdOldestTime = @"2013-10-20T19:20:30+01:00"; //  (optional)

OAIExportControllerApi*apiInstance = [[OAIExportControllerApi alloc] init];

// Export inboxes link callable via browser
[apiInstance exportEntitiesWithExportType:exportType
              apiKey:apiKey
              outputFormat:outputFormat
              filter:filter
              listSeparatorToken:listSeparatorToken
              excludePreviouslyExported:excludePreviouslyExported
              createdEarliestTime:createdEarliestTime
              createdOldestTime:createdOldestTime
          completionHandler: ^(NSArray<NSData*>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIExportControllerApi->exportEntities: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exportType** | **NSString***|  | 
 **apiKey** | **NSString***|  | 
 **outputFormat** | **NSString***|  | 
 **filter** | **NSString***|  | [optional] 
 **listSeparatorToken** | **NSString***|  | [optional] 
 **excludePreviouslyExported** | **NSNumber***|  | [optional] 
 **createdEarliestTime** | **NSDate***|  | [optional] 
 **createdOldestTime** | **NSDate***|  | [optional] 

### Return type

**NSArray<NSData*>***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getExportLink**
```objc
-(NSURLSessionTask*) getExportLinkWithExportType: (NSString*) exportType
    exportOptions: (OAIExportOptions*) exportOptions
    apiKey: (NSString*) apiKey
        completionHandler: (void (^)(OAIExportLink* output, NSError* error)) handler;
```

Get export link

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* exportType = @"exportType_example"; // 
OAIExportOptions* exportOptions = [[OAIExportOptions alloc] init]; // 
NSString* apiKey = @"apiKey_example"; //  (optional)

OAIExportControllerApi*apiInstance = [[OAIExportControllerApi alloc] init];

// Get export link
[apiInstance getExportLinkWithExportType:exportType
              exportOptions:exportOptions
              apiKey:apiKey
          completionHandler: ^(OAIExportLink* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIExportControllerApi->getExportLink: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exportType** | **NSString***|  | 
 **exportOptions** | [**OAIExportOptions***](OAIExportOptions)|  | 
 **apiKey** | **NSString***|  | [optional] 

### Return type

[**OAIExportLink***](OAIExportLink)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

