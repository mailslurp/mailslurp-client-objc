# OAIPhoneControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmergencyAddress**](OAIPhoneControllerApi#createemergencyaddress) | **POST** /phone/emergency-addresses | Create an emergency address
[**createPhoneNumber**](OAIPhoneControllerApi#createphonenumber) | **POST** /phone | Add phone number to your account. Only works if you have already added a plan and an initial phone number in your account and acknowledged the pricing and terms of service by enabling API phone creation.
[**deleteEmergencyAddress**](OAIPhoneControllerApi#deleteemergencyaddress) | **DELETE** /phone/emergency-addresses/{addressId} | Delete an emergency address
[**deletePhoneNumber**](OAIPhoneControllerApi#deletephonenumber) | **DELETE** /phone/numbers/{phoneNumberId} | Delete a phone number
[**getAllPhoneMessageThreads**](OAIPhoneControllerApi#getallphonemessagethreads) | **GET** /phone/numbers/message-threads | Get the latest messages for all phones
[**getConsentStatus**](OAIPhoneControllerApi#getconsentstatus) | **GET** /phone/consent | Get consent status
[**getEmergencyAddress**](OAIPhoneControllerApi#getemergencyaddress) | **GET** /phone/emergency-addresses/{addressId} | Get an emergency address
[**getEmergencyAddresses**](OAIPhoneControllerApi#getemergencyaddresses) | **GET** /phone/emergency-addresses | Get emergency addresses
[**getPhoneMessageThreadItems**](OAIPhoneControllerApi#getphonemessagethreaditems) | **GET** /phone/numbers/{phoneNumberId}/message-threads/{otherNumber} | Get messages in a phone thread
[**getPhoneMessageThreads**](OAIPhoneControllerApi#getphonemessagethreads) | **GET** /phone/numbers/{phoneNumberId}/message-threads | Get the latest message preview for a thread
[**getPhoneNumber**](OAIPhoneControllerApi#getphonenumber) | **GET** /phone/numbers/{phoneNumberId} | Get a phone number by ID
[**getPhoneNumberByName**](OAIPhoneControllerApi#getphonenumberbyname) | **GET** /phone/numbers/by-name | Get a phone number by name
[**getPhoneNumberByPhoneNumber**](OAIPhoneControllerApi#getphonenumberbyphonenumber) | **GET** /phone/numbers/by-phone-number | Get a phone number by phone number
[**getPhoneNumbers**](OAIPhoneControllerApi#getphonenumbers) | **GET** /phone/numbers | Get phone numbers
[**getPhonePlans**](OAIPhoneControllerApi#getphoneplans) | **GET** /phone/plans | Get phone plans
[**getPhonePlansAvailability**](OAIPhoneControllerApi#getphoneplansavailability) | **GET** /phone/plans/availability | Get phone plans availability
[**getSentSmsByPhoneNumber**](OAIPhoneControllerApi#getsentsmsbyphonenumber) | **GET** /phone/numbers/{phoneNumberId}/sms-sent | List sent TXT messages for a phone number
[**getSmsByPhoneNumber**](OAIPhoneControllerApi#getsmsbyphonenumber) | **GET** /phone/numbers/{phoneNumberId}/sms | List SMS messages for a phone number
[**sendSmsFromPhoneNumber**](OAIPhoneControllerApi#sendsmsfromphonenumber) | **POST** /phone/numbers/{phoneNumberId}/sms | Send TXT message from a phone number
[**setConsentStatus**](OAIPhoneControllerApi#setconsentstatus) | **POST** /phone/consent | Set consent status
[**setPhoneFavourited**](OAIPhoneControllerApi#setphonefavourited) | **PUT** /phone/numbers/{phoneNumberId}/favourite | Set phone favourited state
[**testPhoneNumberSendSms**](OAIPhoneControllerApi#testphonenumbersendsms) | **POST** /phone/numbers/{phoneNumberId}/test | Test sending an SMS to a number
[**updatePhoneNumber**](OAIPhoneControllerApi#updatephonenumber) | **PUT** /phone/numbers/{phoneNumberId} | Update a phone number
[**validatePhoneNumber**](OAIPhoneControllerApi#validatephonenumber) | **POST** /phone/validate | Verify validity of a phone number


# **createEmergencyAddress**
```objc
-(NSURLSessionTask*) createEmergencyAddressWithCreateEmergencyAddressOptions: (OAICreateEmergencyAddressOptions*) createEmergencyAddressOptions
        completionHandler: (void (^)(OAIEmergencyAddress* output, NSError* error)) handler;
```

Create an emergency address

Add an emergency address to a phone number

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateEmergencyAddressOptions* createEmergencyAddressOptions = [[OAICreateEmergencyAddressOptions alloc] init]; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Create an emergency address
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

# **createPhoneNumber**
```objc
-(NSURLSessionTask*) createPhoneNumberWithCreatePhoneNumberOptions: (OAICreatePhoneNumberOptions*) createPhoneNumberOptions
        completionHandler: (void (^)(OAIPhoneNumberDto* output, NSError* error)) handler;
```

Add phone number to your account. Only works if you have already added a plan and an initial phone number in your account and acknowledged the pricing and terms of service by enabling API phone creation.

Create new phone number

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreatePhoneNumberOptions* createPhoneNumberOptions = [[OAICreatePhoneNumberOptions alloc] init]; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Add phone number to your account. Only works if you have already added a plan and an initial phone number in your account and acknowledged the pricing and terms of service by enabling API phone creation.
[apiInstance createPhoneNumberWithCreatePhoneNumberOptions:createPhoneNumberOptions
          completionHandler: ^(OAIPhoneNumberDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->createPhoneNumber: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPhoneNumberOptions** | [**OAICreatePhoneNumberOptions***](OAICreatePhoneNumberOptions)|  | 

### Return type

[**OAIPhoneNumberDto***](OAIPhoneNumberDto)

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

Delete an emergency address

Delete an emergency address

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* addressId = @"addressId_example"; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Delete an emergency address
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

Delete a phone number

Remove phone number from account

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneNumberId = @"phoneNumberId_example"; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Delete a phone number
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

# **getAllPhoneMessageThreads**
```objc
-(NSURLSessionTask*) getAllPhoneMessageThreadsWithPage: (NSNumber*) page
    size: (NSNumber*) size
        completionHandler: (void (^)(OAIPagePhoneMessageThreadProjection* output, NSError* error)) handler;
```

Get the latest messages for all phones

List all message threads for all phones

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; //  (optional) (default to @0)
NSNumber* size = @20; //  (optional) (default to @20)

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get the latest messages for all phones
[apiInstance getAllPhoneMessageThreadsWithPage:page
              size:size
          completionHandler: ^(OAIPagePhoneMessageThreadProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getAllPhoneMessageThreads: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] [default to @0]
 **size** | **NSNumber***|  | [optional] [default to @20]

### Return type

[**OAIPagePhoneMessageThreadProjection***](OAIPagePhoneMessageThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getConsentStatus**
```objc
-(NSURLSessionTask*) getConsentStatusWithCompletionHandler: 
        (void (^)(OAIConsentStatusDto* output, NSError* error)) handler;
```

Get consent status

Get the status of phone usage consent

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get consent status
[apiInstance getConsentStatusWithCompletionHandler: 
          ^(OAIConsentStatusDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getConsentStatus: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIConsentStatusDto***](OAIConsentStatusDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmergencyAddress**
```objc
-(NSURLSessionTask*) getEmergencyAddressWithAddressId: (NSString*) addressId
        completionHandler: (void (^)(OAIEmergencyAddress* output, NSError* error)) handler;
```

Get an emergency address

Fetch an emergency address by ID

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* addressId = @"addressId_example"; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get an emergency address
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

Get emergency addresses

List emergency addresses

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get emergency addresses
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

# **getPhoneMessageThreadItems**
```objc
-(NSURLSessionTask*) getPhoneMessageThreadItemsWithPhoneNumberId: (NSString*) phoneNumberId
    otherNumber: (NSString*) otherNumber
    page: (NSNumber*) page
    size: (NSNumber*) size
        completionHandler: (void (^)(OAIPagePhoneMessageThreadItemProjection* output, NSError* error)) handler;
```

Get messages in a phone thread

List message thread messages for a phone message thread

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneNumberId = @"phoneNumberId_example"; // 
NSString* otherNumber = @"otherNumber_example"; // 
NSNumber* page = @0; //  (optional) (default to @0)
NSNumber* size = @20; //  (optional) (default to @20)

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get messages in a phone thread
[apiInstance getPhoneMessageThreadItemsWithPhoneNumberId:phoneNumberId
              otherNumber:otherNumber
              page:page
              size:size
          completionHandler: ^(OAIPagePhoneMessageThreadItemProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getPhoneMessageThreadItems: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | [**NSString***]()|  | 
 **otherNumber** | **NSString***|  | 
 **page** | **NSNumber***|  | [optional] [default to @0]
 **size** | **NSNumber***|  | [optional] [default to @20]

### Return type

[**OAIPagePhoneMessageThreadItemProjection***](OAIPagePhoneMessageThreadItemProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneMessageThreads**
```objc
-(NSURLSessionTask*) getPhoneMessageThreadsWithPhoneNumberId: (NSString*) phoneNumberId
    page: (NSNumber*) page
    size: (NSNumber*) size
        completionHandler: (void (^)(OAIPagePhoneMessageThreadProjection* output, NSError* error)) handler;
```

Get the latest message preview for a thread

List message threads for a phone

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneNumberId = @"phoneNumberId_example"; // 
NSNumber* page = @0; //  (optional) (default to @0)
NSNumber* size = @20; //  (optional) (default to @20)

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get the latest message preview for a thread
[apiInstance getPhoneMessageThreadsWithPhoneNumberId:phoneNumberId
              page:page
              size:size
          completionHandler: ^(OAIPagePhoneMessageThreadProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getPhoneMessageThreads: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | [**NSString***]()|  | 
 **page** | **NSNumber***|  | [optional] [default to @0]
 **size** | **NSNumber***|  | [optional] [default to @20]

### Return type

[**OAIPagePhoneMessageThreadProjection***](OAIPagePhoneMessageThreadProjection)

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

Get a phone number by ID

Get a phone number by ID

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneNumberId = @"phoneNumberId_example"; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get a phone number by ID
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

# **getPhoneNumberByName**
```objc
-(NSURLSessionTask*) getPhoneNumberByNameWithCompletionHandler: 
        (void (^)(OAIPhoneNumberDto* output, NSError* error)) handler;
```

Get a phone number by name

Get a phone number by name

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get a phone number by name
[apiInstance getPhoneNumberByNameWithCompletionHandler: 
          ^(OAIPhoneNumberDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getPhoneNumberByName: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIPhoneNumberDto***](OAIPhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumberByPhoneNumber**
```objc
-(NSURLSessionTask*) getPhoneNumberByPhoneNumberWithCompletionHandler: 
        (void (^)(OAIPhoneNumberDto* output, NSError* error)) handler;
```

Get a phone number by phone number

Get a phone number by phone number

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get a phone number by phone number
[apiInstance getPhoneNumberByPhoneNumberWithCompletionHandler: 
          ^(OAIPhoneNumberDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getPhoneNumberByPhoneNumber: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

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
    search: (NSString*) search
    include: (NSArray<NSString*>*) include
    favourite: (NSNumber*) favourite
        completionHandler: (void (^)(OAIPagePhoneNumberProjection* output, NSError* error)) handler;
```

Get phone numbers

List phone numbers for account

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
NSString* search = @"search_example"; // Optional search filter (optional)
NSArray<NSString*>* include = @[@"include_example"]; // Optional phoneIds to include in result (optional)
NSNumber* favourite = @(NO); // Optionally filter results for favourites only (optional) (default to @(NO))

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get phone numbers
[apiInstance getPhoneNumbersWithPhoneCountry:phoneCountry
              page:page
              size:size
              sort:sort
              since:since
              before:before
              search:search
              include:include
              favourite:favourite
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
 **search** | **NSString***| Optional search filter | [optional] 
 **include** | [**NSArray&lt;NSString*&gt;***](NSString*)| Optional phoneIds to include in result | [optional] 
 **favourite** | **NSNumber***| Optionally filter results for favourites only | [optional] [default to @(NO)]

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

Get phone plans

Get phone number plans

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get phone plans
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

# **getPhonePlansAvailability**
```objc
-(NSURLSessionTask*) getPhonePlansAvailabilityWithCompletionHandler: 
        (void (^)(OAIPhonePlanAvailability* output, NSError* error)) handler;
```

Get phone plans availability

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get phone plans availability
[apiInstance getPhonePlansAvailabilityWithCompletionHandler: 
          ^(OAIPhonePlanAvailability* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getPhonePlansAvailability: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIPhonePlanAvailability***](OAIPhonePlanAvailability)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentSmsByPhoneNumber**
```objc
-(NSURLSessionTask*) getSentSmsByPhoneNumberWithPhoneNumberId: (NSString*) phoneNumberId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
    search: (NSString*) search
        completionHandler: (void (^)(OAIPageSentSmsProjection* output, NSError* error)) handler;
```

List sent TXT messages for a phone number

Get sent SMS messages for a phone number

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneNumberId = @"phoneNumberId_example"; // 
NSNumber* page = @0; // Optional page index in SMS list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Optional filter SMSs received after given date time (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Optional filter SMSs received before given date time (optional)
NSString* search = @"search_example"; // Optional search filter (optional)

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// List sent TXT messages for a phone number
[apiInstance getSentSmsByPhoneNumberWithPhoneNumberId:phoneNumberId
              page:page
              size:size
              sort:sort
              since:since
              before:before
              search:search
          completionHandler: ^(OAIPageSentSmsProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getSentSmsByPhoneNumber: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | [**NSString***]()|  | 
 **page** | **NSNumber***| Optional page index in SMS list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Optional filter SMSs received after given date time | [optional] 
 **before** | **NSDate***| Optional filter SMSs received before given date time | [optional] 
 **search** | **NSString***| Optional search filter | [optional] 

### Return type

[**OAIPageSentSmsProjection***](OAIPageSentSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSmsByPhoneNumber**
```objc
-(NSURLSessionTask*) getSmsByPhoneNumberWithPhoneNumberId: (NSString*) phoneNumberId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    unreadOnly: (NSNumber*) unreadOnly
    since: (NSDate*) since
    before: (NSDate*) before
    search: (NSString*) search
    favourite: (NSNumber*) favourite
        completionHandler: (void (^)(OAIPageSmsProjection* output, NSError* error)) handler;
```

List SMS messages for a phone number

Get SMS messages for a phone number

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneNumberId = @"phoneNumberId_example"; // 
NSNumber* page = @0; // Optional page index in SMS list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSNumber* unreadOnly = @(NO); // Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly (optional) (default to @(NO))
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Optional filter SMSs received after given date time (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Optional filter SMSs received before given date time (optional)
NSString* search = @"search_example"; // Optional search filter (optional)
NSNumber* favourite = @(NO); // Optionally filter results for favourites only (optional) (default to @(NO))

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// List SMS messages for a phone number
[apiInstance getSmsByPhoneNumberWithPhoneNumberId:phoneNumberId
              page:page
              size:size
              sort:sort
              unreadOnly:unreadOnly
              since:since
              before:before
              search:search
              favourite:favourite
          completionHandler: ^(OAIPageSmsProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getSmsByPhoneNumber: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | [**NSString***]()|  | 
 **page** | **NSNumber***| Optional page index in SMS list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **unreadOnly** | **NSNumber***| Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to @(NO)]
 **since** | **NSDate***| Optional filter SMSs received after given date time | [optional] 
 **before** | **NSDate***| Optional filter SMSs received before given date time | [optional] 
 **search** | **NSString***| Optional search filter | [optional] 
 **favourite** | **NSNumber***| Optionally filter results for favourites only | [optional] [default to @(NO)]

### Return type

[**OAIPageSmsProjection***](OAIPageSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendSmsFromPhoneNumber**
```objc
-(NSURLSessionTask*) sendSmsFromPhoneNumberWithPhoneNumberId: (NSString*) phoneNumberId
    smsSendOptions: (OAISmsSendOptions*) smsSendOptions
        completionHandler: (void (^)(OAISentSmsDto* output, NSError* error)) handler;
```

Send TXT message from a phone number

Send SMS from a phone number

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneNumberId = @"phoneNumberId_example"; // 
OAISmsSendOptions* smsSendOptions = [[OAISmsSendOptions alloc] init]; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Send TXT message from a phone number
[apiInstance sendSmsFromPhoneNumberWithPhoneNumberId:phoneNumberId
              smsSendOptions:smsSendOptions
          completionHandler: ^(OAISentSmsDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->sendSmsFromPhoneNumber: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | [**NSString***]()|  | 
 **smsSendOptions** | [**OAISmsSendOptions***](OAISmsSendOptions)|  | 

### Return type

[**OAISentSmsDto***](OAISentSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **setConsentStatus**
```objc
-(NSURLSessionTask*) setConsentStatusWithAgree: (NSNumber*) agree
        completionHandler: (void (^)(OAIConsentStatusDto* output, NSError* error)) handler;
```

Set consent status

Give or revoke consent for phone usage

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* agree = @56; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Set consent status
[apiInstance setConsentStatusWithAgree:agree
          completionHandler: ^(OAIConsentStatusDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->setConsentStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agree** | **NSNumber***|  | 

### Return type

[**OAIConsentStatusDto***](OAIConsentStatusDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **setPhoneFavourited**
```objc
-(NSURLSessionTask*) setPhoneFavouritedWithPhoneNumberId: (NSString*) phoneNumberId
    setPhoneFavouritedOptions: (OAISetPhoneFavouritedOptions*) setPhoneFavouritedOptions
        completionHandler: (void (^)(OAIPhoneNumberDto* output, NSError* error)) handler;
```

Set phone favourited state

Set and return new favorite state for a phone

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneNumberId = @"phoneNumberId_example"; // ID of phone to set favourite state
OAISetPhoneFavouritedOptions* setPhoneFavouritedOptions = [[OAISetPhoneFavouritedOptions alloc] init]; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Set phone favourited state
[apiInstance setPhoneFavouritedWithPhoneNumberId:phoneNumberId
              setPhoneFavouritedOptions:setPhoneFavouritedOptions
          completionHandler: ^(OAIPhoneNumberDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->setPhoneFavourited: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | [**NSString***]()| ID of phone to set favourite state | 
 **setPhoneFavouritedOptions** | [**OAISetPhoneFavouritedOptions***](OAISetPhoneFavouritedOptions)|  | 

### Return type

[**OAIPhoneNumberDto***](OAIPhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testPhoneNumberSendSms**
```objc
-(NSURLSessionTask*) testPhoneNumberSendSmsWithPhoneNumberId: (NSString*) phoneNumberId
    testPhoneNumberOptions: (OAITestPhoneNumberOptions*) testPhoneNumberOptions
    xTestId: (NSString*) xTestId
        completionHandler: (void (^)(NSError* error)) handler;
```

Test sending an SMS to a number

Test a phone number by sending an SMS to it

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

// Test sending an SMS to a number
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

# **updatePhoneNumber**
```objc
-(NSURLSessionTask*) updatePhoneNumberWithPhoneNumberId: (NSString*) phoneNumberId
    updatePhoneNumberOptions: (OAIUpdatePhoneNumberOptions*) updatePhoneNumberOptions
        completionHandler: (void (^)(OAIPhoneNumberDto* output, NSError* error)) handler;
```

Update a phone number

Set field for phone number

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneNumberId = @"phoneNumberId_example"; // ID of phone to set favourite state
OAIUpdatePhoneNumberOptions* updatePhoneNumberOptions = [[OAIUpdatePhoneNumberOptions alloc] init]; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Update a phone number
[apiInstance updatePhoneNumberWithPhoneNumberId:phoneNumberId
              updatePhoneNumberOptions:updatePhoneNumberOptions
          completionHandler: ^(OAIPhoneNumberDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->updatePhoneNumber: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | [**NSString***]()| ID of phone to set favourite state | 
 **updatePhoneNumberOptions** | [**OAIUpdatePhoneNumberOptions***](OAIUpdatePhoneNumberOptions)|  | 

### Return type

[**OAIPhoneNumberDto***](OAIPhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **validatePhoneNumber**
```objc
-(NSURLSessionTask*) validatePhoneNumberWithValidatePhoneNumberOptions: (OAIValidatePhoneNumberOptions*) validatePhoneNumberOptions
        completionHandler: (void (^)(OAIPhoneNumberValidationDto* output, NSError* error)) handler;
```

Verify validity of a phone number

Validate a phone number

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIValidatePhoneNumberOptions* validatePhoneNumberOptions = [[OAIValidatePhoneNumberOptions alloc] init]; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Verify validity of a phone number
[apiInstance validatePhoneNumberWithValidatePhoneNumberOptions:validatePhoneNumberOptions
          completionHandler: ^(OAIPhoneNumberValidationDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->validatePhoneNumber: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validatePhoneNumberOptions** | [**OAIValidatePhoneNumberOptions***](OAIValidatePhoneNumberOptions)|  | 

### Return type

[**OAIPhoneNumberValidationDto***](OAIPhoneNumberValidationDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

