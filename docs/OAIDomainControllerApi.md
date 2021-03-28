# OAIDomainControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDomainWildcardCatchAll**](OAIDomainControllerApi.md#adddomainwildcardcatchall) | **POST** /domains/{id}/wildcard | Add catch all wild card inbox to domain
[**createDomain**](OAIDomainControllerApi.md#createdomain) | **POST** /domains | Create Domain
[**deleteDomain**](OAIDomainControllerApi.md#deletedomain) | **DELETE** /domains/{id} | Delete a domain
[**getDomain**](OAIDomainControllerApi.md#getdomain) | **GET** /domains/{id} | Get a domain
[**getDomains**](OAIDomainControllerApi.md#getdomains) | **GET** /domains | Get domains
[**updateDomain**](OAIDomainControllerApi.md#updatedomain) | **PUT** /domains/{id} | Update a domain


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


NSString* _id = @"_id_example"; // id

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
 **_id** | [**NSString***](.md)| id | 

### Return type

[**OAIDomainDto***](OAIDomainDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDomain**
```objc
-(NSURLSessionTask*) createDomainWithDomainOptions: (OAICreateDomainOptions*) domainOptions
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


OAICreateDomainOptions* domainOptions = [[OAICreateDomainOptions alloc] init]; // domainOptions

OAIDomainControllerApi*apiInstance = [[OAIDomainControllerApi alloc] init];

// Create Domain
[apiInstance createDomainWithDomainOptions:domainOptions
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
 **domainOptions** | [**OAICreateDomainOptions***](OAICreateDomainOptions.md)| domainOptions | 

### Return type

[**OAIDomainDto***](OAIDomainDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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


NSString* _id = @"_id_example"; // id

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
 **_id** | [**NSString***](.md)| id | 

### Return type

**NSArray<NSString*>***

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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


NSString* _id = @"_id_example"; // id

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
 **_id** | [**NSString***](.md)| id | 

### Return type

[**OAIDomainDto***](OAIDomainDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

[**NSArray<OAIDomainPreview>***](OAIDomainPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDomain**
```objc
-(NSURLSessionTask*) updateDomainWithId: (NSString*) _id
    updateDomainDto: (OAIUpdateDomainOptions*) updateDomainDto
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


NSString* _id = @"_id_example"; // id
OAIUpdateDomainOptions* updateDomainDto = [[OAIUpdateDomainOptions alloc] init]; // updateDomainDto

OAIDomainControllerApi*apiInstance = [[OAIDomainControllerApi alloc] init];

// Update a domain
[apiInstance updateDomainWithId:_id
              updateDomainDto:updateDomainDto
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
 **_id** | [**NSString***](.md)| id | 
 **updateDomainDto** | [**OAIUpdateDomainOptions***](OAIUpdateDomainOptions.md)| updateDomainDto | 

### Return type

[**OAIDomainDto***](OAIDomainDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

