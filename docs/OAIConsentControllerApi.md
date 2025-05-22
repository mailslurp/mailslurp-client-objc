# OAIConsentControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkSendingConsentForEmailAddress**](OAIConsentControllerApi#checksendingconsentforemailaddress) | **GET** /consent/opt-in/sending-consent | 
[**getOptInIdentities**](OAIConsentControllerApi#getoptinidentities) | **GET** /consent/opt-in | 
[**revokeOptInConsentForEmailAddress**](OAIConsentControllerApi#revokeoptinconsentforemailaddress) | **DELETE** /consent/opt-in | 
[**sendOptInConsentForEmailAddress**](OAIConsentControllerApi#sendoptinconsentforemailaddress) | **POST** /consent/opt-in/send | Send a verification code to a user once they have explicitly submitted their email address


# **checkSendingConsentForEmailAddress**
```objc
-(NSURLSessionTask*) checkSendingConsentForEmailAddressWithEmailAddress: (NSString*) emailAddress
        completionHandler: (void (^)(OAIOptInSendingConsentDto* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailAddress = @"emailAddress_example"; // Email address to check consent for

OAIConsentControllerApi*apiInstance = [[OAIConsentControllerApi alloc] init];

[apiInstance checkSendingConsentForEmailAddressWithEmailAddress:emailAddress
          completionHandler: ^(OAIOptInSendingConsentDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConsentControllerApi->checkSendingConsentForEmailAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **NSString***| Email address to check consent for | 

### Return type

[**OAIOptInSendingConsentDto***](OAIOptInSendingConsentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getOptInIdentities**
```objc
-(NSURLSessionTask*) getOptInIdentitiesWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
        completionHandler: (void (^)(OAIPageOptInIdentityProjection* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index in list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")

OAIConsentControllerApi*apiInstance = [[OAIConsentControllerApi alloc] init];

[apiInstance getOptInIdentitiesWithPage:page
              size:size
              sort:sort
          completionHandler: ^(OAIPageOptInIdentityProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConsentControllerApi->getOptInIdentities: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index in list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]

### Return type

[**OAIPageOptInIdentityProjection***](OAIPageOptInIdentityProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **revokeOptInConsentForEmailAddress**
```objc
-(NSURLSessionTask*) revokeOptInConsentForEmailAddressWithEmailAddress: (NSString*) emailAddress
        completionHandler: (void (^)(OAIOptInSendingConsentDto* output, NSError* error)) handler;
```



### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailAddress = @"emailAddress_example"; // Email address to revoke consent for

OAIConsentControllerApi*apiInstance = [[OAIConsentControllerApi alloc] init];

[apiInstance revokeOptInConsentForEmailAddressWithEmailAddress:emailAddress
          completionHandler: ^(OAIOptInSendingConsentDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConsentControllerApi->revokeOptInConsentForEmailAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **NSString***| Email address to revoke consent for | 

### Return type

[**OAIOptInSendingConsentDto***](OAIOptInSendingConsentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendOptInConsentForEmailAddress**
```objc
-(NSURLSessionTask*) sendOptInConsentForEmailAddressWithOptInConsentOptions: (OAIOptInConsentOptions*) optInConsentOptions
        completionHandler: (void (^)(OAIOptInConsentSendResult* output, NSError* error)) handler;
```

Send a verification code to a user once they have explicitly submitted their email address

Send double-opt in consent for an email address

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAIOptInConsentOptions* optInConsentOptions = [[OAIOptInConsentOptions alloc] init]; // 

OAIConsentControllerApi*apiInstance = [[OAIConsentControllerApi alloc] init];

// Send a verification code to a user once they have explicitly submitted their email address
[apiInstance sendOptInConsentForEmailAddressWithOptInConsentOptions:optInConsentOptions
          completionHandler: ^(OAIOptInConsentSendResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIConsentControllerApi->sendOptInConsentForEmailAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optInConsentOptions** | [**OAIOptInConsentOptions***](OAIOptInConsentOptions)|  | 

### Return type

[**OAIOptInConsentSendResult***](OAIOptInConsentSendResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

