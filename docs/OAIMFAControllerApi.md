# OAIMFAControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTotpDeviceForCustom**](OAIMFAControllerApi#createtotpdeviceforcustom) | **POST** /mfa/totp/device/custom | Create a TOTP device from custom options
[**createTotpDeviceForOtpAuthUrl**](OAIMFAControllerApi#createtotpdeviceforotpauthurl) | **POST** /mfa/totp/device/otpAuthUrl | Create a TOTP device from an OTP Auth URL
[**getTotpDevice**](OAIMFAControllerApi#gettotpdevice) | **GET** /mfa/totp/device/{id} | Get a TOTP device by ID
[**getTotpDeviceBy**](OAIMFAControllerApi#gettotpdeviceby) | **GET** /mfa/totp/device/by | Get a TOTP device by username, issuer, or name. Returns empty if not found.
[**getTotpDeviceCode**](OAIMFAControllerApi#gettotpdevicecode) | **GET** /mfa/totp/device/{id}/code | Get a TOTP device code by device ID


# **createTotpDeviceForCustom**
```objc
-(NSURLSessionTask*) createTotpDeviceForCustomWithCreateTotpDeviceOtpAuthUrlOptions: (OAICreateTotpDeviceOtpAuthUrlOptions*) createTotpDeviceOtpAuthUrlOptions
        completionHandler: (void (^)(OAITotpDeviceDto* output, NSError* error)) handler;
```

Create a TOTP device from custom options

Create a virtual TOTP device for custom options specifying all parameters of the TOTP device.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateTotpDeviceOtpAuthUrlOptions* createTotpDeviceOtpAuthUrlOptions = [[OAICreateTotpDeviceOtpAuthUrlOptions alloc] init]; // 

OAIMFAControllerApi*apiInstance = [[OAIMFAControllerApi alloc] init];

// Create a TOTP device from custom options
[apiInstance createTotpDeviceForCustomWithCreateTotpDeviceOtpAuthUrlOptions:createTotpDeviceOtpAuthUrlOptions
          completionHandler: ^(OAITotpDeviceDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMFAControllerApi->createTotpDeviceForCustom: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTotpDeviceOtpAuthUrlOptions** | [**OAICreateTotpDeviceOtpAuthUrlOptions***](OAICreateTotpDeviceOtpAuthUrlOptions)|  | 

### Return type

[**OAITotpDeviceDto***](OAITotpDeviceDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createTotpDeviceForOtpAuthUrl**
```objc
-(NSURLSessionTask*) createTotpDeviceForOtpAuthUrlWithCreateTotpDeviceOtpAuthUrlOptions: (OAICreateTotpDeviceOtpAuthUrlOptions*) createTotpDeviceOtpAuthUrlOptions
        completionHandler: (void (^)(OAITotpDeviceDto* output, NSError* error)) handler;
```

Create a TOTP device from an OTP Auth URL

Create a virtual TOTP device for a given OTP Auth URL such as otpauth://totp/MyApp:alice@example.com?secret=ABC123&issuer=MyApp&period=30&digits=6&algorithm=SHA1. You can provider overrides in the options for each component of the URL.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateTotpDeviceOtpAuthUrlOptions* createTotpDeviceOtpAuthUrlOptions = [[OAICreateTotpDeviceOtpAuthUrlOptions alloc] init]; // 

OAIMFAControllerApi*apiInstance = [[OAIMFAControllerApi alloc] init];

// Create a TOTP device from an OTP Auth URL
[apiInstance createTotpDeviceForOtpAuthUrlWithCreateTotpDeviceOtpAuthUrlOptions:createTotpDeviceOtpAuthUrlOptions
          completionHandler: ^(OAITotpDeviceDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMFAControllerApi->createTotpDeviceForOtpAuthUrl: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTotpDeviceOtpAuthUrlOptions** | [**OAICreateTotpDeviceOtpAuthUrlOptions***](OAICreateTotpDeviceOtpAuthUrlOptions)|  | 

### Return type

[**OAITotpDeviceDto***](OAITotpDeviceDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTotpDevice**
```objc
-(NSURLSessionTask*) getTotpDeviceWithId: (NSString*) _id
        completionHandler: (void (^)(OAITotpDeviceDto* output, NSError* error)) handler;
```

Get a TOTP device by ID

Get Time-Based One-Time Password (TOTP) device by its ID.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIMFAControllerApi*apiInstance = [[OAIMFAControllerApi alloc] init];

// Get a TOTP device by ID
[apiInstance getTotpDeviceWithId:_id
          completionHandler: ^(OAITotpDeviceDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMFAControllerApi->getTotpDevice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

[**OAITotpDeviceDto***](OAITotpDeviceDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTotpDeviceBy**
```objc
-(NSURLSessionTask*) getTotpDeviceByWithName: (NSString*) name
    issuer: (NSString*) issuer
    username: (NSString*) username
        completionHandler: (void (^)(OAITotpDeviceOptionalDto* output, NSError* error)) handler;
```

Get a TOTP device by username, issuer, or name. Returns empty if not found.

Get Time-Based One-Time Password (TOTP) device by its username and issuer mapping.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* name = @"name_example"; // Optional name filter (optional)
NSString* issuer = @"issuer_example"; // Optional issuer filter (optional)
NSString* username = @"username_example"; // Optional username filter (optional)

OAIMFAControllerApi*apiInstance = [[OAIMFAControllerApi alloc] init];

// Get a TOTP device by username, issuer, or name. Returns empty if not found.
[apiInstance getTotpDeviceByWithName:name
              issuer:issuer
              username:username
          completionHandler: ^(OAITotpDeviceOptionalDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMFAControllerApi->getTotpDeviceBy: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| Optional name filter | [optional] 
 **issuer** | **NSString***| Optional issuer filter | [optional] 
 **username** | **NSString***| Optional username filter | [optional] 

### Return type

[**OAITotpDeviceOptionalDto***](OAITotpDeviceOptionalDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTotpDeviceCode**
```objc
-(NSURLSessionTask*) getTotpDeviceCodeWithId: (NSString*) _id
    at: (NSDate*) at
    minSecondsUntilExpire: (NSNumber*) minSecondsUntilExpire
        completionHandler: (void (^)(OAITotpDeviceCodeDto* output, NSError* error)) handler;
```

Get a TOTP device code by device ID

Get Time-Based One-Time Password for a device by its ID.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // ID of the TOTP device to get the code for
NSDate* at = @"2013-10-20T19:20:30+01:00"; // Optional time to get code for. If not provided, current time is used. (optional)
NSNumber* minSecondsUntilExpire = @5; // Optional minimum time until code expires. Will hold thread open until period reached. (optional) (default to @5)

OAIMFAControllerApi*apiInstance = [[OAIMFAControllerApi alloc] init];

// Get a TOTP device code by device ID
[apiInstance getTotpDeviceCodeWithId:_id
              at:at
              minSecondsUntilExpire:minSecondsUntilExpire
          completionHandler: ^(OAITotpDeviceCodeDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMFAControllerApi->getTotpDeviceCode: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()| ID of the TOTP device to get the code for | 
 **at** | **NSDate***| Optional time to get code for. If not provided, current time is used. | [optional] 
 **minSecondsUntilExpire** | **NSNumber***| Optional minimum time until code expires. Will hold thread open until period reached. | [optional] [default to @5]

### Return type

[**OAITotpDeviceCodeDto***](OAITotpDeviceCodeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

