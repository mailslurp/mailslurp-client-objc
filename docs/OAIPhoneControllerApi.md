# OAIPhoneControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmergencyAddress**](OAIPhoneControllerApi#createemergencyaddress) | **POST** /phone/emergency-addresses | 
[**deleteEmergencyAddress**](OAIPhoneControllerApi#deleteemergencyaddress) | **DELETE** /phone/emergency-addresses/{addressId} | 
[**deletePhoneNumber**](OAIPhoneControllerApi#deletephonenumber) | **DELETE** /phone/numbers/{phoneNumberId} | 
[**getEmergencyAddress**](OAIPhoneControllerApi#getemergencyaddress) | **GET** /phone/emergency-addresses/{addressId} | 
[**getEmergencyAddresses**](OAIPhoneControllerApi#getemergencyaddresses) | **GET** /phone/emergency-addresses | 
[**getPhoneNumber**](OAIPhoneControllerApi#getphonenumber) | **GET** /phone/numbers/{phoneNumberId} | 
[**getPhoneNumbers**](OAIPhoneControllerApi#getphonenumbers) | **GET** /phone/numbers | 
[**getPhonePlans**](OAIPhoneControllerApi#getphoneplans) | **GET** /phone/plans | 
[**testPhoneNumberSendSms**](OAIPhoneControllerApi#testphonenumbersendsms) | **POST** /phone/numbers/{phoneNumberId}/test | 


# **createEmergencyAddress**
```objc
-(NSURLSessionTask*) createEmergencyAddressWithCreateEmergencyAddressOptions: (OAICreateEmergencyAddressOptions*) createEmergencyAddressOptions
        completionHandler: (void (^)(OAIEmergencyAddress* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateEmergencyAddressOptions* createEmergencyAddressOptions = [[OAICreateEmergencyAddressOptions alloc] init]; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

[apiInstance createEmergencyAddressWithCreateEmergencyAddressOptions:createEmergencyAddressOptions
          completionHandler: ^(OAIEmergencyAddress* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->createEmergencyAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createEmergencyAddressOptions** | [**OAICreateEmergencyAddressOptions***](OAICreateEmergencyAddressOptions)|  | 

### Return type

[**OAIEmergencyAddress***](OAIEmergencyAddress)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteEmergencyAddress**
```objc
-(NSURLSessionTask*) deleteEmergencyAddressWithAddressId: (NSString*) addressId
        completionHandler: (void (^)(OAIEmptyResponseDto* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* addressId = @"addressId_example"; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

[apiInstance deleteEmergencyAddressWithAddressId:addressId
          completionHandler: ^(OAIEmptyResponseDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->deleteEmergencyAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addressId** | [**NSString***]()|  | 

### Return type

[**OAIEmptyResponseDto***](OAIEmptyResponseDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deletePhoneNumber**
```objc
-(NSURLSessionTask*) deletePhoneNumberWithPhoneNumberId: (NSString*) phoneNumberId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneNumberId = @"phoneNumberId_example"; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

[apiInstance deletePhoneNumberWithPhoneNumberId:phoneNumberId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->deletePhoneNumber: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmergencyAddress**
```objc
-(NSURLSessionTask*) getEmergencyAddressWithAddressId: (NSString*) addressId
        completionHandler: (void (^)(OAIEmergencyAddress* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* addressId = @"addressId_example"; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

[apiInstance getEmergencyAddressWithAddressId:addressId
          completionHandler: ^(OAIEmergencyAddress* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getEmergencyAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addressId** | [**NSString***]()|  | 

### Return type

[**OAIEmergencyAddress***](OAIEmergencyAddress)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmergencyAddresses**
```objc
-(NSURLSessionTask*) getEmergencyAddressesWithCompletionHandler: 
        (void (^)(NSArray<OAIEmergencyAddressDto>* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

[apiInstance getEmergencyAddressesWithCompletionHandler: 
          ^(NSArray<OAIEmergencyAddressDto>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getEmergencyAddresses: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIEmergencyAddressDto>***](OAIEmergencyAddressDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumber**
```objc
-(NSURLSessionTask*) getPhoneNumberWithPhoneNumberId: (NSString*) phoneNumberId
        completionHandler: (void (^)(OAIPhoneNumberDto* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneNumberId = @"phoneNumberId_example"; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

[apiInstance getPhoneNumberWithPhoneNumberId:phoneNumberId
          completionHandler: ^(OAIPhoneNumberDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getPhoneNumber: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | [**NSString***]()|  | 

### Return type

[**OAIPhoneNumberDto***](OAIPhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumbers**
```objc
-(NSURLSessionTask*) getPhoneNumbersWithPhoneCountry: (NSString*) phoneCountry
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPagePhoneNumberProjection* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneCountry = @"phoneCountry_example"; // Optional phone country (optional)
NSNumber* page = @0; // Optional page index for list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size for list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Filter by created at after the given timestamp (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Filter by created at before the given timestamp (optional)

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

[apiInstance getPhoneNumbersWithPhoneCountry:phoneCountry
              page:page
              size:size
              sort:sort
              since:since
              before:before
          completionHandler: ^(OAIPagePhoneNumberProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getPhoneNumbers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneCountry** | **NSString***| Optional phone country | [optional] 
 **page** | **NSNumber***| Optional page index for list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size for list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Filter by created at after the given timestamp | [optional] 
 **before** | **NSDate***| Filter by created at before the given timestamp | [optional] 

### Return type

[**OAIPagePhoneNumberProjection***](OAIPagePhoneNumberProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhonePlans**
```objc
-(NSURLSessionTask*) getPhonePlansWithCompletionHandler: 
        (void (^)(NSArray<OAIPhonePlanDto>* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

[apiInstance getPhonePlansWithCompletionHandler: 
          ^(NSArray<OAIPhonePlanDto>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getPhonePlans: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIPhonePlanDto>***](OAIPhonePlanDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testPhoneNumberSendSms**
```objc
-(NSURLSessionTask*) testPhoneNumberSendSmsWithPhoneNumberId: (NSString*) phoneNumberId
    testPhoneNumberOptions: (OAITestPhoneNumberOptions*) testPhoneNumberOptions
    xTestId: (NSString*) xTestId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneNumberId = @"phoneNumberId_example"; // 
OAITestPhoneNumberOptions* testPhoneNumberOptions = [[OAITestPhoneNumberOptions alloc] init]; // 
NSString* xTestId = @"xTestId_example"; //  (optional)

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

[apiInstance testPhoneNumberSendSmsWithPhoneNumberId:phoneNumberId
              testPhoneNumberOptions:testPhoneNumberOptions
              xTestId:xTestId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->testPhoneNumberSendSms: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | [**NSString***]()|  | 
 **testPhoneNumberOptions** | [**OAITestPhoneNumberOptions***](OAITestPhoneNumberOptions)|  | 
 **xTestId** | **NSString***|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

