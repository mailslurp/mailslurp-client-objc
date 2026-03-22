# OAIPhoneControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acquirePhonePoolLease**](OAIPhoneControllerApi#acquirephonepoollease) | **POST** /phone/pools/{poolId}/leases | Acquire phone pool lease
[**addAllPhoneNumbersToPhonePool**](OAIPhoneControllerApi#addallphonenumberstophonepool) | **POST** /phone/pools/{poolId}/numbers/add-all | Add all phone numbers to phone pool
[**addPhoneNumbersToPhonePool**](OAIPhoneControllerApi#addphonenumberstophonepool) | **POST** /phone/pools/{poolId}/numbers | Add phone numbers to phone pool
[**createEmergencyAddress**](OAIPhoneControllerApi#createemergencyaddress) | **POST** /phone/emergency-addresses | Create an emergency address
[**createPhoneNumber**](OAIPhoneControllerApi#createphonenumber) | **POST** /phone | Add phone number to your account. Only works if you have already added a plan and an initial phone number in your account and acknowledged the pricing and terms of service by enabling API phone creation.
[**createPhonePool**](OAIPhoneControllerApi#createphonepool) | **POST** /phone/pools | Create phone pool
[**createPhoneProvisioningJob**](OAIPhoneControllerApi#createphoneprovisioningjob) | **POST** /phone/provisioning/jobs | Create a phone provisioning job
[**deleteAllPhoneNumber**](OAIPhoneControllerApi#deleteallphonenumber) | **DELETE** /phone/numbers | Delete all phone numbers
[**deleteEmergencyAddress**](OAIPhoneControllerApi#deleteemergencyaddress) | **DELETE** /phone/emergency-addresses/{addressId} | Delete an emergency address
[**deletePhoneMessageThreadItems**](OAIPhoneControllerApi#deletephonemessagethreaditems) | **DELETE** /phone/numbers/{phoneNumberId}/message-threads/{otherNumber} | Delete messages in a phone thread
[**deletePhoneNumber**](OAIPhoneControllerApi#deletephonenumber) | **DELETE** /phone/numbers/{phoneNumberId} | Delete a phone number
[**deletePhonePool**](OAIPhoneControllerApi#deletephonepool) | **DELETE** /phone/pools/{poolId} | Delete phone pool
[**getAllPhoneMessageThreads**](OAIPhoneControllerApi#getallphonemessagethreads) | **GET** /phone/numbers/message-threads | Get the latest messages for all phones
[**getAllPhoneNumberReleases**](OAIPhoneControllerApi#getallphonenumberreleases) | **GET** /phone/releases | Get all phone number releases
[**getConsentStatus**](OAIPhoneControllerApi#getconsentstatus) | **GET** /phone/consent | Get consent status
[**getEmergencyAddress**](OAIPhoneControllerApi#getemergencyaddress) | **GET** /phone/emergency-addresses/{addressId} | Get an emergency address
[**getEmergencyAddresses**](OAIPhoneControllerApi#getemergencyaddresses) | **GET** /phone/emergency-addresses | Get emergency addresses
[**getOrCreatePhonePool**](OAIPhoneControllerApi#getorcreatephonepool) | **POST** /phone/pools/get-or-create | Get or create phone pool
[**getPhoneMessageThreadItems**](OAIPhoneControllerApi#getphonemessagethreaditems) | **GET** /phone/numbers/{phoneNumberId}/message-threads/{otherNumber} | Get messages in a phone thread
[**getPhoneMessageThreads**](OAIPhoneControllerApi#getphonemessagethreads) | **GET** /phone/numbers/{phoneNumberId}/message-threads | Get the latest message preview for a thread
[**getPhoneNumber**](OAIPhoneControllerApi#getphonenumber) | **GET** /phone/numbers/{phoneNumberId} | Get a phone number by ID
[**getPhoneNumberByName**](OAIPhoneControllerApi#getphonenumberbyname) | **GET** /phone/numbers/by-name | Get a phone number by name
[**getPhoneNumberByPhoneNumber**](OAIPhoneControllerApi#getphonenumberbyphonenumber) | **GET** /phone/numbers/by-phone-number | Get a phone number by phone number
[**getPhoneNumberLineTypeIntelligence**](OAIPhoneControllerApi#getphonenumberlinetypeintelligence) | **POST** /phone/validate/line-type-intelligence | Get line type intelligence for a phone number
[**getPhoneNumberRelease**](OAIPhoneControllerApi#getphonenumberrelease) | **GET** /phone/releases/{releaseId} | Get phone number release
[**getPhoneNumbers**](OAIPhoneControllerApi#getphonenumbers) | **GET** /phone/numbers | Get phone numbers
[**getPhonePlans**](OAIPhoneControllerApi#getphoneplans) | **GET** /phone/plans | Get phone plans
[**getPhonePlansAvailability**](OAIPhoneControllerApi#getphoneplansavailability) | **GET** /phone/plans/availability | Get phone plans availability
[**getPhonePool**](OAIPhoneControllerApi#getphonepool) | **GET** /phone/pools/{poolId} | Get phone pool
[**getPhonePoolByName**](OAIPhoneControllerApi#getphonepoolbyname) | **GET** /phone/pools/by-name | Get phone pool by name
[**getPhonePools**](OAIPhoneControllerApi#getphonepools) | **GET** /phone/pools | Get phone pools
[**getPhoneProvisioningCapabilities**](OAIPhoneControllerApi#getphoneprovisioningcapabilities) | **GET** /phone/provisioning/capabilities | Get phone provisioning capabilities
[**getPhoneProvisioningJob**](OAIPhoneControllerApi#getphoneprovisioningjob) | **GET** /phone/provisioning/jobs/{jobId} | Get phone provisioning job
[**getPhoneSmsPrepaidCredit**](OAIPhoneControllerApi#getphonesmsprepaidcredit) | **GET** /phone/sms-prepaid-credits/{creditId} | Get SMS prepaid credit
[**getPhoneSmsPrepaidCredits**](OAIPhoneControllerApi#getphonesmsprepaidcredits) | **GET** /phone/sms-prepaid-credits | Get SMS prepaid credits
[**getPhoneSummary**](OAIPhoneControllerApi#getphonesummary) | **GET** /phone/summary | Get phone summary
[**getSentSmsByPhoneNumber**](OAIPhoneControllerApi#getsentsmsbyphonenumber) | **GET** /phone/numbers/{phoneNumberId}/sms-sent | List sent TXT messages for a phone number
[**getSmsByPhoneNumber**](OAIPhoneControllerApi#getsmsbyphonenumber) | **GET** /phone/numbers/{phoneNumberId}/sms | List SMS messages for a phone number
[**reassignPhoneNumberRelease**](OAIPhoneControllerApi#reassignphonenumberrelease) | **GET** /phone/releases/{releaseId}/reassign | Reassign phone number release
[**releasePhonePoolLease**](OAIPhoneControllerApi#releasephonepoollease) | **DELETE** /phone/pools/{poolId}/leases/{leaseId} | Release phone pool lease
[**removePhoneNumberFromPhonePool**](OAIPhoneControllerApi#removephonenumberfromphonepool) | **DELETE** /phone/pools/{poolId}/numbers/{phoneNumberId} | Remove phone number from phone pool
[**searchAvailablePhoneNumbers**](OAIPhoneControllerApi#searchavailablephonenumbers) | **POST** /phone/provisioning/search | Search available phone numbers
[**sendSmsFromPhoneNumber**](OAIPhoneControllerApi#sendsmsfromphonenumber) | **POST** /phone/numbers/{phoneNumberId}/sms | Send TXT message from a phone number
[**setConsentStatus**](OAIPhoneControllerApi#setconsentstatus) | **POST** /phone/consent | Set consent status
[**setPhoneFavourited**](OAIPhoneControllerApi#setphonefavourited) | **PUT** /phone/numbers/{phoneNumberId}/favourite | Set phone favourited state
[**testPhoneNumberSendSms**](OAIPhoneControllerApi#testphonenumbersendsms) | **POST** /phone/numbers/{phoneNumberId}/test | Test sending an SMS to a number
[**updatePhoneNumber**](OAIPhoneControllerApi#updatephonenumber) | **PUT** /phone/numbers/{phoneNumberId} | Update a phone number
[**updatePhonePool**](OAIPhoneControllerApi#updatephonepool) | **PUT** /phone/pools/{poolId} | Update phone pool
[**validatePhoneNumber**](OAIPhoneControllerApi#validatephonenumber) | **POST** /phone/validate | Verify validity of a phone number


# **acquirePhonePoolLease**
```objc
-(NSURLSessionTask*) acquirePhonePoolLeaseWithPoolId: (NSString*) poolId
    acquirePhonePoolLeaseOptions: (OAIAcquirePhonePoolLeaseOptions*) acquirePhonePoolLeaseOptions
        completionHandler: (void (^)(OAIPhonePoolLeaseDto* output, NSError* error)) handler;
```

Acquire phone pool lease

Acquire an available phone number from the pool and mark it leased

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* poolId = @"poolId_example"; // 
OAIAcquirePhonePoolLeaseOptions* acquirePhonePoolLeaseOptions = [[OAIAcquirePhonePoolLeaseOptions alloc] init]; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Acquire phone pool lease
[apiInstance acquirePhonePoolLeaseWithPoolId:poolId
              acquirePhonePoolLeaseOptions:acquirePhonePoolLeaseOptions
          completionHandler: ^(OAIPhonePoolLeaseDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->acquirePhonePoolLease: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poolId** | [**NSString***]()|  | 
 **acquirePhonePoolLeaseOptions** | [**OAIAcquirePhonePoolLeaseOptions***](OAIAcquirePhonePoolLeaseOptions)|  | 

### Return type

[**OAIPhonePoolLeaseDto***](OAIPhonePoolLeaseDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **addAllPhoneNumbersToPhonePool**
```objc
-(NSURLSessionTask*) addAllPhoneNumbersToPhonePoolWithPoolId: (NSString*) poolId
        completionHandler: (void (^)(OAIPhonePoolDetailDto* output, NSError* error)) handler;
```

Add all phone numbers to phone pool

Add all active owned phone numbers to a pool

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* poolId = @"poolId_example"; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Add all phone numbers to phone pool
[apiInstance addAllPhoneNumbersToPhonePoolWithPoolId:poolId
          completionHandler: ^(OAIPhonePoolDetailDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->addAllPhoneNumbersToPhonePool: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poolId** | [**NSString***]()|  | 

### Return type

[**OAIPhonePoolDetailDto***](OAIPhonePoolDetailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **addPhoneNumbersToPhonePool**
```objc
-(NSURLSessionTask*) addPhoneNumbersToPhonePoolWithPoolId: (NSString*) poolId
    addPhonePoolNumbersOptions: (OAIAddPhonePoolNumbersOptions*) addPhonePoolNumbersOptions
        completionHandler: (void (^)(OAIPhonePoolDetailDto* output, NSError* error)) handler;
```

Add phone numbers to phone pool

Add one or more owned phone numbers to a pool

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* poolId = @"poolId_example"; // 
OAIAddPhonePoolNumbersOptions* addPhonePoolNumbersOptions = [[OAIAddPhonePoolNumbersOptions alloc] init]; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Add phone numbers to phone pool
[apiInstance addPhoneNumbersToPhonePoolWithPoolId:poolId
              addPhonePoolNumbersOptions:addPhonePoolNumbersOptions
          completionHandler: ^(OAIPhonePoolDetailDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->addPhoneNumbersToPhonePool: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poolId** | [**NSString***]()|  | 
 **addPhonePoolNumbersOptions** | [**OAIAddPhonePoolNumbersOptions***](OAIAddPhonePoolNumbersOptions)|  | 

### Return type

[**OAIPhonePoolDetailDto***](OAIPhonePoolDetailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

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

# **createPhonePool**
```objc
-(NSURLSessionTask*) createPhonePoolWithCreatePhonePoolOptions: (OAICreatePhonePoolOptions*) createPhonePoolOptions
        completionHandler: (void (^)(OAIPhonePoolDetailDto* output, NSError* error)) handler;
```

Create phone pool

Create a reusable pool of phone numbers for coordinated leasing

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreatePhonePoolOptions* createPhonePoolOptions = [[OAICreatePhonePoolOptions alloc] init]; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Create phone pool
[apiInstance createPhonePoolWithCreatePhonePoolOptions:createPhonePoolOptions
          completionHandler: ^(OAIPhonePoolDetailDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->createPhonePool: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPhonePoolOptions** | [**OAICreatePhonePoolOptions***](OAICreatePhonePoolOptions)|  | 

### Return type

[**OAIPhonePoolDetailDto***](OAIPhonePoolDetailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createPhoneProvisioningJob**
```objc
-(NSURLSessionTask*) createPhoneProvisioningJobWithCreatePhoneProvisioningJobOptions: (OAICreatePhoneProvisioningJobOptions*) createPhoneProvisioningJobOptions
        completionHandler: (void (^)(OAIPhoneProvisioningJobDto* output, NSError* error)) handler;
```

Create a phone provisioning job

Create an advanced phone provisioning job from shortlisted numbers

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreatePhoneProvisioningJobOptions* createPhoneProvisioningJobOptions = [[OAICreatePhoneProvisioningJobOptions alloc] init]; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Create a phone provisioning job
[apiInstance createPhoneProvisioningJobWithCreatePhoneProvisioningJobOptions:createPhoneProvisioningJobOptions
          completionHandler: ^(OAIPhoneProvisioningJobDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->createPhoneProvisioningJob: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPhoneProvisioningJobOptions** | [**OAICreatePhoneProvisioningJobOptions***](OAICreatePhoneProvisioningJobOptions)|  | 

### Return type

[**OAIPhoneProvisioningJobDto***](OAIPhoneProvisioningJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllPhoneNumber**
```objc
-(NSURLSessionTask*) deleteAllPhoneNumberWithCompletionHandler: 
        (void (^)(NSError* error)) handler;
```

Delete all phone numbers

Remove all phone number from account

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Delete all phone numbers
[apiInstance deleteAllPhoneNumberWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->deleteAllPhoneNumber: %@", error);
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

# **deletePhoneMessageThreadItems**
```objc
-(NSURLSessionTask*) deletePhoneMessageThreadItemsWithPhoneNumberId: (NSString*) phoneNumberId
    otherNumber: (NSString*) otherNumber
        completionHandler: (void (^)(OAIEmptyResponseDto* output, NSError* error)) handler;
```

Delete messages in a phone thread

Delete all messages in an SMS thread

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneNumberId = @"phoneNumberId_example"; // 
NSString* otherNumber = @"otherNumber_example"; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Delete messages in a phone thread
[apiInstance deletePhoneMessageThreadItemsWithPhoneNumberId:phoneNumberId
              otherNumber:otherNumber
          completionHandler: ^(OAIEmptyResponseDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->deletePhoneMessageThreadItems: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumberId** | [**NSString***]()|  | 
 **otherNumber** | **NSString***|  | 

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

# **deletePhonePool**
```objc
-(NSURLSessionTask*) deletePhonePoolWithPoolId: (NSString*) poolId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete phone pool

Delete a phone pool and release any active leases from that pool

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* poolId = @"poolId_example"; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Delete phone pool
[apiInstance deletePhonePoolWithPoolId:poolId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->deletePhonePool: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poolId** | [**NSString***]()|  | 

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

# **getAllPhoneNumberReleases**
```objc
-(NSURLSessionTask*) getAllPhoneNumberReleasesWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPagePhoneNumberReleaseProjection* output, NSError* error)) handler;
```

Get all phone number releases

List released or deleted phone numbers

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; //  (optional) (default to @0)
NSNumber* size = @20; //  (optional) (default to @20)
NSString* sort = @"DESC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"DESC")

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get all phone number releases
[apiInstance getAllPhoneNumberReleasesWithPage:page
              size:size
              sort:sort
          completionHandler: ^(OAIPagePhoneNumberReleaseProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getAllPhoneNumberReleases: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] [default to @0]
 **size** | **NSNumber***|  | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;DESC&quot;]

### Return type

[**OAIPagePhoneNumberReleaseProjection***](OAIPagePhoneNumberReleaseProjection)

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

# **getOrCreatePhonePool**
```objc
-(NSURLSessionTask*) getOrCreatePhonePoolWithGetOrCreatePhonePoolOptions: (OAIGetOrCreatePhonePoolOptions*) getOrCreatePhonePoolOptions
        completionHandler: (void (^)(OAIPhonePoolDetailDto* output, NSError* error)) handler;
```

Get or create phone pool

Get a phone pool by name or create it if it does not exist

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIGetOrCreatePhonePoolOptions* getOrCreatePhonePoolOptions = [[OAIGetOrCreatePhonePoolOptions alloc] init]; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get or create phone pool
[apiInstance getOrCreatePhonePoolWithGetOrCreatePhonePoolOptions:getOrCreatePhonePoolOptions
          completionHandler: ^(OAIPhonePoolDetailDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getOrCreatePhonePool: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getOrCreatePhonePoolOptions** | [**OAIGetOrCreatePhonePoolOptions***](OAIGetOrCreatePhonePoolOptions)|  | 

### Return type

[**OAIPhonePoolDetailDto***](OAIPhonePoolDetailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
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
-(NSURLSessionTask*) getPhoneNumberByNameWithName: (NSString*) name
        completionHandler: (void (^)(OAIPhoneNumberDto* output, NSError* error)) handler;
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


NSString* name = @"name_example"; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get a phone number by name
[apiInstance getPhoneNumberByNameWithName:name
          completionHandler: ^(OAIPhoneNumberDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getPhoneNumberByName: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***|  | 

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
-(NSURLSessionTask*) getPhoneNumberByPhoneNumberWithPhoneNumber: (NSString*) phoneNumber
        completionHandler: (void (^)(OAIPhoneNumberDto* output, NSError* error)) handler;
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


NSString* phoneNumber = @"phoneNumber_example"; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get a phone number by phone number
[apiInstance getPhoneNumberByPhoneNumberWithPhoneNumber:phoneNumber
          completionHandler: ^(OAIPhoneNumberDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getPhoneNumberByPhoneNumber: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **NSString***|  | 

### Return type

[**OAIPhoneNumberDto***](OAIPhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumberLineTypeIntelligence**
```objc
-(NSURLSessionTask*) getPhoneNumberLineTypeIntelligenceWithValidatePhoneNumberOptions: (OAIValidatePhoneNumberOptions*) validatePhoneNumberOptions
        completionHandler: (void (^)(OAIPhoneNumberLineTypeLookupDto* output, NSError* error)) handler;
```

Get line type intelligence for a phone number

Lookup line type intelligence for a phone number

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIValidatePhoneNumberOptions* validatePhoneNumberOptions = [[OAIValidatePhoneNumberOptions alloc] init]; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get line type intelligence for a phone number
[apiInstance getPhoneNumberLineTypeIntelligenceWithValidatePhoneNumberOptions:validatePhoneNumberOptions
          completionHandler: ^(OAIPhoneNumberLineTypeLookupDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getPhoneNumberLineTypeIntelligence: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validatePhoneNumberOptions** | [**OAIValidatePhoneNumberOptions***](OAIValidatePhoneNumberOptions)|  | 

### Return type

[**OAIPhoneNumberLineTypeLookupDto***](OAIPhoneNumberLineTypeLookupDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumberRelease**
```objc
-(NSURLSessionTask*) getPhoneNumberReleaseWithReleaseId: (NSString*) releaseId
        completionHandler: (void (^)(OAIPhoneNumberReleaseProjection* output, NSError* error)) handler;
```

Get phone number release

Get a released or deleted phone numbers

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* releaseId = @"releaseId_example"; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get phone number release
[apiInstance getPhoneNumberReleaseWithReleaseId:releaseId
          completionHandler: ^(OAIPhoneNumberReleaseProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getPhoneNumberRelease: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **releaseId** | [**NSString***]()|  | 

### Return type

[**OAIPhoneNumberReleaseProjection***](OAIPhoneNumberReleaseProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumbers**
```objc
-(NSURLSessionTask*) getPhoneNumbersWithPhoneCountry: (NSString*) phoneCountry
    lineType: (NSString*) lineType
    carrierName: (NSString*) carrierName
    mobileCountryCode: (NSString*) mobileCountryCode
    mobileNetworkCode: (NSString*) mobileNetworkCode
    providerLabel: (NSString*) providerLabel
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
NSString* lineType = @"lineType_example"; // Optional line type filter (optional)
NSString* carrierName = @"carrierName_example"; // Optional carrier name filter (optional)
NSString* mobileCountryCode = @"mobileCountryCode_example"; // Optional mobile country code filter (optional)
NSString* mobileNetworkCode = @"mobileNetworkCode_example"; // Optional mobile network code filter (optional)
NSString* providerLabel = @"providerLabel_example"; // Optional provider label filter such as T1 or T2 (optional)
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
              lineType:lineType
              carrierName:carrierName
              mobileCountryCode:mobileCountryCode
              mobileNetworkCode:mobileNetworkCode
              providerLabel:providerLabel
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
 **lineType** | **NSString***| Optional line type filter | [optional] 
 **carrierName** | **NSString***| Optional carrier name filter | [optional] 
 **mobileCountryCode** | **NSString***| Optional mobile country code filter | [optional] 
 **mobileNetworkCode** | **NSString***| Optional mobile network code filter | [optional] 
 **providerLabel** | **NSString***| Optional provider label filter such as T1 or T2 | [optional] 
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

# **getPhonePool**
```objc
-(NSURLSessionTask*) getPhonePoolWithPoolId: (NSString*) poolId
        completionHandler: (void (^)(OAIPhonePoolDetailDto* output, NSError* error)) handler;
```

Get phone pool

Get phone pool details by ID

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* poolId = @"poolId_example"; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get phone pool
[apiInstance getPhonePoolWithPoolId:poolId
          completionHandler: ^(OAIPhonePoolDetailDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getPhonePool: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poolId** | [**NSString***]()|  | 

### Return type

[**OAIPhonePoolDetailDto***](OAIPhonePoolDetailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhonePoolByName**
```objc
-(NSURLSessionTask*) getPhonePoolByNameWithName: (NSString*) name
        completionHandler: (void (^)(OAIPhonePoolDetailDto* output, NSError* error)) handler;
```

Get phone pool by name

Get phone pool details by name

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* name = @"name_example"; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get phone pool by name
[apiInstance getPhonePoolByNameWithName:name
          completionHandler: ^(OAIPhonePoolDetailDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getPhonePoolByName: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***|  | 

### Return type

[**OAIPhonePoolDetailDto***](OAIPhonePoolDetailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhonePools**
```objc
-(NSURLSessionTask*) getPhonePoolsWithCompletionHandler: 
        (void (^)(NSArray<OAIPhonePoolDto>* output, NSError* error)) handler;
```

Get phone pools

List phone pools for the authenticated user

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get phone pools
[apiInstance getPhonePoolsWithCompletionHandler: 
          ^(NSArray<OAIPhonePoolDto>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getPhonePools: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIPhonePoolDto>***](OAIPhonePoolDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneProvisioningCapabilities**
```objc
-(NSURLSessionTask*) getPhoneProvisioningCapabilitiesWithPhoneCountry: (NSString*) phoneCountry
    providerLabel: (NSString*) providerLabel
        completionHandler: (void (^)(OAIPhoneProviderCapabilitiesResult* output, NSError* error)) handler;
```

Get phone provisioning capabilities

Get supported provider-country variant capabilities for advanced provisioning

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* phoneCountry = @"phoneCountry_example"; // 
NSString* providerLabel = @"providerLabel_example"; //  (optional)

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get phone provisioning capabilities
[apiInstance getPhoneProvisioningCapabilitiesWithPhoneCountry:phoneCountry
              providerLabel:providerLabel
          completionHandler: ^(OAIPhoneProviderCapabilitiesResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getPhoneProvisioningCapabilities: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneCountry** | **NSString***|  | 
 **providerLabel** | **NSString***|  | [optional] 

### Return type

[**OAIPhoneProviderCapabilitiesResult***](OAIPhoneProviderCapabilitiesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneProvisioningJob**
```objc
-(NSURLSessionTask*) getPhoneProvisioningJobWithJobId: (NSString*) jobId
        completionHandler: (void (^)(OAIPhoneProvisioningJobDto* output, NSError* error)) handler;
```

Get phone provisioning job

Get advanced phone provisioning job status

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* jobId = @"jobId_example"; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get phone provisioning job
[apiInstance getPhoneProvisioningJobWithJobId:jobId
          completionHandler: ^(OAIPhoneProvisioningJobDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getPhoneProvisioningJob: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | [**NSString***]()|  | 

### Return type

[**OAIPhoneProvisioningJobDto***](OAIPhoneProvisioningJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneSmsPrepaidCredit**
```objc
-(NSURLSessionTask*) getPhoneSmsPrepaidCreditWithCreditId: (NSString*) creditId
        completionHandler: (void (^)(OAIPhoneSmsPrepaidCreditDto* output, NSError* error)) handler;
```

Get SMS prepaid credit

Get a specific SMS prepaid credit balance for the authenticated account

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* creditId = @"creditId_example"; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get SMS prepaid credit
[apiInstance getPhoneSmsPrepaidCreditWithCreditId:creditId
          completionHandler: ^(OAIPhoneSmsPrepaidCreditDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getPhoneSmsPrepaidCredit: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **creditId** | [**NSString***]()|  | 

### Return type

[**OAIPhoneSmsPrepaidCreditDto***](OAIPhoneSmsPrepaidCreditDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneSmsPrepaidCredits**
```objc
-(NSURLSessionTask*) getPhoneSmsPrepaidCreditsWithCompletionHandler: 
        (void (^)(OAIPhoneSmsPrepaidCreditsDto* output, NSError* error)) handler;
```

Get SMS prepaid credits

List SMS prepaid credits for the authenticated account

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get SMS prepaid credits
[apiInstance getPhoneSmsPrepaidCreditsWithCompletionHandler: 
          ^(OAIPhoneSmsPrepaidCreditsDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getPhoneSmsPrepaidCredits: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIPhoneSmsPrepaidCreditsDto***](OAIPhoneSmsPrepaidCreditsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneSummary**
```objc
-(NSURLSessionTask*) getPhoneSummaryWithCompletionHandler: 
        (void (^)(OAIPhoneSummaryDto* output, NSError* error)) handler;
```

Get phone summary

Get overview of assigned phones

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Get phone summary
[apiInstance getPhoneSummaryWithCompletionHandler: 
          ^(OAIPhoneSummaryDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->getPhoneSummary: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIPhoneSummaryDto***](OAIPhoneSummaryDto)

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

# **reassignPhoneNumberRelease**
```objc
-(NSURLSessionTask*) reassignPhoneNumberReleaseWithReleaseId: (NSString*) releaseId
        completionHandler: (void (^)(OAIPhoneNumberDto* output, NSError* error)) handler;
```

Reassign phone number release

Reassign phone number that was released or deleted

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* releaseId = @"releaseId_example"; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Reassign phone number release
[apiInstance reassignPhoneNumberReleaseWithReleaseId:releaseId
          completionHandler: ^(OAIPhoneNumberDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->reassignPhoneNumberRelease: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **releaseId** | [**NSString***]()|  | 

### Return type

[**OAIPhoneNumberDto***](OAIPhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **releasePhonePoolLease**
```objc
-(NSURLSessionTask*) releasePhonePoolLeaseWithPoolId: (NSString*) poolId
    leaseId: (NSString*) leaseId
        completionHandler: (void (^)(NSError* error)) handler;
```

Release phone pool lease

Release an active phone pool lease

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* poolId = @"poolId_example"; // 
NSString* leaseId = @"leaseId_example"; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Release phone pool lease
[apiInstance releasePhonePoolLeaseWithPoolId:poolId
              leaseId:leaseId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->releasePhonePoolLease: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poolId** | [**NSString***]()|  | 
 **leaseId** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **removePhoneNumberFromPhonePool**
```objc
-(NSURLSessionTask*) removePhoneNumberFromPhonePoolWithPoolId: (NSString*) poolId
    phoneNumberId: (NSString*) phoneNumberId
        completionHandler: (void (^)(NSError* error)) handler;
```

Remove phone number from phone pool

Remove a phone number from a pool. If the number is leased from this pool the lease is released.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* poolId = @"poolId_example"; // 
NSString* phoneNumberId = @"phoneNumberId_example"; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Remove phone number from phone pool
[apiInstance removePhoneNumberFromPhonePoolWithPoolId:poolId
              phoneNumberId:phoneNumberId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->removePhoneNumberFromPhonePool: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poolId** | [**NSString***]()|  | 
 **phoneNumberId** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **searchAvailablePhoneNumbers**
```objc
-(NSURLSessionTask*) searchAvailablePhoneNumbersWithSearchAvailablePhoneNumbersOptions: (OAISearchAvailablePhoneNumbersOptions*) searchAvailablePhoneNumbersOptions
        completionHandler: (void (^)(OAIAvailablePhoneNumbersResult* output, NSError* error)) handler;
```

Search available phone numbers

Search available numbers for advanced provisioning

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAISearchAvailablePhoneNumbersOptions* searchAvailablePhoneNumbersOptions = [[OAISearchAvailablePhoneNumbersOptions alloc] init]; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Search available phone numbers
[apiInstance searchAvailablePhoneNumbersWithSearchAvailablePhoneNumbersOptions:searchAvailablePhoneNumbersOptions
          completionHandler: ^(OAIAvailablePhoneNumbersResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->searchAvailablePhoneNumbers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchAvailablePhoneNumbersOptions** | [**OAISearchAvailablePhoneNumbersOptions***](OAISearchAvailablePhoneNumbersOptions)|  | 

### Return type

[**OAIAvailablePhoneNumbersResult***](OAIAvailablePhoneNumbersResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
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

Test a phone number by sending an SMS to it. NOTE this is only for internal use to check that a phone number is working. For end-to-end phone testing see https://docs.mailslurp.com/txt-sms/

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

# **updatePhonePool**
```objc
-(NSURLSessionTask*) updatePhonePoolWithPoolId: (NSString*) poolId
    updatePhonePoolOptions: (OAIUpdatePhonePoolOptions*) updatePhonePoolOptions
        completionHandler: (void (^)(OAIPhonePoolDetailDto* output, NSError* error)) handler;
```

Update phone pool

Update phone pool metadata such as name or description

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* poolId = @"poolId_example"; // 
OAIUpdatePhonePoolOptions* updatePhonePoolOptions = [[OAIUpdatePhonePoolOptions alloc] init]; // 

OAIPhoneControllerApi*apiInstance = [[OAIPhoneControllerApi alloc] init];

// Update phone pool
[apiInstance updatePhonePoolWithPoolId:poolId
              updatePhonePoolOptions:updatePhonePoolOptions
          completionHandler: ^(OAIPhonePoolDetailDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPhoneControllerApi->updatePhonePool: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **poolId** | [**NSString***]()|  | 
 **updatePhonePoolOptions** | [**OAIUpdatePhonePoolOptions***](OAIUpdatePhonePoolOptions)|  | 

### Return type

[**OAIPhonePoolDetailDto***](OAIPhonePoolDetailDto)

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

