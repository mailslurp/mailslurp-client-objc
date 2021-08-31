# OAIExportControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exportEntities**](OAIExportControllerApi#exportentities) | **GET** /export | Export inboxes link callable via browser
[**getExportLink**](OAIExportControllerApi#getexportlink) | **POST** /export | Get export link


# **exportEntities**
```objc
-(NSURLSessionTask*) exportEntitiesWithApiKey: (NSString*) apiKey
    exportType: (NSString*) exportType
    outputFormat: (NSString*) outputFormat
    createdEarliestTime: (NSDate*) createdEarliestTime
    createdOldestTime: (NSDate*) createdOldestTime
    excludePreviouslyExported: (NSNumber*) excludePreviouslyExported
    filter: (NSString*) filter
    listSeparatorToken: (NSString*) listSeparatorToken
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Export inboxes link callable via browser

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* apiKey = @"apiKey_example"; // apiKey
NSString* exportType = @"exportType_example"; // exportType
NSString* outputFormat = @"outputFormat_example"; // outputFormat
NSDate* createdEarliestTime = @"2013-10-20T19:20:30+01:00"; // createdEarliestTime (optional)
NSDate* createdOldestTime = @"2013-10-20T19:20:30+01:00"; // createdOldestTime (optional)
NSNumber* excludePreviouslyExported = @56; // excludePreviouslyExported (optional)
NSString* filter = @"filter_example"; // filter (optional)
NSString* listSeparatorToken = @"listSeparatorToken_example"; // listSeparatorToken (optional)

OAIExportControllerApi*apiInstance = [[OAIExportControllerApi alloc] init];

// Export inboxes link callable via browser
[apiInstance exportEntitiesWithApiKey:apiKey
              exportType:exportType
              outputFormat:outputFormat
              createdEarliestTime:createdEarliestTime
              createdOldestTime:createdOldestTime
              excludePreviouslyExported:excludePreviouslyExported
              filter:filter
              listSeparatorToken:listSeparatorToken
          completionHandler: ^(NSData* output, NSError* error) {
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
 **apiKey** | **NSString***| apiKey | 
 **exportType** | **NSString***| exportType | 
 **outputFormat** | **NSString***| outputFormat | 
 **createdEarliestTime** | **NSDate***| createdEarliestTime | [optional] 
 **createdOldestTime** | **NSDate***| createdOldestTime | [optional] 
 **excludePreviouslyExported** | **NSNumber***| excludePreviouslyExported | [optional] 
 **filter** | **NSString***| filter | [optional] 
 **listSeparatorToken** | **NSString***| listSeparatorToken | [optional] 

### Return type

**NSData***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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


NSString* exportType = @"exportType_example"; // exportType
OAIExportOptions* exportOptions = [[OAIExportOptions alloc] init]; // exportOptions
NSString* apiKey = @"apiKey_example"; // apiKey (optional)

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
 **exportType** | **NSString***| exportType | 
 **exportOptions** | [**OAIExportOptions***](OAIExportOptions)| exportOptions | 
 **apiKey** | **NSString***| apiKey | [optional] 

### Return type

[**OAIExportLink***](OAIExportLink)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

