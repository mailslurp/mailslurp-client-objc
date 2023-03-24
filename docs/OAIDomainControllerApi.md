# OAIDomainControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDomainWildcardCatchAll**](OAIDomainControllerApi#adddomainwildcardcatchall) | **POST** /domains/{id}/wildcard | Add catch all wild card inbox to domain
[**createDomain**](OAIDomainControllerApi#createdomain) | **POST** /domains | Create Domain
[**deleteDomain**](OAIDomainControllerApi#deletedomain) | **DELETE** /domains/{id} | Delete a domain
[**getDomain**](OAIDomainControllerApi#getdomain) | **GET** /domains/{id} | Get a domain
[**getDomainWildcardCatchAllInbox**](OAIDomainControllerApi#getdomainwildcardcatchallinbox) | **GET** /domains/{id}/wildcard | Get catch all wild card inbox for domain
[**getDomains**](OAIDomainControllerApi#getdomains) | **GET** /domains | Get domains
[**updateDomain**](OAIDomainControllerApi#updatedomain) | **PUT** /domains/{id} | Update a domain


# **addDomainWildcardCatchAll**
```objc
-(NSURLSessionTask*) addDomainWildcardCatchAllWithId: (NSString*) _id
        completionHandler: (void (^)(OAIDomainDto* output, NSError* error)) handler;
```

Add catch all wild card inbox to domain

Add a catch all inbox to a domain so that any emails sent to it that cannot be matched will be sent to the catch all inbox generated

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIDomainControllerApi*apiInstance = [[OAIDomainControllerApi alloc] init];

// Add catch all wild card inbox to domain
[apiInstance addDomainWildcardCatchAllWithId:_id
          completionHandler: ^(OAIDomainDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainControllerApi->addDomainWildcardCatchAll: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

[**OAIDomainDto***](OAIDomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDomain**
```objc
-(NSURLSessionTask*) createDomainWithCreateDomainOptions: (OAICreateDomainOptions*) createDomainOptions
        completionHandler: (void (^)(OAIDomainDto* output, NSError* error)) handler;
```

Create Domain

Link a domain that you own with MailSlurp so you can create email addresses using it. Endpoint returns DNS records used for validation. You must add these verification records to your host provider's DNS setup to verify the domain.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateDomainOptions* createDomainOptions = [[OAICreateDomainOptions alloc] init]; // 

OAIDomainControllerApi*apiInstance = [[OAIDomainControllerApi alloc] init];

// Create Domain
[apiInstance createDomainWithCreateDomainOptions:createDomainOptions
          completionHandler: ^(OAIDomainDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainControllerApi->createDomain: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDomainOptions** | [**OAICreateDomainOptions***](OAICreateDomainOptions)|  | 

### Return type

[**OAIDomainDto***](OAIDomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDomain**
```objc
-(NSURLSessionTask*) deleteDomainWithId: (NSString*) _id
        completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler;
```

Delete a domain

Delete a domain. This will disable any existing inboxes that use this domain.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIDomainControllerApi*apiInstance = [[OAIDomainControllerApi alloc] init];

// Delete a domain
[apiInstance deleteDomainWithId:_id
          completionHandler: ^(NSArray<NSString*>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainControllerApi->deleteDomain: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

**NSArray<NSString*>***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomain**
```objc
-(NSURLSessionTask*) getDomainWithId: (NSString*) _id
        completionHandler: (void (^)(OAIDomainDto* output, NSError* error)) handler;
```

Get a domain

Returns domain verification status and tokens for a given domain

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIDomainControllerApi*apiInstance = [[OAIDomainControllerApi alloc] init];

// Get a domain
[apiInstance getDomainWithId:_id
          completionHandler: ^(OAIDomainDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainControllerApi->getDomain: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

[**OAIDomainDto***](OAIDomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainWildcardCatchAllInbox**
```objc
-(NSURLSessionTask*) getDomainWildcardCatchAllInboxWithId: (NSString*) _id
        completionHandler: (void (^)(OAIInboxDto* output, NSError* error)) handler;
```

Get catch all wild card inbox for domain

Get the catch all inbox for a domain for missed emails

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 

OAIDomainControllerApi*apiInstance = [[OAIDomainControllerApi alloc] init];

// Get catch all wild card inbox for domain
[apiInstance getDomainWildcardCatchAllInboxWithId:_id
          completionHandler: ^(OAIInboxDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainControllerApi->getDomainWildcardCatchAllInbox: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 

### Return type

[**OAIInboxDto***](OAIInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomains**
```objc
-(NSURLSessionTask*) getDomainsWithCompletionHandler: 
        (void (^)(NSArray<OAIDomainPreview>* output, NSError* error)) handler;
```

Get domains

List all custom domains you have created

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIDomainControllerApi*apiInstance = [[OAIDomainControllerApi alloc] init];

// Get domains
[apiInstance getDomainsWithCompletionHandler: 
          ^(NSArray<OAIDomainPreview>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainControllerApi->getDomains: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIDomainPreview>***](OAIDomainPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateDomain**
```objc
-(NSURLSessionTask*) updateDomainWithId: (NSString*) _id
    updateDomainOptions: (OAIUpdateDomainOptions*) updateDomainOptions
        completionHandler: (void (^)(OAIDomainDto* output, NSError* error)) handler;
```

Update a domain

Update values on a domain. Note you cannot change the domain name as it is immutable. Recreate the domain if you need to alter this.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* _id = @"_id_example"; // 
OAIUpdateDomainOptions* updateDomainOptions = [[OAIUpdateDomainOptions alloc] init]; // 

OAIDomainControllerApi*apiInstance = [[OAIDomainControllerApi alloc] init];

// Update a domain
[apiInstance updateDomainWithId:_id
              updateDomainOptions:updateDomainOptions
          completionHandler: ^(OAIDomainDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDomainControllerApi->updateDomain: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | [**NSString***]()|  | 
 **updateDomainOptions** | [**OAIUpdateDomainOptions***](OAIUpdateDomainOptions)|  | 

### Return type

[**OAIDomainDto***](OAIDomainDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

