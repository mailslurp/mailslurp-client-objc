# OAIMissedSmsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllMissedSmsMessages**](OAIMissedSmsControllerApi#getallmissedsmsmessages) | **GET** /missed-sms | Get all missed SMS messages in paginated format
[**getMissedSmsCount**](OAIMissedSmsControllerApi#getmissedsmscount) | **GET** /missed-sms/count | Get missed SMS count
[**getMissedSmsMessage**](OAIMissedSmsControllerApi#getmissedsmsmessage) | **GET** /missed-sms/{missedSmsId} | Get missed SMS content


# **getAllMissedSmsMessages**
```objc
-(NSURLSessionTask*) getAllMissedSmsMessagesWithPhoneNumber: (NSString*) phoneNumber
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    search: (NSString*) search
        completionHandler: (void (^)(OAIPageMissedSmsProjection* output, NSError* error)) handler;
```

Get all missed SMS messages in paginated format

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneNumber = @"phoneNumber_example"; // Optional receiving phone number to filter missed SMS for (optional)
NSNumber* page = @0; // Optional page index in list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Optional filter missed SMS after given date time (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Optional filter missed SMS before given date time (optional)
NSString* search = @"search_example"; // Optional search filter (optional)

OAIMissedSmsControllerApi*apiInstance = [[OAIMissedSmsControllerApi alloc] init];

// Get all missed SMS messages in paginated format
[apiInstance getAllMissedSmsMessagesWithPhoneNumber:phoneNumber
              page:page
              size:size
              sort:sort
              since:since
              before:before
              search:search
          completionHandler: ^(OAIPageMissedSmsProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMissedSmsControllerApi->getAllMissedSmsMessages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | [**NSString***]()| Optional receiving phone number to filter missed SMS for | [optional] 
 **page** | **NSNumber***| Optional page index in list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Optional filter missed SMS after given date time | [optional] 
 **before** | **NSDate***| Optional filter missed SMS before given date time | [optional] 
 **search** | **NSString***| Optional search filter | [optional] 

### Return type

[**OAIPageMissedSmsProjection***](OAIPageMissedSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getMissedSmsCount**
```objc
-(NSURLSessionTask*) getMissedSmsCountWithCompletionHandler: 
        (void (^)(OAICountDto* output, NSError* error)) handler;
```

Get missed SMS count

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIMissedSmsControllerApi*apiInstance = [[OAIMissedSmsControllerApi alloc] init];

// Get missed SMS count
[apiInstance getMissedSmsCountWithCompletionHandler: 
          ^(OAICountDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMissedSmsControllerApi->getMissedSmsCount: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAICountDto***](OAICountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getMissedSmsMessage**
```objc
-(NSURLSessionTask*) getMissedSmsMessageWithMissedSmsId: (NSString*) missedSmsId
        completionHandler: (void (^)(OAIMissedSmsDto* output, NSError* error)) handler;
```

Get missed SMS content

Returns a missed SMS with full content.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* missedSmsId = @"missedSmsId_example"; // 

OAIMissedSmsControllerApi*apiInstance = [[OAIMissedSmsControllerApi alloc] init];

// Get missed SMS content
[apiInstance getMissedSmsMessageWithMissedSmsId:missedSmsId
          completionHandler: ^(OAIMissedSmsDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMissedSmsControllerApi->getMissedSmsMessage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **missedSmsId** | [**NSString***]()|  | 

### Return type

[**OAIMissedSmsDto***](OAIMissedSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

